; ModuleID = 'bench/benchmark87buildCFG.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Solved early commitment\00", align 1
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @commitEarly(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !15), !dbg !16
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !17), !dbg !16
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !18), !dbg !19
  %3 = load i32* %1, align 4, !dbg !19
  %4 = load i32* %2, align 4, !dbg !19
  %5 = mul nsw i32 %3, %4, !dbg !19
  store i32 %5, i32* %c, align 4, !dbg !19
  %6 = load i32* %2, align 4, !dbg !20
  %7 = icmp sgt i32 %6, 2, !dbg !20
  br i1 %7, label %8, label %14, !dbg !20

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4, !dbg !20
  %10 = load i32* %c, align 4, !dbg !20
  %11 = icmp eq i32 %9, %10, !dbg !20
  br i1 %11, label %12, label %14, !dbg !20

; <label>:12                                      ; preds = %8
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i32 0, i32 0)), !dbg !22
  br label %14, !dbg !24

; <label>:14                                      ; preds = %12, %8, %0
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !26), !dbg !27
  store i32 1, i32* %a, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !28), !dbg !27
  store i32 3, i32* %b, align 4, !dbg !27
  %2 = load i32* %a, align 4, !dbg !29
  %3 = load i32* %b, align 4, !dbg !29
  call void @commitEarly(i32 %2, i32 %3), !dbg !29
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !30
  ret i32 0, !dbg !31
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""}
!1 = metadata !{metadata !"bench/benchmark87.c", metadata !"/home/cfg/Documents/test_CFG_v3"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"commitEarly", metadata !"commitEarly", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @commitEarly, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 9] [def] [commitEarly]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/cfg/Documents/test_CFG_v3/bench/benchmark87.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777225, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 9]
!16 = metadata !{i32 9, i32 0, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554441, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 9]
!18 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 10, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 10]
!19 = metadata !{i32 10, i32 0, metadata !4, null}
!20 = metadata !{i32 11, i32 0, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 0, i32 0}
!22 = metadata !{i32 12, i32 0, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !21, i32 11, i32 0, i32 1}
!24 = metadata !{i32 13, i32 0, metadata !23, null}
!25 = metadata !{i32 14, i32 0, metadata !4, null}
!26 = metadata !{i32 786688, metadata !9, metadata !"a", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 21]
!27 = metadata !{i32 21, i32 0, metadata !9, null}
!28 = metadata !{i32 786688, metadata !9, metadata !"b", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 21]
!29 = metadata !{i32 22, i32 0, metadata !9, null}
!30 = metadata !{i32 23, i32 0, metadata !9, null}
!31 = metadata !{i32 24, i32 0, metadata !9, null}
