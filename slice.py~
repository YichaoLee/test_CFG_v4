#!bin/python

import os
import sys
import commands

if len(sys.argv) == 2 and sys.argv[1] == "-h":
    print "Usage: python slice.py <filename> -f <function> -b <bound> -p <precision> [-options]\n[options]:\n\t-l <line> -s <expr>\tspecify lineNo (and expression) to check on\n\t-o\t\tBRICK display CFG and constraints while checking\n\t-a\t\tset mode in which BRICK check assert only\n\t-d\t\tset mode in which BRICK check domain error only"
elif len(sys.argv) >= 8:
    filename = sys.argv[1];
    for i in range(2, 7 + 1, 2):
        if sys.argv[i] == "-f":
            fun = sys.argv[i + 1]
        elif sys.argv[i] == "-b":
            bound = sys.argv[i + 1]
        elif sys.argv[i] == "-p":
            precise = sys.argv[i + 1]
        else:
            print "Try -h to find more information."
            sys.exit(0);

    if(not vars().has_key("filename") or not vars().has_key("fun") or not vars().has_key("bound") or not vars().has_key("precise")):
        print "Try -h to find more information."
        sys.exit(0)

    mode_o = False
    mode_a = False
    mode_d = False
    for i in range(8, len(sys.argv)):
        if sys.argv[i] == "-l":
            line = sys.argv[i + 1]
        elif sys.argv[i] == "-s":
            expr = sys.argv[i + 1]
        elif sys.argv[i] == "-o":
            mode_o = True
        elif sys.argv[i] == "-a":
            mode_a = True
        elif sys.argv[i] == "-d":
            mode_d = True

    if(vars().has_key("line") and vars().has_key("expr")):
        cmd = "sed -e \'1s/^/#include <assert.h>\\n/\' -e \'2s/^/void __BRICK_SPEC(int x) {if(x == 0) assert(0);}\\n/\' -e \'" + line + "s/$/__BRICK_SPEC(" + expr + ");/\' " + filename + " > BRICK_" + filename
        os.system(cmd)
    else:
        cmd = "cp " + filename + " BRICK_" + filename
        os.system(cmd)

    filename = "BRICK_" + filename
    if(filename[-2:] == ".c"):
        os.system("clang -emit-llvm -c " + filename + " -o " + filename[:-2] + ".bc")
        os.system("opt -load /usr/local/lib/LLVMSlicer.so -create-hammock-cfg -slice-inter " + filename[:-2] + ".bc -o " + "dst_" + filename[:-2] + ".bc > log.txt 2>&1")
        os.system("llvm-dis " + filename[:-2] + ".bc")
        os.system("llvm-dis dst_" + filename[:-2] + ".bc")
    
    mode = 0
    if(mode_a and not mode_d):
        mode = 1
    elif(mode_d and not mode_a):
        mode = 2

    out = 0
    if(mode_o):
        out = 1

    cmd = "opt -load buildCFG.so -load libcapd.so -load libibex.so -load libdreal.so -load libz3.so -load libminisat.so -buildCFG -bound=" + bound + " -pre=" + precise + " -mode=" + str(mode) + " -func=" + fun + " -output=" + str(out)
    if(vars().has_key("line") and vars().has_key("expr")):
        cmd = cmd + " -expression=\"" + expr + "\""
    
    cmd = cmd + " <" + filename[:-2] + ".bc> " + filename + " buildCFG.bc"
    if(out == 1):
        print cmd
    #os.system(cmd)

else:
    print "Try -h to find more information."
