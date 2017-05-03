; ModuleID = 'float-to-double1_true-unreach-callbuildCFG.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca float, align 4
  %d = alloca double, align 8
  %ff = alloca float, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{float* %f}, metadata !12), !dbg !14
  %call = call float (...)* @__VERIFIER_nondet_float(), !dbg !15
  store float %call, float* %f, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata !{double* %d}, metadata !16), !dbg !18
  %0 = load float* %f, align 4, !dbg !19
  %conv = fpext float %0 to double, !dbg !19
  store double %conv, double* %d, align 8, !dbg !19
  call void @llvm.dbg.declare(metadata !{float* %ff}, metadata !20), !dbg !21
  %1 = load double* %d, align 8, !dbg !22
  %conv1 = fptrunc double %1 to float, !dbg !22
  store float %conv1, float* %ff, align 4, !dbg !22
  %2 = load float* %f, align 4, !dbg !23
  %3 = load float* %ff, align 4, !dbg !23
  %cmp = fcmp oeq float %2, %3, !dbg !23
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !23

lor.lhs.false:                                    ; preds = %entry
  br i1 true, label %cond.true, label %cond.false, !dbg !25

cond.true:                                        ; preds = %lor.lhs.false
  %4 = load float* %f, align 4, !dbg !27
  %call3 = call i32 @__isnanf(float %4) #1, !dbg !27
  %tobool = icmp ne i32 %call3, 0, !dbg !27
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !27

cond.false:                                       ; preds = %lor.lhs.false
  br i1 false, label %cond.true4, label %cond.false8, !dbg !29

cond.true4:                                       ; preds = %cond.false
  %5 = load float* %f, align 4, !dbg !31
  %conv5 = fpext float %5 to double, !dbg !31
  %call6 = call i32 @__isnan(double %conv5) #1, !dbg !31
  %tobool7 = icmp ne i32 %call6, 0, !dbg !31
  br i1 %tobool7, label %land.lhs.true, label %if.then, !dbg !31

cond.false8:                                      ; preds = %cond.false
  %6 = load float* %f, align 4, !dbg !33
  %conv9 = fpext float %6 to x86_fp80, !dbg !33
  %call10 = call i32 @__isnanl(x86_fp80 %conv9) #1, !dbg !33
  %tobool11 = icmp ne i32 %call10, 0, !dbg !33
  br i1 %tobool11, label %land.lhs.true, label %if.then, !dbg !33

land.lhs.true:                                    ; preds = %cond.false8, %cond.true4, %cond.true
  br i1 true, label %cond.true12, label %cond.false15, !dbg !35

cond.true12:                                      ; preds = %land.lhs.true
  %7 = load float* %ff, align 4, !dbg !39
  %call13 = call i32 @__isnanf(float %7) #1, !dbg !39
  %tobool14 = icmp ne i32 %call13, 0, !dbg !39
  br i1 %tobool14, label %if.end, label %if.then, !dbg !39

cond.false15:                                     ; preds = %land.lhs.true
  br i1 false, label %cond.true16, label %cond.false20, !dbg !41

cond.true16:                                      ; preds = %cond.false15
  %8 = load float* %ff, align 4, !dbg !43
  %conv17 = fpext float %8 to double, !dbg !43
  %call18 = call i32 @__isnan(double %conv17) #1, !dbg !43
  %tobool19 = icmp ne i32 %call18, 0, !dbg !43
  br i1 %tobool19, label %if.end, label %if.then, !dbg !43

cond.false20:                                     ; preds = %cond.false15
  %9 = load float* %ff, align 4, !dbg !45
  %conv21 = fpext float %9 to x86_fp80, !dbg !45
  %call22 = call i32 @__isnanl(x86_fp80 %conv21) #1, !dbg !45
  %tobool23 = icmp ne i32 %call22, 0, !dbg !45
  br i1 %tobool23, label %if.end, label %if.then, !dbg !45

if.then:                                          ; preds = %cond.false20, %cond.true16, %cond.true12, %cond.false8, %cond.true4, %cond.true
  call void @__VERIFIER_error(), !dbg !47
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %cond.false20, %cond.true16, %cond.true12, %entry
  %10 = load i32* %retval, !dbg !54
  ret i32 %10, !dbg !54
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare float @__VERIFIER_nondet_float(...) #2

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #3

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float-to-double1_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"f", metadata !5, i32 13, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 13]
!13 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 13, i32 9, metadata !4, null}
!15 = metadata !{i32 13, i32 11, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"d", metadata !5, i32 15, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 15]
!17 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!18 = metadata !{i32 15, i32 10, metadata !4, null}
!19 = metadata !{i32 15, i32 3, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"ff", metadata !5, i32 16, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ff] [line 16]
!21 = metadata !{i32 16, i32 9, metadata !4, null}
!22 = metadata !{i32 16, i32 3, metadata !4, null}
!23 = metadata !{i32 18, i32 6, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!25 = metadata !{i32 18, i32 6, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 6, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!27 = metadata !{i32 18, i32 22, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 22, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!29 = metadata !{i32 18, i32 22, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 22, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!31 = metadata !{i32 18, i32 22, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 22, i32 6, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!33 = metadata !{i32 18, i32 22, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 22, i32 7, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!35 = metadata !{i32 18, i32 22, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 18, i32 22, i32 10, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 18, i32 22, i32 8, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!38 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 22, i32 4, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!39 = metadata !{i32 18, i32 34, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 34, i32 12, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!41 = metadata !{i32 18, i32 34, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 34, i32 13, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!43 = metadata !{i32 18, i32 34, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 34, i32 15, i32 15} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!45 = metadata !{i32 18, i32 34, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 34, i32 16, i32 16} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!47 = metadata !{i32 18, i32 47, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 18, i32 47, i32 18, i32 18} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 18, i32 47, i32 17, i32 17} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 18, i32 47, i32 14, i32 14} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!51 = metadata !{i32 786443, metadata !1, metadata !52, i32 18, i32 47, i32 11, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!52 = metadata !{i32 786443, metadata !1, metadata !53, i32 18, i32 47, i32 9, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!53 = metadata !{i32 786443, metadata !1, metadata !24, i32 18, i32 47, i32 5, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-to-double1_true-unreach-call.c]
!54 = metadata !{i32 19, i32 1, metadata !4, null}
