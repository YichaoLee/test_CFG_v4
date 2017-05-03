; ModuleID = 'float-rounding1_true-unreach-callbuildCFG.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @roundingTest(float %f1, float %f2) #0 {
entry:
  %f1.addr = alloca float, align 4
  %f2.addr = alloca float, align 4
  %roundToNearestSum = alloca float, align 4
  %roundDownSum = alloca float, align 4
  store float %f1, float* %f1.addr, align 4
  call void @llvm.dbg.declare(metadata !{float* %f1.addr}, metadata !16), !dbg !17
  store float %f2, float* %f2.addr, align 4
  call void @llvm.dbg.declare(metadata !{float* %f2.addr}, metadata !18), !dbg !19
  %call = call i32 @fesetround(i32 3072) #4, !dbg !20
  %call1 = call i32 @fesetround(i32 2048) #4, !dbg !21
  %call2 = call i32 @fesetround(i32 0) #4, !dbg !22
  call void @llvm.dbg.declare(metadata !{float* %roundToNearestSum}, metadata !23), !dbg !24
  %0 = load float* %f1.addr, align 4, !dbg !25
  %1 = load float* %f2.addr, align 4, !dbg !25
  %add = fadd float %0, %1, !dbg !25
  store float %add, float* %roundToNearestSum, align 4, !dbg !25
  %2 = load float* %roundToNearestSum, align 4, !dbg !26
  %cmp = fcmp oeq float %2, 0x3FF0000020000000, !dbg !26
  br i1 %cmp, label %if.end, label %if.then, !dbg !26

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !28
  br label %if.end, !dbg !28

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @fesetround(i32 1024) #4, !dbg !30
  call void @llvm.dbg.declare(metadata !{float* %roundDownSum}, metadata !31), !dbg !32
  %3 = load float* %f1.addr, align 4, !dbg !33
  %4 = load float* %f2.addr, align 4, !dbg !33
  %add4 = fadd float %3, %4, !dbg !33
  store float %add4, float* %roundDownSum, align 4, !dbg !33
  %5 = load float* %roundDownSum, align 4, !dbg !34
  %cmp5 = fcmp oeq float %5, 1.000000e+00, !dbg !34
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !34

if.then6:                                         ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !36
  br label %if.end7, !dbg !36

if.end7:                                          ; preds = %if.then6, %if.end
  ret void, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @fesetround(i32) #2

declare void @__VERIFIER_error() #3

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  %f3 = alloca float, align 4
  %f4 = alloca float, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{float* %f1}, metadata !39), !dbg !40
  store float 1.000000e+00, float* %f1, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata !{float* %f2}, metadata !42), !dbg !43
  store float 0x3E78000000000000, float* %f2, align 4, !dbg !44
  %0 = load float* %f1, align 4, !dbg !45
  %1 = load float* %f2, align 4, !dbg !45
  call void @roundingTest(float %0, float %1), !dbg !45
  call void @llvm.dbg.declare(metadata !{float* %f3}, metadata !46), !dbg !47
  %call = call float (...)* @__VERIFIER_nondet_float(), !dbg !48
  store float %call, float* %f3, align 4, !dbg !48
  call void @llvm.dbg.declare(metadata !{float* %f4}, metadata !49), !dbg !50
  %call1 = call float (...)* @__VERIFIER_nondet_float(), !dbg !51
  store float %call1, float* %f4, align 4, !dbg !51
  %2 = load float* %f3, align 4, !dbg !52
  %cmp = fcmp olt float 0x3FEFFFFFE0000000, %2, !dbg !52
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !52

land.rhs:                                         ; preds = %entry
  %3 = load float* %f3, align 4, !dbg !53
  %cmp2 = fcmp olt float %3, 0x3FF0000020000000, !dbg !53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %4 to i32, !dbg !55
  call void @__VERIFIER_assume(i32 %land.ext), !dbg !55
  %5 = load float* %f4, align 4, !dbg !57
  %cmp3 = fcmp olt float 0x3E77FFFFE0000000, %5, !dbg !57
  br i1 %cmp3, label %land.rhs4, label %land.end6, !dbg !57

