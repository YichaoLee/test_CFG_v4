; ModuleID = 'float-no-simp7_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca float, align 4
  %g = alloca float, align 4
  %target = alloca float, align 4
  %result = alloca float, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !15), !dbg !16
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !17), !dbg !18
  call void @llvm.dbg.declare(metadata !{float* %f}, metadata !19), !dbg !21
  store float 0x39A9E0C220000000, float* %f, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata !{float* %g}, metadata !23), !dbg !24
  store float 0xBCD3C90140000000, float* %g, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata !{float* %target}, metadata !26), !dbg !27
  store float 0xB6A0000000000000, float* %target, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !29), !dbg !30
  %0 = load float* %f, align 4, !dbg !31
  %1 = load float* %g, align 4, !dbg !31
  %mul = fmul float %0, %1, !dbg !31
  store float %mul, float* %result, align 4, !dbg !31
  %2 = load float* %result, align 4, !dbg !32
  %3 = load float* %target, align 4, !dbg !32
  %cmp = fcmp oeq float %2, %3, !dbg !32
  br i1 %cmp, label %if.end, label %if.then, !dbg !32

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !34
  br label %if.end, !dbg !34

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float-no-simp7_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float-no-simp7_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 3} ; [ DW_TAG_subprogram ] [line 3] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float-no-simp7_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!11 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 3]
!16 = metadata !{i32 3, i32 15, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !5, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 3]
!18 = metadata !{i32 3, i32 28, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"f", metadata !5, i32 4, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 4]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 4, i32 9, metadata !4, null}
!22 = metadata !{i32 4, i32 3, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"g", metadata !5, i32 5, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 5]
!24 = metadata !{i32 5, i32 9, metadata !4, null}
!25 = metadata !{i32 5, i32 3, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"target", metadata !5, i32 6, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 6]
!27 = metadata !{i32 6, i32 9, metadata !4, null}
!28 = metadata !{i32 6, i32 3, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 8, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 8]
!30 = metadata !{i32 8, i32 9, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!31 = metadata !{i32 8, i32 3, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!32 = metadata !{i32 10, i32 6, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 10, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp7_true-unreach-call.c]
!34 = metadata !{i32 10, i32 27, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 10, i32 27, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp7_true-unreach-call.c]
!36 = metadata !{i32 12, i32 3, metadata !4, null}
