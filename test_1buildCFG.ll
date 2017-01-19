; ModuleID = 'test_1buildCFG.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"inf=%f\0Anan=%f\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"xx=%f\0A\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"xx1=%f\0Axx2=%f\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"y = %u\0A\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"qqq\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %inf = alloca double, align 8
  %nan = alloca double, align 8
  %xx = alloca double, align 8
  %xx1 = alloca double, align 8
  %xx2 = alloca double, align 8
  %xx3 = alloca float, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !12), !dbg !14
  store i32 -1, i32* %x, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata !{double* %inf}, metadata !16), !dbg !18
  store double 0x7FF0000000000000, double* %inf, align 8, !dbg !19
  call void @llvm.dbg.declare(metadata !{double* %nan}, metadata !20), !dbg !21
  store double 0x7FF8000000000000, double* %nan, align 8, !dbg !22
  %0 = load double* %inf, align 8, !dbg !23
  %1 = load double* %nan, align 8, !dbg !23
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), double %0, double %1), !dbg !23
  call void @llvm.dbg.declare(metadata !{double* %xx}, metadata !24), !dbg !25
  store double 0x3FBC71C71C71C71C, double* %xx, align 8, !dbg !26
  %2 = load double* %xx, align 8, !dbg !27
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), double %2), !dbg !27
  call void @llvm.dbg.declare(metadata !{double* %xx1}, metadata !28), !dbg !29
  store double 1.111111e-01, double* %xx1, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata !{double* %xx2}, metadata !31), !dbg !32
  store double 1.111110e-01, double* %xx2, align 8, !dbg !33
  %3 = load double* %xx1, align 8, !dbg !34
  %4 = load double* %xx2, align 8, !dbg !34
  %call2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0), double %3, double %4), !dbg !34
  call void @llvm.dbg.declare(metadata !{float* %xx3}, metadata !35), !dbg !37
  store float 0x3FBC71C6E0000000, float* %xx3, align 4, !dbg !38
  call void @llvm.dbg.declare(metadata !{i32* %y}, metadata !39), !dbg !40
  store i32 1, i32* %y, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata !{i32* %z}, metadata !42), !dbg !43
  store i32 -1806942208, i32* %z, align 4, !dbg !44
  %5 = load i32* %x, align 4, !dbg !45
  %sub = sub i32 %5, 2, !dbg !45
  store i32 %sub, i32* %y, align 4, !dbg !45
  %6 = load i32* %y, align 4, !dbg !46
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 %6), !dbg !46
  %7 = load i32* %y, align 4, !dbg !47
  %cmp = icmp eq i32 %7, -3, !dbg !47
  %conv = zext i1 %cmp to i32, !dbg !47
  %8 = load i32* %x, align 4, !dbg !47
  %cmp4 = icmp eq i32 %8, -1, !dbg !47
  %conv5 = zext i1 %cmp4 to i32, !dbg !47
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !47
  br i1 %cmp6, label %if.then, label %if.else, !dbg !47

if.then:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0)), !dbg !49
  br label %if.end20, !dbg !49

if.else:                                          ; preds = %entry
  %9 = load i32* %y, align 4, !dbg !50
  %cmp9 = icmp uge i32 %9, -2147483647, !dbg !50
  br i1 %cmp9, label %if.then11, label %if.else15, !dbg !50

if.then11:                                        ; preds = %if.else
  %10 = load i32* %y, align 4, !dbg !52
  %conv12 = uitofp i32 %10 to double, !dbg !52
  %call13 = call double @asin(double %conv12) #4, !dbg !52
  %conv14 = fptoui double %call13 to i32, !dbg !52
  store i32 %conv14, i32* %z, align 4, !dbg !52
  br label %if.end, !dbg !52

if.else15:                                        ; preds = %if.else
  %11 = load i32* %y, align 4, !dbg !53
  %sub16 = sub i32 0, %11, !dbg !53
  %conv17 = uitofp i32 %sub16 to double, !dbg !53
  %call18 = call double @sqrt(double %conv17) #4, !dbg !53
  %conv19 = fptoui double %call18 to i32, !dbg !53
  store i32 %conv19, i32* %z, align 4, !dbg !53
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then11
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  ret i32 0, !dbg !54
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @asin(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/test_1.c] [DW_LANG_C99]
!1 = metadata !{metadata !"test_1.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/test_1.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 6, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 6]
!13 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!14 = metadata !{i32 6, i32 11, metadata !4, null}
!15 = metadata !{i32 6, i32 2, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"inf", metadata !5, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inf] [line 6]
!17 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!18 = metadata !{i32 6, i32 23, metadata !4, null}
!19 = metadata !{i32 6, i32 16, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"nan", metadata !5, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nan] [line 6]
!21 = metadata !{i32 6, i32 44, metadata !4, null}
!22 = metadata !{i32 6, i32 37, metadata !4, null}
!23 = metadata !{i32 6, i32 57, metadata !4, null}
!24 = metadata !{i32 786688, metadata !4, metadata !"xx", metadata !5, i32 6, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx] [line 6]
!25 = metadata !{i32 6, i32 99, metadata !4, null}
!26 = metadata !{i32 6, i32 92, metadata !4, null}
!27 = metadata !{i32 6, i32 158, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"xx1", metadata !5, i32 7, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx1] [line 7]
!29 = metadata !{i32 7, i32 9, metadata !4, null}
!30 = metadata !{i32 7, i32 2, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"xx2", metadata !5, i32 7, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx2] [line 7]
!32 = metadata !{i32 7, i32 35, metadata !4, null}
!33 = metadata !{i32 7, i32 28, metadata !4, null}
!34 = metadata !{i32 7, i32 50, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"xx3", metadata !5, i32 7, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xx3] [line 7]
!36 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 7, i32 91, metadata !4, null}
!38 = metadata !{i32 7, i32 85, metadata !4, null}
!39 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 8, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 8]
!40 = metadata !{i32 8, i32 11, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!41 = metadata !{i32 8, i32 2, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!42 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 9, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 9]
!43 = metadata !{i32 9, i32 11, metadata !4, null}
!44 = metadata !{i32 9, i32 2, metadata !4, null}
!45 = metadata !{i32 10, i32 2, metadata !4, null}
!46 = metadata !{i32 11, i32 2, metadata !4, null}
!47 = metadata !{i32 12, i32 5, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/test_1.c]
!49 = metadata !{i32 14, i32 3, metadata !48, null}
!50 = metadata !{i32 15, i32 10, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !48, i32 15, i32 10, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/test_1.c]
!52 = metadata !{i32 16, i32 5, metadata !51, null}
!53 = metadata !{i32 18, i32 5, metadata !51, null}
!54 = metadata !{i32 19, i32 2, metadata !4, null}
