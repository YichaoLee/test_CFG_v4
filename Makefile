BUILDCFG=~/Documents/llvm/Release+Asserts/lib
IISPASS=~/Documents/llvm/lib/Transforms/IIS
MYPASS=~/Documents/llvm/lib/Transforms/BRICK
BRICKPASS=~/Documents/llvm/lib/Transforms/BRICK-test
# VPPASS=~/Documents/llvm/lib/Transforms/Verify
#CFLAGS=   -Werror -emit-llvm -g
CFLAGS=   -emit-llvm -g
NAME = float3_true-unreach-call
#float-rounding1_true-unreach-call
LINE = 12
FUNC = "main"
#gsl_sf_elljac_e"
BOUND = 50
PRE = 0.01
MODE = 0
OUTMODE = 1
CHECK = ""

all:$(NAME).ll $(NAME)buildCFG.ll $(NAME)_final.bc 

$(NAME).ll:$(NAME).bc
	llvm-dis $(NAME).bc 
$(NAME)buildCFG.ll:$(NAME)buildCFG.bc
	llvm-dis $(NAME)buildCFG.bc

$(NAME)_final.bc:$(NAME)buildCFG.bc  
	clang $(NAME)buildCFG.bc   -o $(NAME)_final

$(NAME)buildCFG.bc:$(NAME).bc $(BUILDCFG)/buildCFG.so 
  	opt -load $(BUILDCFG)/buildCFG.so -load /usr/local/lib/libcapd.so -load /usr/local/lib/libibex.so -load /usr/local/lib/libdreal.so -load /usr/lib/libz3.so -load /usr/local/lib/libminisat.so -buildCFG -func=$(FUNC) -name=$(NAME) -bound=$(BOUND) -pre=$(PRE) -mode=$(MODE) -output=$(OUTMODE) -expression=$(CHECK) <$(NAME).bc> $(NAME)buildCFG.bc

# -load $(BUILDCFG)/libdreal.so -load $(BUILDCFG)/libClpSolver.so.1.13.6 -load $(BUILDCFG)/libClp.so.1.13.6 -load $(BUILDCFG)/libCoinUtils.so.3.10.6 -load $(BUILDCFG)/libcapd.so.1.0.0 -load $(BUILDCFG)/libprim.so.0.0.0 -load $(BUILDCFG)/libibex.so 

# $(BUILDCFG)/buildCFG_linear.so:
# 	make -C $(IISPASS)/

$(BUILDCFG)/buildCFG.so:
	make -C $(BRICKPASS)/

#$(BUILDCFG)/verifyPro.so:
#	make -C $(VPPASS)/

$(NAME).bc:$(NAME).c
	clang -c $(CFLAGS) $(NAME).c -o $(NAME).bc

clean:
	rm -f *.bc
	rm -f $(BUILDCFG)/buildCFG.so
	rm -f $(BRICKPASS)/Release+Asserts/*
	# rm -f $(BRICKPASS)/Release+Asserts/UnlinearVerify.*
	# rm -f $(BRICKPASS)/Release+Asserts/CFG.*
	# make -C $(BRICKPASS)/ clean 35
 
