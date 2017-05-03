; ModuleID = 'inv_Newton.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %cond.addr}, metadata !19), !dbg !20
  %0 = load i32* %cond.addr, align 4, !dbg !21
  %tobool = icmp ne i32 %0, 0, !dbg !21
  br i1 %tobool, label %if.end, label %if.then, !dbg !21

if.then:                                          ; preds = %entry
  br label %ERROR, !dbg !23

ERROR:                                            ; preds = %if.then
  call void (...)* @__VERIFIER_error() #4, !dbg !26
  unreachable, !dbg !26

if.end:                                           ; preds = %entry
  ret void, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define double @inv(double %A) #0 {
entry:
  %A.addr = alloca double, align 8
  %xi = alloca double, align 8
  %xsi = alloca double, align 8
  %temp = alloca double, align 8
  %PtrA = alloca i32*, align 8
  %Ptrxi = alloca i32*, align 8
  %cond = alloca i32, align 4
  %exp = alloca i32, align 4
  store double %A, double* %A.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %A.addr}, metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata !{double* %xi}, metadata !32), !dbg !33
  call void @llvm.dbg.declare(metadata !{double* %xsi}, metadata !34), !dbg !35
  call void @llvm.dbg.declare(metadata !{double* %temp}, metadata !36), !dbg !37
  call void @llvm.dbg.declare(metadata !{i32** %PtrA}, metadata !38), !dbg !40
  call void @llvm.dbg.declare(metadata !{i32** %Ptrxi}, metadata !41), !dbg !42
  call void @llvm.dbg.declare(metadata !{i32* %cond}, metadata !43), !dbg !44
  call void @llvm.dbg.declare(metadata !{i32* %exp}, metadata !45), !dbg !46
  %0 = bitcast double* %A.addr to i32*, !dbg !47
  store i32* %0, i32** %PtrA, align 8, !dbg !47
  %1 = bitcast double* %xi to i32*, !dbg !48
  store i32* %1, i32** %Ptrxi, align 8, !dbg !48
  %2 = load i32** %PtrA, align 8, !dbg !49
  %arrayidx = getelementptr inbounds i32* %2, i64 0, !dbg !49
  %3 = load i32* %arrayidx, align 4, !dbg !49
  %and = and i32 %3, 2146435072, !dbg !49
  %shr = ashr i32 %and, 20, !dbg !49
  %sub = sub nsw i32 %shr, 1023, !dbg !49
  store i32 %sub, i32* %exp, align 4, !dbg !49
  store double 1.000000e+00, double* %xi, align 8, !dbg !50
  %4 = load i32* %exp, align 4, !dbg !51
  %sub1 = sub nsw i32 1023, %4, !dbg !51
  %shl = shl i32 %sub1, 20, !dbg !51
  %5 = load i32** %Ptrxi, align 8, !dbg !51
  %arrayidx2 = getelementptr inbounds i32* %5, i64 0, !dbg !51
  store i32 %shl, i32* %arrayidx2, align 4, !dbg !51
  store i32 1, i32* %cond, align 4, !dbg !52
  br label %while.cond, !dbg !53

while.cond:                                       ; preds = %lor.end, %entry
  %6 = load i32* %cond, align 4, !dbg !54
  %tobool = icmp ne i32 %6, 0, !dbg !54
  br i1 %tobool, label %while.body, label %while.end, !dbg !54

while.body:                                       ; preds = %while.cond
  %7 = load double* %xi, align 8, !dbg !56
  %mul = fmul double 2.000000e+00, %7, !dbg !56
  %8 = load double* %A.addr, align 8, !dbg !56
  %9 = load double* %xi, align 8, !dbg !56
  %mul3 = fmul double %8, %9, !dbg !56
  %10 = load double* %xi, align 8, !dbg !56
  %mul4 = fmul double %mul3, %10, !dbg !56
  %sub5 = fsub double %mul, %mul4, !dbg !56
  store double %sub5, double* %xsi, align 8, !dbg !56
  %11 = load double* %xsi, align 8, !dbg !58
  %12 = load double* %xi, align 8, !dbg !58
  %sub6 = fsub double %11, %12, !dbg !58
  store double %sub6, double* %temp, align 8, !dbg !58
  %13 = load double* %temp, align 8, !dbg !59
  %cmp = fcmp ogt double %13, 1.000000e-10, !dbg !59
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !59

lor.rhs:                                          ; preds = %while.body
  %14 = load double* %temp, align 8, !dbg !60
  %cmp7 = fcmp olt double %14, -1.000000e-10, !dbg !60
  br label %lor.end, !dbg !60

lor.end:                                          ; preds = %lor.rhs, %while.body
  %15 = phi i1 [ true, %while.body ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32, !dbg !62
  store i32 %lor.ext, i32* %cond, align 4, !dbg !62
  %16 = load double* %xsi, align 8, !dbg !65
  store double %16, double* %xi, align 8, !dbg !65
  br label %while.cond, !dbg !66

while.end:                                        ; preds = %while.cond
  %17 = load double* %xi, align 8, !dbg !67
  ret double %17, !dbg !67
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %a}, metadata !68), !dbg !69
  call void @llvm.dbg.declare(metadata !{double* %r}, metadata !70), !dbg !71
  %call = call double (...)* @__VERIFIER_nondet_double(), !dbg !72
  store double %call, double* %a, align 8, !dbg !72
  %0 = load double* %a, align 8, !dbg !73
  %cmp = fcmp oge double %0, 2.000000e+01, !dbg !73
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !73

