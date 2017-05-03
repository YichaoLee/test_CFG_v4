; ModuleID = 'float7_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca float*, align 8
  %f = alloca float, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !12), !dbg !14
  store i32 0, i32* %i, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata !{float** %p}, metadata !16), !dbg !19
  %0 = bitcast i32* %i to float*, !dbg !20
  store float* %0, float** %p, align 8, !dbg !20
  call void @llvm.dbg.declare(metadata !{float* %f}, metadata !21), !dbg !22
  %1 = load float** %p, align 8, !dbg !23
  %2 = load float* %1, align 4, !dbg !23
  store float %2, float* %f, align 4, !dbg !23
  %3 = load float* %f, align 4, !dbg !24
  %conv = fpext float %3 to double, !dbg !24
  %cmp = fcmp oeq double %conv, 0.000000e+00, !dbg !24
  br i1 %cmp, label %if.end, label %if.then, !dbg !24

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !26
  br label %if.end, !dbg !26

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32* %retval, !dbg !28
  ret i32 %4, !dbg !28
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float7_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float7_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 2, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 3} ; [ DW_TAG_subprogram ] [line 2] [def] [scope 3] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float7_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 4, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 4]
!13 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{i32 4, i32 16, metadata !4, null}
!15 = metadata !{i32 5, i32 3, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"p", metadata !5, i32 7, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 7]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!18 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!19 = metadata !{i32 7, i32 10, metadata !4, null}
!20 = metadata !{i32 8, i32 3, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!21 = metadata !{i32 786688, metadata !4, metadata !"f", metadata !5, i32 10, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 10]
!22 = metadata !{i32 10, i32 9, metadata !4, null}
!23 = metadata !{i32 10, i32 3, metadata !4, null}
!24 = metadata !{i32 12, i32 6, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float7_true-unreach-call.c]
!26 = metadata !{i32 12, i32 17, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !25, i32 12, i32 17, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float7_true-unreach-call.c]
!28 = metadata !{i32 13, i32 1, metadata !4, null}
