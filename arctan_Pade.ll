; ModuleID = 'arctan_Pade.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pi = constant double 0x400921FB54442D18, align 8

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %cond.addr}, metadata !25), !dbg !26
  %0 = load i32* %cond.addr, align 4, !dbg !27
  %tobool = icmp ne i32 %0, 0, !dbg !27
  br i1 %tobool, label %if.end, label %if.then, !dbg !27

if.then:                                          ; preds = %entry
  br label %ERROR, !dbg !29

ERROR:                                            ; preds = %if.then
  call void (...)* @__VERIFIER_error() #4, !dbg !32
  unreachable, !dbg !32

if.end:                                           ; preds = %entry
  ret void, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define double @PADE_2_2(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %x_2 = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !36), !dbg !37
  call void @llvm.dbg.declare(metadata !{double* %x_2}, metadata !38), !dbg !39
  %0 = load double* %x.addr, align 8, !dbg !40
  %1 = load double* %x.addr, align 8, !dbg !40
  %mul = fmul double %0, %1, !dbg !40
  store double %mul, double* %x_2, align 8, !dbg !40
  %2 = load double* %x_2, align 8, !dbg !41
  %3 = load double* %x_2, align 8, !dbg !41
  %mul1 = fmul double 1.800000e+00, %3, !dbg !41
  %add = fadd double 3.000000e+00, %mul1, !dbg !41
  %div = fdiv double %2, %add, !dbg !41
  %sub = fsub double 1.000000e+00, %div, !dbg !41
  ret double %sub, !dbg !41
}

; Function Attrs: nounwind uwtable
define double @ARCTAN_0_1(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !42), !dbg !43
  %0 = load double* %x.addr, align 8, !dbg !44
  %1 = load double* %x.addr, align 8, !dbg !45
  %call = call double @PADE_2_2(double %1), !dbg !45
  %mul = fmul double %0, %call, !dbg !45
  ret double %mul, !dbg !45
}

; Function Attrs: nounwind uwtable
define double @ARCTAN_POS(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !46), !dbg !47
  %0 = load double* %x.addr, align 8, !dbg !48
  %cmp = fcmp ogt double %0, 1.000000e+00, !dbg !48
  br i1 %cmp, label %if.then, label %if.else, !dbg !48

if.then:                                          ; preds = %entry
  %1 = load double* %x.addr, align 8, !dbg !50
  %div = fdiv double 1.000000e+00, %1, !dbg !50
  %call = call double @ARCTAN_0_1(double %div), !dbg !50
  %sub = fsub double 0x3FF921FB54442D18, %call, !dbg !50
  store double %sub, double* %retval, !dbg !50
  br label %return, !dbg !50

if.else:                                          ; preds = %entry
  %2 = load double* %x.addr, align 8, !dbg !52
  %call1 = call double @ARCTAN_0_1(double %2), !dbg !52
  store double %call1, double* %retval, !dbg !52
  br label %return, !dbg !52

return:                                           ; preds = %if.else, %if.then
  %3 = load double* %retval, !dbg !53
  ret double %3, !dbg !53
}

; Function Attrs: nounwind uwtable
define double @ARCTAN(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !54), !dbg !55
  %0 = load double* %x.addr, align 8, !dbg !56
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !56
  br i1 %cmp, label %if.then, label %if.else, !dbg !56

if.then:                                          ; preds = %entry
  %1 = load double* %x.addr, align 8, !dbg !58
  %sub = fsub double -0.000000e+00, %1, !dbg !58
  %call = call double @ARCTAN_POS(double %sub), !dbg !58
  %sub1 = fsub double -0.000000e+00, %call, !dbg !58
  store double %sub1, double* %retval, !dbg !58
  br label %return, !dbg !58

if.else:                                          ; preds = %entry
  %2 = load double* %x.addr, align 8, !dbg !60
  %call2 = call double @ARCTAN_POS(double %2), !dbg !60
  store double %call2, double* %retval, !dbg !60
  br label %return, !dbg !60

return:                                           ; preds = %if.else, %if.then
  %3 = load double* %retval, !dbg !61
  ret double %3, !dbg !61
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %a}, metadata !62), !dbg !63
  call void @llvm.dbg.declare(metadata !{double* %r}, metadata !64), !dbg !65
  %call = call double (...)* @__VERIFIER_nondet_double(), !dbg !66
  store double %call, double* %a, align 8, !dbg !66
  %0 = load double* %a, align 8, !dbg !67
  %cmp = fcmp oge double %0, -1.790000e+308, !dbg !67
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !67

land.rhs:                                         ; preds = %entry
  %1 = load double* %a, align 8, !dbg !68
  %cmp1 = fcmp ole double %1, 1.790000e+308, !dbg !68
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32, !dbg !70
  call void @__VERIFIER_assume(i32 %land.ext), !dbg !70
  %3 = load double* %a, align 8, !dbg !72
  %call2 = call double @ARCTAN(double %3), !dbg !72
  store double %call2, double* %r, align 8, !dbg !72
  %4 = load double* %r, align 8, !dbg !73
  %cmp3 = fcmp oge double %4, -1.571000e+00, !dbg !73
  br i1 %cmp3, label %land.rhs4, label %land.end6, !dbg !73

