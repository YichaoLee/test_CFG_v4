; ModuleID = 'float-zero-sum1_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.mix = type { float }

; Function Attrs: nounwind uwtable
define i32 @f00(float %a, float %b) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %sum = alloca float, align 4
  %m = alloca %union.mix, align 4
  store float %a, float* %a.addr, align 4
  call void @llvm.dbg.declare(metadata !{float* %a.addr}, metadata !16), !dbg !17
  store float %b, float* %b.addr, align 4
  call void @llvm.dbg.declare(metadata !{float* %b.addr}, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata !{float* %sum}, metadata !20), !dbg !21
  %0 = load float* %a.addr, align 4, !dbg !22
  %1 = load float* %b.addr, align 4, !dbg !22
  %add = fadd float %0, %1, !dbg !22
  store float %add, float* %sum, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata !{%union.mix* %m}, metadata !23), !dbg !31
  %2 = load float* %sum, align 4, !dbg !32
  %f = bitcast %union.mix* %m to float*, !dbg !32
  store float %2, float* %f, align 4, !dbg !32
  %i = bitcast %union.mix* %m to i32*, !dbg !33
  %3 = load i32* %i, align 4, !dbg !33
  %cmp = icmp ne i32 %3, -2147483648, !dbg !33
  br i1 %cmp, label %if.end, label %if.then, !dbg !33

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !35
  br label %if.end, !dbg !35

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @f00(float 0xC1C6B890E0000000, float 0x41C6B890E0000000), !dbg !38
  ret i32 0, !dbg !39
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float-zero-sum1_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float-zero-sum1_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f00", metadata !"f00", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (float, float)* @f00, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 9] [def] [f00]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float-zero-sum1_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 18, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [main]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8}
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!16 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 9]
!17 = metadata !{i32 9, i32 16, metadata !4, null}
!18 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554441, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 9]
!19 = metadata !{i32 9, i32 25, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 10, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 10]
!21 = metadata !{i32 10, i32 9, metadata !4, null}
!22 = metadata !{i32 10, i32 3, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 11, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 11]
!24 = metadata !{i32 786455, metadata !1, null, metadata !"mix", i32 4, i64 32, i64 32, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_union_type ] [mix] [line 4, size 32, align 32, offset 0] [def] [from ]
!25 = metadata !{metadata !26, metadata !27}
!26 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"f", i32 5, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [f] [line 5, size 32, align 32, offset 0] [from float]
!27 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"i", i32 6, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [i] [line 6, size 32, align 32, offset 0] [from uint32_t]
!28 = metadata !{i32 786454, metadata !29, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!29 = metadata !{metadata !"/usr/include/stdint.h", metadata !"/home/lich/Documents/test_CFG_v4"}
!30 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!31 = metadata !{i32 11, i32 13, metadata !4, null}
!32 = metadata !{i32 12, i32 3, metadata !4, null}
!33 = metadata !{i32 13, i32 6, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-zero-sum1_true-unreach-call.c]
!35 = metadata !{i32 13, i32 28, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 13, i32 28, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-zero-sum1_true-unreach-call.c]
!37 = metadata !{i32 15, i32 3, metadata !4, null}
!38 = metadata !{i32 21, i32 3, metadata !10, null}
!39 = metadata !{i32 22, i32 3, metadata !10, null}
