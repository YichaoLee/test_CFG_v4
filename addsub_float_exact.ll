; ModuleID = 'addsub_float_exact.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %cond.addr}, metadata !15), !dbg !16
  %0 = load i32* %cond.addr, align 4, !dbg !17
  %tobool = icmp ne i32 %0, 0, !dbg !17
  br i1 %tobool, label %if.end, label %if.then, !dbg !17

if.then:                                          ; preds = %entry
  br label %ERROR, !dbg !19

ERROR:                                            ; preds = %if.then
  call void (...)* @__VERIFIER_error() #3, !dbg !22
  unreachable, !dbg !22

if.end:                                           ; preds = %entry
  ret void, !dbg !24
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %r = alloca float, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{float* %x}, metadata !26), !dbg !28
  call void @llvm.dbg.declare(metadata !{float* %y}, metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata !{float* %z}, metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata !{float* %r}, metadata !33), !dbg !34
  store float 1.000000e+07, float* %x, align 4, !dbg !35
  %0 = load float* %x, align 4, !dbg !36
  %add = fadd float %0, 1.000000e+00, !dbg !36
  store float %add, float* %y, align 4, !dbg !36
  %1 = load float* %x, align 4, !dbg !37
  %sub = fsub float %1, 1.000000e+00, !dbg !37
  store float %sub, float* %z, align 4, !dbg !37
  %2 = load float* %y, align 4, !dbg !38
  %3 = load float* %z, align 4, !dbg !38
  %sub1 = fsub float %2, %3, !dbg !38
  store float %sub1, float* %r, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !39), !dbg !40
  %4 = load i32* %a, align 4, !dbg !41
  %conv = sitofp i32 %4 to float, !dbg !41
  %cmp = fcmp une float %conv, 2.000000e+00, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %entry
  %5 = load float* %r, align 4, !dbg !43
  %cmp3 = fcmp oeq float %5, 2.000000e+00, !dbg !43
  %conv4 = zext i1 %cmp3 to i32, !dbg !43
  call void @__VERIFIER_assert(i32 %conv4), !dbg !43
  br label %if.end, !dbg !43

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !44
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c] [DW_LANG_C99]
!1 = metadata !{metadata !"addsub_float_exact.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_assert", metadata !"__VERIFIER_assert", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @__VERIFIER_assert, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [__VERIFIER_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 6, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 7] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"cond", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 4]
!16 = metadata !{i32 4, i32 28, metadata !4, null}
!17 = metadata !{i32 4, i32 40, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 4, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!19 = metadata !{i32 4, i32 49, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !21, i32 4, i32 49, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!21 = metadata !{i32 786443, metadata !1, metadata !18, i32 4, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!22 = metadata !{i32 4, i32 58, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !21, i32 4, i32 58, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!24 = metadata !{i32 4, i32 80, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 4, i32 80, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!26 = metadata !{i32 786688, metadata !9, metadata !"x", metadata !5, i32 8, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 8]
!27 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!28 = metadata !{i32 8, i32 9, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!29 = metadata !{i32 786688, metadata !9, metadata !"y", metadata !5, i32 8, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 8]
!30 = metadata !{i32 8, i32 12, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!31 = metadata !{i32 786688, metadata !9, metadata !"z", metadata !5, i32 8, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 8]
!32 = metadata !{i32 8, i32 15, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!33 = metadata !{i32 786688, metadata !9, metadata !"r", metadata !5, i32 8, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 8]
!34 = metadata !{i32 8, i32 18, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!35 = metadata !{i32 10, i32 3, metadata !9, null}
!36 = metadata !{i32 11, i32 3, metadata !9, null}
!37 = metadata !{i32 12, i32 3, metadata !9, null}
!38 = metadata !{i32 13, i32 3, metadata !9, null}
!39 = metadata !{i32 786688, metadata !9, metadata !"a", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 14]
!40 = metadata !{i32 14, i32 7, metadata !9, null}
!41 = metadata !{i32 15, i32 6, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !9, i32 15, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/addsub_float_exact.c]
!43 = metadata !{i32 16, i32 3, metadata !42, null}
!44 = metadata !{i32 17, i32 3, metadata !9, null}
