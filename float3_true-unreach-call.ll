; ModuleID = 'float3_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @f1() #0 {
entry:
  store double 1.000000e+00, double* @d, align 8, !dbg !18
  ret void, !dbg !19
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !20), !dbg !21
  store i32 2, i32* %x, align 4, !dbg !22
  %call = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !23
  %tobool = icmp ne i32 %call, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.end, !dbg !23

if.then:                                          ; preds = %entry
  store i32 4, i32* %x, align 4, !dbg !25
  br label %if.end, !dbg !25

if.end:                                           ; preds = %if.then, %entry
  call void @f1(), !dbg !26
  %0 = load i32* %x, align 4, !dbg !27
  %cmp = icmp eq i32 %0, 2, !dbg !27
  %conv = zext i1 %cmp to i32, !dbg !27
  %conv1 = sitofp i32 %conv to double, !dbg !27
  %1 = load double* @d, align 8, !dbg !27
  %add = fadd double %1, %conv1, !dbg !27
  store double %add, double* @d, align 8, !dbg !27
  %2 = load i32* %x, align 4, !dbg !28
  %cmp2 = icmp sgt i32 %2, 3, !dbg !28
  %conv3 = zext i1 %cmp2 to i32, !dbg !28
  %conv4 = sitofp i32 %conv3 to double, !dbg !28
  %3 = load double* @d, align 8, !dbg !28
  %add5 = fadd double %3, %conv4, !dbg !28
  store double %add5, double* @d, align 8, !dbg !28
  %4 = load double* @d, align 8, !dbg !29
  %cmp6 = fcmp oeq double %4, 2.000000e+00, !dbg !29
  br i1 %cmp6, label %if.end9, label %if.then8, !dbg !29

if.then8:                                         ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !31
  br label %if.end9, !dbg !31

if.end9:                                          ; preds = %if.then8, %if.end
  %5 = load i32* %retval, !dbg !33
  ret i32 %5, !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int(...) #2

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float3_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float3_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f1", metadata !"f1", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @f1, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 7] [f1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float3_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 11, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [main]
!9 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786484, i32 0, null, metadata !"d", metadata !"d", metadata !"", metadata !5, i32 4, metadata !14, i32 0, i32 1, double* @d, null} ; [ DW_TAG_variable ] [d] [line 4] [def]
!14 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!18 = metadata !{i32 8, i32 3, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!19 = metadata !{i32 9, i32 1, metadata !4, null}
!20 = metadata !{i32 786688, metadata !8, metadata !"x", metadata !5, i32 13, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 13]
!21 = metadata !{i32 13, i32 7, metadata !8, null}
!22 = metadata !{i32 13, i32 3, metadata !8, null}
!23 = metadata !{i32 15, i32 6, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !8, i32 15, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float3_true-unreach-call.c]
!25 = metadata !{i32 16, i32 5, metadata !24, null}
!26 = metadata !{i32 18, i32 10, metadata !8, null}
!27 = metadata !{i32 20, i32 3, metadata !8, null}
!28 = metadata !{i32 22, i32 3, metadata !8, null}
!29 = metadata !{i32 24, i32 6, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !8, i32 24, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float3_true-unreach-call.c]
!31 = metadata !{i32 24, i32 19, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 24, i32 19, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float3_true-unreach-call.c]
!33 = metadata !{i32 25, i32 1, metadata !8, null}