land.rhs4:                                        ; preds = %land.end
  %6 = load float* %f4, align 4, !dbg !58
  %cmp5 = fcmp olt float %6, 0x3E78000020000000, !dbg !58
  br label %land.end6

land.end6:                                        ; preds = %land.rhs4, %land.end
  %7 = phi i1 [ false, %land.end ], [ %cmp5, %land.rhs4 ]
  %land.ext7 = zext i1 %7 to i32, !dbg !60
  call void @__VERIFIER_assume(i32 %land.ext7), !dbg !60
  %8 = load float* %f3, align 4, !dbg !62
  %9 = load float* %f4, align 4, !dbg !62
  call void @roundingTest(float %8, float %9), !dbg !62
  ret i32 0, !dbg !63
}

declare float @__VERIFIER_nondet_float(...) #3

declare void @__VERIFIER_assume(i32) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float-rounding1_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"roundingTest", metadata !"roundingTest", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float)* @roundingTest, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [roundingTest]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 34, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!16 = metadata !{i32 786689, metadata !4, metadata !"f1", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f1] [line 13]
!17 = metadata !{i32 13, i32 26, metadata !4, null}
!18 = metadata !{i32 786689, metadata !4, metadata !"f2", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f2] [line 13]
!19 = metadata !{i32 13, i32 36, metadata !4, null}
!20 = metadata !{i32 15, i32 3, metadata !4, null}
!21 = metadata !{i32 16, i32 3, metadata !4, null}
!22 = metadata !{i32 17, i32 3, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"roundToNearestSum", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [roundToNearestSum] [line 20]
!24 = metadata !{i32 20, i32 9, metadata !4, null}
!25 = metadata !{i32 20, i32 3, metadata !4, null}
!26 = metadata !{i32 21, i32 6, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!28 = metadata !{i32 21, i32 46, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !27, i32 21, i32 46, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!30 = metadata !{i32 24, i32 3, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"roundDownSum", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [roundDownSum] [line 27]
!32 = metadata !{i32 27, i32 9, metadata !4, null}
!33 = metadata !{i32 27, i32 3, metadata !4, null}
!34 = metadata !{i32 28, i32 6, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!36 = metadata !{i32 28, i32 36, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !35, i32 28, i32 36, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!38 = metadata !{i32 30, i32 3, metadata !4, null}
!39 = metadata !{i32 786688, metadata !9, metadata !"f1", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 37]
!40 = metadata !{i32 37, i32 9, metadata !9, null}
!41 = metadata !{i32 37, i32 3, metadata !9, null}
!42 = metadata !{i32 786688, metadata !9, metadata !"f2", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 38]
!43 = metadata !{i32 38, i32 9, metadata !9, null}
!44 = metadata !{i32 38, i32 3, metadata !9, null}
!45 = metadata !{i32 41, i32 3, metadata !9, null}
!46 = metadata !{i32 786688, metadata !9, metadata !"f3", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f3] [line 44]
!47 = metadata !{i32 44, i32 9, metadata !9, null}
!48 = metadata !{i32 44, i32 14, metadata !9, null}
!49 = metadata !{i32 786688, metadata !9, metadata !"f4", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f4] [line 45]
!50 = metadata !{i32 45, i32 9, metadata !9, null}
!51 = metadata !{i32 45, i32 14, metadata !9, null}
!52 = metadata !{i32 47, i32 3, metadata !9, null}
!53 = metadata !{i32 47, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !9, i32 47, i32 3, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!55 = metadata !{i32 47, i32 3, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !9, i32 47, i32 3, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!57 = metadata !{i32 48, i32 3, metadata !9, null}
!58 = metadata !{i32 48, i32 3, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !9, i32 48, i32 3, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!60 = metadata !{i32 48, i32 3, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !9, i32 48, i32 3, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-rounding1_true-unreach-call.c]
!62 = metadata !{i32 50, i32 3, metadata !9, null}
!63 = metadata !{i32 53, i32 3, metadata !9, null}
