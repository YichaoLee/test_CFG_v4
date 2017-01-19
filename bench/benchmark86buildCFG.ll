; ModuleID = 'bench/benchmark86buildCFG.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Fuck!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @abort1() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str, i32 0, i32 0)), !dbg !18
  ret void, !dbg !19
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @test(i32 %x, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !20), !dbg !21
  store i32 %y, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !22), !dbg !21
  %3 = load i32* %1, align 4, !dbg !23
  %4 = load i32* %1, align 4, !dbg !23
  %5 = mul nsw i32 %3, %4, !dbg !23
  %6 = load i32* %1, align 4, !dbg !23
  %7 = mul nsw i32 %5, %6, !dbg !23
  %8 = icmp sgt i32 %7, 0, !dbg !23
  br i1 %8, label %9, label %17, !dbg !23

; <label>:9                                       ; preds = %0
  %10 = load i32* %1, align 4, !dbg !25
  %11 = icmp sgt i32 %10, 0, !dbg !25
  br i1 %11, label %12, label %16, !dbg !25

; <label>:12                                      ; preds = %9
  %13 = load i32* %2, align 4, !dbg !25
  %14 = icmp eq i32 %13, 10, !dbg !25
  br i1 %14, label %15, label %16, !dbg !25

; <label>:15                                      ; preds = %12
  call void @abort1(), !dbg !28
  br label %16, !dbg !28

; <label>:16                                      ; preds = %15, %12, %9
  br label %25, !dbg !29

; <label>:17                                      ; preds = %0
  %18 = load i32* %1, align 4, !dbg !30
  %19 = icmp sgt i32 %18, 0, !dbg !30
  br i1 %19, label %20, label %24, !dbg !30

; <label>:20                                      ; preds = %17
  %21 = load i32* %2, align 4, !dbg !30
  %22 = icmp eq i32 %21, 20, !dbg !30
  br i1 %22, label %23, label %24, !dbg !30

; <label>:23                                      ; preds = %20
  call void @abort1(), !dbg !33
  br label %24, !dbg !33

; <label>:24                                      ; preds = %23, %20, %17
  br label %25

; <label>:25                                      ; preds = %24, %16
  ret void, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  call void @test(i32 2, i32 10), !dbg !35
  ret i32 0, !dbg !36
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""}
!1 = metadata !{metadata !"bench/benchmark86.c", metadata !"/home/cfg/Documents/test_CFG_v3"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"abort1", metadata !"abort1", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @abort1, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [abort1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/cfg/Documents/test_CFG_v3/bench/benchmark86.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test", metadata !"test", metadata !"", i32 15, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @test, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [test]
!9 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{null, metadata !11, metadata !11}
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 29, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !11}
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"Ubuntu clang version 3.5-1ubuntu1 (trunk) (based on LLVM 3.5)"}
!18 = metadata !{i32 12, i32 0, metadata !4, null}
!19 = metadata !{i32 13, i32 0, metadata !4, null}
!20 = metadata !{i32 786689, metadata !8, metadata !"x", metadata !5, i32 16777231, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 15]
!21 = metadata !{i32 15, i32 0, metadata !8, null}
!22 = metadata !{i32 786689, metadata !8, metadata !"y", metadata !5, i32 33554447, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 15]
!23 = metadata !{i32 16, i32 0, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !8, i32 16, i32 0, i32 0}
!25 = metadata !{i32 17, i32 0, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !27, i32 17, i32 0, i32 2}
!27 = metadata !{i32 786443, metadata !1, metadata !24, i32 16, i32 0, i32 1}
!28 = metadata !{i32 18, i32 0, metadata !26, null}
!29 = metadata !{i32 19, i32 0, metadata !27, null}
!30 = metadata !{i32 20, i32 0, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !32, i32 20, i32 0, i32 4}
!32 = metadata !{i32 786443, metadata !1, metadata !24, i32 19, i32 0, i32 3}
!33 = metadata !{i32 21, i32 0, metadata !31, null}
!34 = metadata !{i32 23, i32 0, metadata !8, null}
!35 = metadata !{i32 31, i32 0, metadata !12, null}
!36 = metadata !{i32 32, i32 0, metadata !12, null}
