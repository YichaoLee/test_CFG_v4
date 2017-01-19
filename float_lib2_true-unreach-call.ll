; ModuleID = 'float_lib2_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %largestSubnormalFloat = alloca float, align 4
  %b = alloca i8, align 1
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{float* %largestSubnormalFloat}, metadata !12), !dbg !14
  store float 0x380FFFFFC0000000, float* %largestSubnormalFloat, align 4, !dbg !15
  %0 = load float* %largestSubnormalFloat, align 4, !dbg !16
  %call = call i32 @__fpclassifyf(float %0) #1, !dbg !16
  %cmp = icmp ne i32 %call, 0, !dbg !16
  br i1 %cmp, label %if.end, label %if.then, !dbg !16

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !18
  br label %if.end, !dbg !18

if.end:                                           ; preds = %if.then, %entry
  %1 = load float* %largestSubnormalFloat, align 4, !dbg !20
  %call1 = call i32 @__fpclassifyf(float %1) #1, !dbg !20
  %cmp2 = icmp ne i32 %call1, 1, !dbg !20
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !20

if.then3:                                         ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !22
  br label %if.end4, !dbg !22

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load float* %largestSubnormalFloat, align 4, !dbg !24
  %call5 = call i32 @__fpclassifyf(float %2) #1, !dbg !24
  %cmp6 = icmp ne i32 %call5, 2, !dbg !24
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !24

if.then7:                                         ; preds = %if.end4
  call void @__VERIFIER_error(), !dbg !26
  br label %if.end8, !dbg !26

if.end8:                                          ; preds = %if.then7, %if.end4
  %3 = load float* %largestSubnormalFloat, align 4, !dbg !28
  %call9 = call i32 @__fpclassifyf(float %3) #1, !dbg !28
  %cmp10 = icmp ne i32 %call9, 4, !dbg !28
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !28

if.then11:                                        ; preds = %if.end8
  call void @__VERIFIER_error(), !dbg !30
  br label %if.end12, !dbg !30

if.end12:                                         ; preds = %if.then11, %if.end8
  %4 = load float* %largestSubnormalFloat, align 4, !dbg !32
  %call13 = call i32 @__fpclassifyf(float %4) #1, !dbg !32
  %cmp14 = icmp eq i32 %call13, 3, !dbg !32
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !32

if.then15:                                        ; preds = %if.end12
  call void @__VERIFIER_error(), !dbg !34
  br label %if.end16, !dbg !34

if.end16:                                         ; preds = %if.then15, %if.end12
  %5 = load float* %largestSubnormalFloat, align 4, !dbg !36
  %call17 = call i32 @__fpclassifyf(float %5) #1, !dbg !36
  %cmp18 = icmp eq i32 %call17, 3, !dbg !36
  br i1 %cmp18, label %if.end20, label %if.then19, !dbg !36

if.then19:                                        ; preds = %if.end16
  call void @__VERIFIER_error(), !dbg !38
  br label %if.end20, !dbg !38

if.end20:                                         ; preds = %if.then19, %if.end16
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !40), !dbg !42
  %6 = load float* %largestSubnormalFloat, align 4, !dbg !43
  %call21 = call i32 @__fpclassifyf(float %6) #1, !dbg !43
  %cmp22 = icmp eq i32 %call21, 4, !dbg !43
  %conv = zext i1 %cmp22 to i32, !dbg !43
  %conv23 = trunc i32 %conv to i8, !dbg !43
  store i8 %conv23, i8* %b, align 1, !dbg !43
  %7 = load i8* %b, align 1, !dbg !44
  %tobool = icmp ne i8 %7, 0, !dbg !44
  br i1 %tobool, label %if.then24, label %if.end25, !dbg !44

if.then24:                                        ; preds = %if.end20
  call void @__VERIFIER_error(), !dbg !46
  br label %if.end25, !dbg !46

if.end25:                                         ; preds = %if.then24, %if.end20
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32 @__fpclassifyf(float) #2

declare void @__VERIFIER_error() #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float_lib2_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"largestSubnormalFloat", metadata !5, i32 16, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [largestSubnormalFloat] [line 16]
!13 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 16, i32 9, metadata !4, null}
!15 = metadata !{i32 16, i32 3, metadata !4, null}
!16 = metadata !{i32 18, i32 8, metadata !17, null}
!17 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!18 = metadata !{i32 18, i32 54, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !17, i32 18, i32 54, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!20 = metadata !{i32 19, i32 8, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!22 = metadata !{i32 19, i32 59, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !21, i32 19, i32 59, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!24 = metadata !{i32 20, i32 8, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 20, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!26 = metadata !{i32 20, i32 55, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !25, i32 20, i32 55, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!28 = metadata !{i32 21, i32 8, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!30 = metadata !{i32 21, i32 57, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !29, i32 21, i32 57, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!32 = metadata !{i32 22, i32 8, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!34 = metadata !{i32 22, i32 60, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 22, i32 60, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!36 = metadata !{i32 24, i32 8, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 6, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!38 = metadata !{i32 24, i32 63, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !37, i32 24, i32 63, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!40 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 26, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 26]
!41 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!42 = metadata !{i32 26, i32 8, metadata !4, null}
!43 = metadata !{i32 26, i32 12, metadata !4, null}
!44 = metadata !{i32 28, i32 6, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!46 = metadata !{i32 28, i32 13, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !45, i32 28, i32 13, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float_lib2_true-unreach-call.c]
!48 = metadata !{i32 31, i32 3, metadata !4, null}