land.rhs4:                                        ; preds = %land.end
  %5 = load double* %r, align 8, !dbg !74
  %cmp5 = fcmp ole double %5, 1.571000e+00, !dbg !74
  br label %land.end6

land.end6:                                        ; preds = %land.rhs4, %land.end
  %6 = phi i1 [ false, %land.end ], [ %cmp5, %land.rhs4 ]
  %land.ext7 = zext i1 %6 to i32, !dbg !76
  call void @__VERIFIER_assert(i32 %land.ext7), !dbg !76
  ret i32 0, !dbg !78
}

declare double @__VERIFIER_nondet_double(...) #3

declare void @__VERIFIER_assume(i32) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c] [DW_LANG_C99]
!1 = metadata !{metadata !"arctan_Pade.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !14, metadata !15, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_assert", metadata !"__VERIFIER_assert", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @__VERIFIER_assert, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [__VERIFIER_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PADE_2_2", metadata !"PADE_2_2", metadata !"", i32 17, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @PADE_2_2, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 18] [PADE_2_2]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ARCTAN_0_1", metadata !"ARCTAN_0_1", metadata !"", i32 23, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @ARCTAN_0_1, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [ARCTAN_0_1]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ARCTAN_POS", metadata !"ARCTAN_POS", metadata !"", i32 28, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @ARCTAN_POS, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [ARCTAN_POS]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ARCTAN", metadata !"ARCTAN", metadata !"", i32 34, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @ARCTAN, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [ARCTAN]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 40, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786484, i32 0, null, metadata !"Pi", metadata !"Pi", metadata !"", metadata !5, i32 15, metadata !21, i32 0, i32 1, double* @Pi, null} ; [ DW_TAG_variable ] [Pi] [line 15] [def]
!21 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!25 = metadata !{i32 786689, metadata !4, metadata !"cond", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 12]
!26 = metadata !{i32 12, i32 28, metadata !4, null}
!27 = metadata !{i32 12, i32 40, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!29 = metadata !{i32 12, i32 49, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 12, i32 49, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!31 = metadata !{i32 786443, metadata !1, metadata !28, i32 12, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!32 = metadata !{i32 12, i32 58, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 12, i32 58, i32 3, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!34 = metadata !{i32 12, i32 80, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 80, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!36 = metadata !{i32 786689, metadata !9, metadata !"x", metadata !5, i32 16777233, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 17]
!37 = metadata !{i32 17, i32 24, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"x_2", metadata !5, i32 19, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_2] [line 19]
!39 = metadata !{i32 19, i32 10, metadata !9, null}
!40 = metadata !{i32 19, i32 3, metadata !9, null}
!41 = metadata !{i32 20, i32 3, metadata !9, null}
!42 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !5, i32 16777239, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 23]
!43 = metadata !{i32 23, i32 26, metadata !13, null}
!44 = metadata !{i32 25, i32 3, metadata !13, null}
!45 = metadata !{i32 25, i32 12, metadata !13, null}
!46 = metadata !{i32 786689, metadata !14, metadata !"x", metadata !5, i32 16777244, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 28]
!47 = metadata !{i32 28, i32 26, metadata !14, null}
!48 = metadata !{i32 30, i32 7, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !14, i32 30, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!50 = metadata !{i32 30, i32 32, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !49, i32 30, i32 32, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!52 = metadata !{i32 31, i32 15, metadata !49, null}
!53 = metadata !{i32 32, i32 1, metadata !14, null}
!54 = metadata !{i32 786689, metadata !15, metadata !"x", metadata !5, i32 16777250, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 34]
!55 = metadata !{i32 34, i32 22, metadata !15, null}
!56 = metadata !{i32 36, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !15, i32 36, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!58 = metadata !{i32 36, i32 22, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !57, i32 36, i32 22, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!60 = metadata !{i32 37, i32 15, metadata !57, null}
!61 = metadata !{i32 38, i32 1, metadata !15, null}
!62 = metadata !{i32 786688, metadata !16, metadata !"a", metadata !5, i32 42, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 42]
!63 = metadata !{i32 42, i32 10, metadata !16, null}
!64 = metadata !{i32 786688, metadata !16, metadata !"r", metadata !5, i32 42, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 42]
!65 = metadata !{i32 42, i32 13, metadata !16, null}
!66 = metadata !{i32 44, i32 7, metadata !16, null}
!67 = metadata !{i32 45, i32 3, metadata !16, null}
!68 = metadata !{i32 45, i32 3, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !16, i32 45, i32 3, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!70 = metadata !{i32 45, i32 3, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !16, i32 45, i32 3, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!72 = metadata !{i32 47, i32 7, metadata !16, null}
!73 = metadata !{i32 49, i32 3, metadata !16, null}
!74 = metadata !{i32 49, i32 3, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !16, i32 49, i32 3, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!76 = metadata !{i32 49, i32 3, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !16, i32 49, i32 3, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/arctan_Pade.c]
!78 = metadata !{i32 50, i32 3, metadata !16, null}
