; ModuleID = 'newton_3_7_false-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define float @f(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata !{float* %x.addr}, metadata !17), !dbg !18
  %0 = load float* %x.addr, align 4, !dbg !19
  %1 = load float* %x.addr, align 4, !dbg !19
  %2 = load float* %x.addr, align 4, !dbg !19
  %mul = fmul float %1, %2, !dbg !19
  %3 = load float* %x.addr, align 4, !dbg !19
  %mul1 = fmul float %mul, %3, !dbg !19
  %div = fdiv float %mul1, 6.000000e+00, !dbg !19
  %sub = fsub float %0, %div, !dbg !19
  %4 = load float* %x.addr, align 4, !dbg !19
  %5 = load float* %x.addr, align 4, !dbg !19
  %mul2 = fmul float %4, %5, !dbg !19
  %6 = load float* %x.addr, align 4, !dbg !19
  %mul3 = fmul float %mul2, %6, !dbg !19
  %7 = load float* %x.addr, align 4, !dbg !19
  %mul4 = fmul float %mul3, %7, !dbg !19
  %8 = load float* %x.addr, align 4, !dbg !19
  %mul5 = fmul float %mul4, %8, !dbg !19
  %div6 = fdiv float %mul5, 1.200000e+02, !dbg !19
  %add = fadd float %sub, %div6, !dbg !19
  %9 = load float* %x.addr, align 4, !dbg !19
  %10 = load float* %x.addr, align 4, !dbg !19
  %mul7 = fmul float %9, %10, !dbg !19
  %11 = load float* %x.addr, align 4, !dbg !19
  %mul8 = fmul float %mul7, %11, !dbg !19
  %12 = load float* %x.addr, align 4, !dbg !19
  %mul9 = fmul float %mul8, %12, !dbg !19
  %13 = load float* %x.addr, align 4, !dbg !19
  %mul10 = fmul float %mul9, %13, !dbg !19
  %14 = load float* %x.addr, align 4, !dbg !19
  %mul11 = fmul float %mul10, %14, !dbg !19
  %15 = load float* %x.addr, align 4, !dbg !19
  %mul12 = fmul float %mul11, %15, !dbg !19
  %div13 = fdiv float %mul12, 5.040000e+03, !dbg !19
  %add14 = fadd float %add, %div13, !dbg !19
  ret float %add14, !dbg !19
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define float @fp(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  call void @llvm.dbg.declare(metadata !{float* %x.addr}, metadata !20), !dbg !21
  %0 = load float* %x.addr, align 4, !dbg !22
  %1 = load float* %x.addr, align 4, !dbg !22
  %mul = fmul float %0, %1, !dbg !22
  %div = fdiv float %mul, 2.000000e+00, !dbg !22
  %sub = fsub float 1.000000e+00, %div, !dbg !22
  %2 = load float* %x.addr, align 4, !dbg !22
  %3 = load float* %x.addr, align 4, !dbg !22
  %mul1 = fmul float %2, %3, !dbg !22
  %4 = load float* %x.addr, align 4, !dbg !22
  %mul2 = fmul float %mul1, %4, !dbg !22
  %5 = load float* %x.addr, align 4, !dbg !22
  %mul3 = fmul float %mul2, %5, !dbg !22
  %div4 = fdiv float %mul3, 2.400000e+01, !dbg !22
  %add = fadd float %sub, %div4, !dbg !22
  %6 = load float* %x.addr, align 4, !dbg !22
  %7 = load float* %x.addr, align 4, !dbg !22
  %mul5 = fmul float %6, %7, !dbg !22
  %8 = load float* %x.addr, align 4, !dbg !22
  %mul6 = fmul float %mul5, %8, !dbg !22
  %9 = load float* %x.addr, align 4, !dbg !22
  %mul7 = fmul float %mul6, %9, !dbg !22
  %10 = load float* %x.addr, align 4, !dbg !22
  %mul8 = fmul float %mul7, %10, !dbg !22
  %11 = load float* %x.addr, align 4, !dbg !22
  %mul9 = fmul float %mul8, %11, !dbg !22
  %div10 = fdiv float %mul9, 7.200000e+02, !dbg !22
  %add11 = fadd float %add, %div10, !dbg !22
  ret float %add11, !dbg !22
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %IN = alloca float, align 4
  %x = alloca float, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{float* %IN}, metadata !23), !dbg !24
  %0 = load float* %IN, align 4, !dbg !25
  %cmp = fcmp ogt float %0, 0xBFF6666660000000, !dbg !25
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !25

