; ModuleID = 'float13_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plus_infinity = constant float 0x7FF0000000000000, align 4
@minus_infinity = constant float 0x7FF8000000000000, align 4
@NaN = constant float 0x7FF8000000000000, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca i8, align 1
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !18), !dbg !20
  store i8 0, i8* %temp, align 1, !dbg !21
  %0 = load i8* %temp, align 1, !dbg !22
  %tobool = trunc i8 %0 to i1, !dbg !22
  br i1 %tobool, label %if.then, label %if.end, !dbg !22

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !24
  br label %if.end, !dbg !24

if.end:                                           ; preds = %if.then, %entry
  store i8 0, i8* %temp, align 1, !dbg !26
  %1 = load i8* %temp, align 1, !dbg !27
  %tobool1 = trunc i8 %1 to i1, !dbg !27
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !27

if.then2:                                         ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !29
  br label %if.end3, !dbg !29

if.end3:                                          ; preds = %if.then2, %if.end
  store i8 0, i8* %temp, align 1, !dbg !31
  %2 = load i8* %temp, align 1, !dbg !32
  %tobool4 = trunc i8 %2 to i1, !dbg !32
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !32

if.then5:                                         ; preds = %if.end3
  call void @__VERIFIER_error(), !dbg !34
  br label %if.end6, !dbg !34

if.end6:                                          ; preds = %if.then5, %if.end3
  store i8 0, i8* %temp, align 1, !dbg !36
  %3 = load i8* %temp, align 1, !dbg !37
  %tobool7 = trunc i8 %3 to i1, !dbg !37
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !37

if.then8:                                         ; preds = %if.end6
  call void @__VERIFIER_error(), !dbg !39
  br label %if.end9, !dbg !39

if.end9:                                          ; preds = %if.then8, %if.end6
  store i8 0, i8* %temp, align 1, !dbg !41
  %4 = load i8* %temp, align 1, !dbg !42
  %tobool10 = trunc i8 %4 to i1, !dbg !42
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !42

if.then11:                                        ; preds = %if.end9
  call void @__VERIFIER_error(), !dbg !44
  br label %if.end12, !dbg !44

if.end12:                                         ; preds = %if.then11, %if.end9
  store i8 0, i8* %temp, align 1, !dbg !46
  %5 = load i8* %temp, align 1, !dbg !47
  %tobool13 = trunc i8 %5 to i1, !dbg !47
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !47

if.then14:                                        ; preds = %if.end12
  call void @__VERIFIER_error(), !dbg !49
  br label %if.end15, !dbg !49

if.end15:                                         ; preds = %if.then14, %if.end12
  store i8 0, i8* %temp, align 1, !dbg !51
  %6 = load i8* %temp, align 1, !dbg !52
  %tobool16 = trunc i8 %6 to i1, !dbg !52
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !52

if.then17:                                        ; preds = %if.end15
  call void @__VERIFIER_error(), !dbg !54
  br label %if.end18, !dbg !54

if.end18:                                         ; preds = %if.then17, %if.end15
  store i8 0, i8* %temp, align 1, !dbg !56
  %7 = load i8* %temp, align 1, !dbg !57
  %tobool19 = trunc i8 %7 to i1, !dbg !57
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !57

if.then20:                                        ; preds = %if.end18
  call void @__VERIFIER_error(), !dbg !59
  br label %if.end21, !dbg !59

if.end21:                                         ; preds = %if.then20, %if.end18
  ret i32 0, !dbg !61
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !9, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float13_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 7] [def] [scope 8] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !13, metadata !14}
!10 = metadata !{i32 786484, i32 0, null, metadata !"plus_infinity", metadata !"plus_infinity", metadata !"", metadata !5, i32 3, metadata !11, i32 0, i32 1, float* @plus_infinity, null} ; [ DW_TAG_variable ] [plus_infinity] [line 3] [def]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from float]
!12 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786484, i32 0, null, metadata !"minus_infinity", metadata !"minus_infinity", metadata !"", metadata !5, i32 4, metadata !11, i32 0, i32 1, float* @minus_infinity, null} ; [ DW_TAG_variable ] [minus_infinity] [line 4] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"NaN", metadata !"NaN", metadata !"", metadata !5, i32 5, metadata !11, i32 0, i32 1, float* @NaN, null} ; [ DW_TAG_variable ] [NaN] [line 5] [def]
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!18 = metadata !{i32 786688, metadata !4, metadata !"temp", metadata !5, i32 9, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 9]
!19 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!20 = metadata !{i32 9, i32 9, metadata !4, null}
!21 = metadata !{i32 12, i32 3, metadata !4, null}
!22 = metadata !{i32 13, i32 6, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!24 = metadata !{i32 13, i32 16, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !23, i32 13, i32 16, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!26 = metadata !{i32 15, i32 3, metadata !4, null}
!27 = metadata !{i32 16, i32 6, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!29 = metadata !{i32 16, i32 16, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 16, i32 16, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!31 = metadata !{i32 18, i32 3, metadata !4, null}
!32 = metadata !{i32 19, i32 6, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!34 = metadata !{i32 19, i32 16, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 19, i32 16, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!36 = metadata !{i32 21, i32 3, metadata !4, null}
!37 = metadata !{i32 22, i32 6, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!39 = metadata !{i32 22, i32 16, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !38, i32 22, i32 16, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!41 = metadata !{i32 24, i32 3, metadata !4, null}
!42 = metadata !{i32 25, i32 6, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!44 = metadata !{i32 25, i32 16, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !43, i32 25, i32 16, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!46 = metadata !{i32 27, i32 3, metadata !4, null}
!47 = metadata !{i32 28, i32 6, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 6, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!49 = metadata !{i32 28, i32 16, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !48, i32 28, i32 16, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!51 = metadata !{i32 30, i32 3, metadata !4, null}
!52 = metadata !{i32 31, i32 6, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!54 = metadata !{i32 31, i32 16, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 31, i32 16, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!56 = metadata !{i32 33, i32 3, metadata !4, null}
!57 = metadata !{i32 34, i32 6, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 6, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!59 = metadata !{i32 34, i32 16, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !58, i32 34, i32 16, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float13_true-unreach-call.c]
!61 = metadata !{i32 36, i32 3, metadata !4, null}