land.rhs:                                         ; preds = %entry
  %1 = load double* %a, align 8, !dbg !74
  %cmp1 = fcmp ole double %1, 3.000000e+01, !dbg !74
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32, !dbg !76
  call void @__VERIFIER_assume(i32 %land.ext), !dbg !76
  %3 = load double* %a, align 8, !dbg !78
  %call2 = call double @inv(double %3), !dbg !78
  store double %call2, double* %r, align 8, !dbg !78
  %4 = load double* %r, align 8, !dbg !79
  %cmp3 = fcmp oge double %4, 0.000000e+00, !dbg !79
  br i1 %cmp3, label %land.rhs4, label %land.end6, !dbg !79

land.rhs4:                                        ; preds = %land.end
  %5 = load double* %r, align 8, !dbg !80
  %cmp5 = fcmp ole double %5, 6.000000e-02, !dbg !80
  br label %land.end6

land.end6:                                        ; preds = %land.rhs4, %land.end
  %6 = phi i1 [ false, %land.end ], [ %cmp5, %land.rhs4 ]
  %land.ext7 = zext i1 %6 to i32, !dbg !82
  call void @__VERIFIER_assert(i32 %land.ext7), !dbg !82
  ret i32 0, !dbg !84
}

declare double @__VERIFIER_nondet_double(...) #3

declare void @__VERIFIER_assume(i32) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float/float-benchs/inv_Newton.c", metadata !"/home/lich/Documents/test-sv-comp/sv-comp"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_assert", metadata !"__VERIFIER_assert", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @__VERIFIER_assert, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [__VERIFIER_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"inv", metadata !"inv", metadata !"", i32 13, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @inv, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [inv]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 32, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!17 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!18 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!19 = metadata !{i32 786689, metadata !4, metadata !"cond", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 11]
!20 = metadata !{i32 11, i32 28, metadata !4, null}
!21 = metadata !{i32 11, i32 40, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!23 = metadata !{i32 11, i32 49, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !25, i32 11, i32 49, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!25 = metadata !{i32 786443, metadata !1, metadata !22, i32 11, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!26 = metadata !{i32 11, i32 58, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !25, i32 11, i32 58, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!28 = metadata !{i32 11, i32 80, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 80, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!30 = metadata !{i32 786689, metadata !9, metadata !"A", metadata !5, i32 16777229, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 13]
!31 = metadata !{i32 13, i32 20, metadata !9, null}
!32 = metadata !{i32 786688, metadata !9, metadata !"xi", metadata !5, i32 15, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xi] [line 15]
!33 = metadata !{i32 15, i32 10, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"xsi", metadata !5, i32 15, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xsi] [line 15]
!35 = metadata !{i32 15, i32 14, metadata !9, null}
!36 = metadata !{i32 786688, metadata !9, metadata !"temp", metadata !5, i32 15, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 15]
!37 = metadata !{i32 15, i32 19, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"PtrA", metadata !5, i32 16, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [PtrA] [line 16]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!40 = metadata !{i32 16, i32 15, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"Ptrxi", metadata !5, i32 16, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ptrxi] [line 16]
!42 = metadata !{i32 16, i32 22, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"cond", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cond] [line 16]
!44 = metadata !{i32 16, i32 29, metadata !9, null}
!45 = metadata !{i32 786688, metadata !9, metadata !"exp", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exp] [line 16]
!46 = metadata !{i32 16, i32 35, metadata !9, null}
!47 = metadata !{i32 17, i32 3, metadata !9, null}
!48 = metadata !{i32 18, i32 3, metadata !9, null}
!49 = metadata !{i32 19, i32 3, metadata !9, null}
!50 = metadata !{i32 20, i32 3, metadata !9, null}
!51 = metadata !{i32 21, i32 3, metadata !9, null}
!52 = metadata !{i32 22, i32 3, metadata !9, null}
!53 = metadata !{i32 23, i32 3, metadata !9, null}
!54 = metadata !{i32 23, i32 3, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 3, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!56 = metadata !{i32 24, i32 5, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 16, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!58 = metadata !{i32 25, i32 5, metadata !57, null}
!59 = metadata !{i32 26, i32 5, metadata !57, null}
!60 = metadata !{i32 26, i32 5, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !57, i32 26, i32 5, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!62 = metadata !{i32 26, i32 5, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 26, i32 5, i32 3, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!64 = metadata !{i32 786443, metadata !1, metadata !57, i32 26, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!65 = metadata !{i32 27, i32 5, metadata !57, null}
!66 = metadata !{i32 28, i32 3, metadata !57, null}
!67 = metadata !{i32 29, i32 3, metadata !9, null}
!68 = metadata !{i32 786688, metadata !13, metadata !"a", metadata !5, i32 34, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 34]
!69 = metadata !{i32 34, i32 10, metadata !13, null}
!70 = metadata !{i32 786688, metadata !13, metadata !"r", metadata !5, i32 34, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 34]
!71 = metadata !{i32 34, i32 12, metadata !13, null}
!72 = metadata !{i32 36, i32 7, metadata !13, null}
!73 = metadata !{i32 37, i32 3, metadata !13, null}
!74 = metadata !{i32 37, i32 3, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !13, i32 37, i32 3, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!76 = metadata !{i32 37, i32 3, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !13, i32 37, i32 3, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!78 = metadata !{i32 39, i32 7, metadata !13, null}
!79 = metadata !{i32 41, i32 3, metadata !13, null}
!80 = metadata !{i32 41, i32 3, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !13, i32 41, i32 3, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!82 = metadata !{i32 41, i32 3, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !13, i32 41, i32 3, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test-sv-comp/sv-comp/float/float-benchs/inv_Newton.c]
!84 = metadata !{i32 42, i32 3, metadata !13, null}
