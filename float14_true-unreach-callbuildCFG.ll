; ModuleID = 'float14_true-unreach-callbuildCFG.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca float, align 4
  %x = alloca float, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{float* %temp}, metadata !12), !dbg !14
  store float 0x7FF0000000000000, float* %temp, align 4, !dbg !15
  br i1 true, label %cond.true, label %cond.false, !dbg !16

cond.true:                                        ; preds = %entry
  %0 = load float* %temp, align 4, !dbg !18
  %call = call i32 @__isinff(float %0) #1, !dbg !18
  %tobool = icmp ne i32 %call, 0, !dbg !18
  br i1 %tobool, label %if.end, label %if.then, !dbg !18

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !20

cond.true1:                                       ; preds = %cond.false
  %1 = load float* %temp, align 4, !dbg !22
  %conv = fpext float %1 to double, !dbg !22
  %call2 = call i32 @__isinf(double %conv) #1, !dbg !22
  %tobool3 = icmp ne i32 %call2, 0, !dbg !22
  br i1 %tobool3, label %if.end, label %if.then, !dbg !22

cond.false4:                                      ; preds = %cond.false
  %2 = load float* %temp, align 4, !dbg !24
  %conv5 = fpext float %2 to x86_fp80, !dbg !24
  %call6 = call i32 @__isinfl(x86_fp80 %conv5) #1, !dbg !24
  %tobool7 = icmp ne i32 %call6, 0, !dbg !24
  br i1 %tobool7, label %if.end, label %if.then, !dbg !24

if.then:                                          ; preds = %cond.false4, %cond.true1, %cond.true
  call void @__VERIFIER_error(), !dbg !26
  br label %if.end, !dbg !26

if.end:                                           ; preds = %if.then, %cond.false4, %cond.true1, %cond.true
  call void @llvm.dbg.declare(metadata !{float* %x}, metadata !30), !dbg !31
  %3 = load float* %temp, align 4, !dbg !32
  %4 = load float* %temp, align 4, !dbg !32
  %sub = fsub float %3, %4, !dbg !32
  store float %sub, float* %x, align 4, !dbg !32
  %5 = load float* %temp, align 4, !dbg !33
  %call8 = call i32 @__fpclassifyf(float %5) #1, !dbg !33
  %cmp = icmp eq i32 %call8, 4, !dbg !33
  br i1 %cmp, label %if.end11, label %if.then10, !dbg !33

if.then10:                                        ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !35
  br label %if.end11, !dbg !35

if.end11:                                         ; preds = %if.then10, %if.end
  br i1 true, label %cond.true12, label %cond.false15, !dbg !37

cond.true12:                                      ; preds = %if.end11
  %6 = load float* %temp, align 4, !dbg !39
  %call13 = call i32 @__isinff(float %6) #1, !dbg !39
  %tobool14 = icmp ne i32 %call13, 0, !dbg !39
  br i1 %tobool14, label %if.end25, label %if.then24, !dbg !39

cond.false15:                                     ; preds = %if.end11
  br i1 false, label %cond.true16, label %cond.false20, !dbg !41

cond.true16:                                      ; preds = %cond.false15
  %7 = load float* %temp, align 4, !dbg !43
  %conv17 = fpext float %7 to double, !dbg !43
  %call18 = call i32 @__isinf(double %conv17) #1, !dbg !43
  %tobool19 = icmp ne i32 %call18, 0, !dbg !43
  br i1 %tobool19, label %if.end25, label %if.then24, !dbg !43

cond.false20:                                     ; preds = %cond.false15
  %8 = load float* %temp, align 4, !dbg !45
  %conv21 = fpext float %8 to x86_fp80, !dbg !45
  %call22 = call i32 @__isinfl(x86_fp80 %conv21) #1, !dbg !45
  %tobool23 = icmp ne i32 %call22, 0, !dbg !45
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !45

if.then24:                                        ; preds = %cond.false20, %cond.true16, %cond.true12
  call void @__VERIFIER_error(), !dbg !47
  br label %if.end25, !dbg !47

if.end25:                                         ; preds = %if.then24, %cond.false20, %cond.true16, %cond.true12
  %9 = load i32* %retval, !dbg !51
  ret i32 %9, !dbg !51
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #2

declare void @__VERIFIER_error() #3

; Function Attrs: nounwind readnone
declare i32 @__fpclassifyf(float) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float14_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"temp", metadata !5, i32 5, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 5]
!13 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 5, i32 9, metadata !4, null}
!15 = metadata !{i32 7, i32 3, metadata !4, null}
!16 = metadata !{i32 8, i32 6, metadata !17, null} ; [ DW_TAG_imported_declaration ]
!17 = metadata !{i32 786443, metadata !1, metadata !4, i32 8, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!18 = metadata !{i32 8, i32 8, metadata !19, null} ; [ DW_TAG_imported_declaration ]
!19 = metadata !{i32 786443, metadata !1, metadata !17, i32 8, i32 8, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!20 = metadata !{i32 8, i32 8, metadata !21, null} ; [ DW_TAG_imported_declaration ]
!21 = metadata !{i32 786443, metadata !1, metadata !17, i32 8, i32 8, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!22 = metadata !{i32 8, i32 8, metadata !23, null} ; [ DW_TAG_imported_declaration ]
!23 = metadata !{i32 786443, metadata !1, metadata !17, i32 8, i32 8, i32 4, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!24 = metadata !{i32 8, i32 8, metadata !25, null} ; [ DW_TAG_imported_declaration ]
!25 = metadata !{i32 786443, metadata !1, metadata !17, i32 8, i32 8, i32 5, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!26 = metadata !{i32 8, i32 22, metadata !27, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 786443, metadata !1, metadata !28, i32 8, i32 22, i32 7, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!28 = metadata !{i32 786443, metadata !1, metadata !29, i32 8, i32 22, i32 6, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!29 = metadata !{i32 786443, metadata !1, metadata !17, i32 8, i32 22, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!30 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 10, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 10]
!31 = metadata !{i32 10, i32 9, metadata !4, null}
!32 = metadata !{i32 12, i32 3, metadata !4, null}
!33 = metadata !{i32 14, i32 8, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!35 = metadata !{i32 14, i32 25, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 14, i32 25, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!37 = metadata !{i32 16, i32 6, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!39 = metadata !{i32 16, i32 8, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !38, i32 16, i32 8, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!41 = metadata !{i32 16, i32 8, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !38, i32 16, i32 8, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!43 = metadata !{i32 16, i32 8, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !38, i32 16, i32 8, i32 4, i32 14} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!45 = metadata !{i32 16, i32 8, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !38, i32 16, i32 8, i32 5, i32 15} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!47 = metadata !{i32 16, i32 22, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 16, i32 22, i32 7, i32 17} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 16, i32 22, i32 6, i32 16} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!50 = metadata !{i32 786443, metadata !1, metadata !38, i32 16, i32 22, i32 3, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float14_true-unreach-call.c]
!51 = metadata !{i32 17, i32 1, metadata !4, null}