land.rhs:                                         ; preds = %entry
  %1 = load float* %IN, align 4, !dbg !26
  %cmp1 = fcmp olt float %1, 0x3FF6666660000000, !dbg !26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32, !dbg !28
  call void @__VERIFIER_assume(i32 %land.ext), !dbg !28
  call void @llvm.dbg.declare(metadata !{float* %x}, metadata !30), !dbg !31
  %3 = load float* %IN, align 4, !dbg !32
  %4 = load float* %IN, align 4, !dbg !33
  %call = call float @f(float %4), !dbg !33
  %5 = load float* %IN, align 4, !dbg !34
  %call2 = call float @fp(float %5), !dbg !34
  %div = fdiv float %call, %call2, !dbg !34
  %sub = fsub float %3, %div, !dbg !34
  store float %sub, float* %x, align 4, !dbg !34
  %6 = load float* %x, align 4, !dbg !35
  %7 = load float* %x, align 4, !dbg !36
  %call3 = call float @f(float %7), !dbg !36
  %8 = load float* %x, align 4, !dbg !37
  %call4 = call float @fp(float %8), !dbg !37
  %div5 = fdiv float %call3, %call4, !dbg !37
  %sub6 = fsub float %6, %div5, !dbg !37
  store float %sub6, float* %x, align 4, !dbg !37
  %9 = load float* %x, align 4, !dbg !38
  %10 = load float* %x, align 4, !dbg !39
  %call7 = call float @f(float %10), !dbg !39
  %11 = load float* %x, align 4, !dbg !40
  %call8 = call float @fp(float %11), !dbg !40
  %div9 = fdiv float %call7, %call8, !dbg !40
  %sub10 = fsub float %9, %div9, !dbg !40
  store float %sub10, float* %x, align 4, !dbg !40
  %12 = load float* %x, align 4, !dbg !41
  %conv = fpext float %12 to double, !dbg !41
  %cmp11 = fcmp olt double %conv, 1.000000e-01, !dbg !41
  br i1 %cmp11, label %if.end, label %if.then, !dbg !41

if.then:                                          ; preds = %land.end
  call void @__VERIFIER_error(), !dbg !43
  br label %if.end, !dbg !43

if.end:                                           ; preds = %if.then, %land.end
  ret i32 0, !dbg !44
}

declare void @__VERIFIER_assume(i32) #2

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/newton_3_7_false-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"newton_3_7_false-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float)* @f, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [f]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/newton_3_7_false-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fp", metadata !"fp", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (float)* @fp, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [fp]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 40, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [main]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!15 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!16 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!17 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777246, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 30]
!18 = metadata !{i32 30, i32 15, metadata !4, null}
!19 = metadata !{i32 32, i32 3, metadata !4, null}
!20 = metadata !{i32 786689, metadata !9, metadata !"x", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 35]
!21 = metadata !{i32 35, i32 16, metadata !9, null}
!22 = metadata !{i32 37, i32 3, metadata !9, null}
!23 = metadata !{i32 786688, metadata !10, metadata !"IN", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [IN] [line 42]
!24 = metadata !{i32 42, i32 9, metadata !10, null}
!25 = metadata !{i32 43, i32 3, metadata !10, null}
!26 = metadata !{i32 43, i32 3, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !10, i32 43, i32 3, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/newton_3_7_false-unreach-call.c]
!28 = metadata !{i32 43, i32 3, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !10, i32 43, i32 3, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/newton_3_7_false-unreach-call.c]
!30 = metadata !{i32 786688, metadata !10, metadata !"x", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 45]
!31 = metadata !{i32 45, i32 9, metadata !10, null}
!32 = metadata !{i32 45, i32 3, metadata !10, null}
!33 = metadata !{i32 45, i32 18, metadata !10, null}
!34 = metadata !{i32 45, i32 24, metadata !10, null}
!35 = metadata !{i32 47, i32 3, metadata !10, null}
!36 = metadata !{i32 47, i32 11, metadata !10, null}
!37 = metadata !{i32 47, i32 16, metadata !10, null}
!38 = metadata !{i32 49, i32 3, metadata !10, null}
!39 = metadata !{i32 49, i32 11, metadata !10, null}
!40 = metadata !{i32 49, i32 16, metadata !10, null}
!41 = metadata !{i32 53, i32 6, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !10, i32 53, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/newton_3_7_false-unreach-call.c]
!43 = metadata !{i32 54, i32 5, metadata !42, null}
!44 = metadata !{i32 56, i32 3, metadata !10, null}
