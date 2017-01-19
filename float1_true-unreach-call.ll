; ModuleID = 'float1_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !12), !dbg !14
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !15), !dbg !16
  store double 2.000000e+00, double* %x, align 8, !dbg !17
  %0 = load double* %x, align 8, !dbg !18
  %sub = fsub double %0, 6.000000e-01, !dbg !18
  store double %sub, double* %x, align 8, !dbg !18
  %1 = load double* %x, align 8, !dbg !19
  %conv = fptosi double %1 to i32, !dbg !19
  store i32 %conv, i32* %y, align 4, !dbg !19
  %2 = load i32* %y, align 4, !dbg !20
  %cmp = icmp eq i32 %2, 1, !dbg !20
  br i1 %cmp, label %if.end, label %if.then, !dbg !20

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !22
  br label %if.end, !dbg !22

if.end:                                           ; preds = %if.then, %entry
  store double 2.000000e+00, double* %x, align 8, !dbg !24
  %3 = load double* %x, align 8, !dbg !25
  %sub2 = fsub double %3, 4.000000e-01, !dbg !25
  store double %sub2, double* %x, align 8, !dbg !25
  %4 = load double* %x, align 8, !dbg !26
  %conv3 = fptosi double %4 to i32, !dbg !26
  store i32 %conv3, i32* %y, align 4, !dbg !26
  %5 = load i32* %y, align 4, !dbg !27
  %cmp4 = icmp eq i32 %5, 1, !dbg !27
  br i1 %cmp4, label %if.end7, label %if.then6, !dbg !27

if.then6:                                         ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !29
  br label %if.end7, !dbg !29

if.end7:                                          ; preds = %if.then6, %if.end
  %6 = load i32* %retval, !dbg !31
  ret i32 %6, !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float1_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float1_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 2, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 2} ; [ DW_TAG_subprogram ] [line 2] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float1_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 3, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 3]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 3, i32 10, metadata !4, null}
!15 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 4, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 4]
!16 = metadata !{i32 4, i32 7, metadata !4, null}
!17 = metadata !{i32 6, i32 3, metadata !4, null}
!18 = metadata !{i32 7, i32 3, metadata !4, null}
!19 = metadata !{i32 8, i32 3, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!20 = metadata !{i32 10, i32 6, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 10, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float1_true-unreach-call.c]
!22 = metadata !{i32 10, i32 15, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !21, i32 10, i32 15, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float1_true-unreach-call.c]
!24 = metadata !{i32 12, i32 3, metadata !4, null}
!25 = metadata !{i32 13, i32 3, metadata !4, null}
!26 = metadata !{i32 14, i32 3, metadata !4, null}
!27 = metadata !{i32 17, i32 6, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float1_true-unreach-call.c]
!29 = metadata !{i32 17, i32 15, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 17, i32 15, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float1_true-unreach-call.c]
!31 = metadata !{i32 18, i32 1, metadata !4, null}
