; ModuleID = 'test_1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"inf=%f\0Anan=%f\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"xx=%f\0A\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"xx1=%f\0Axx2=%f\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@.str4 = private unnamed_addr constant [20 x i8] c"fptoui xx1=%f x=%u\0A\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"y = %u\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"qqq\0A\00", align 1

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
  %g = alloca i64, align 8
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
  call void @llvm.dbg.declare(metadata !{i64* %g}, metadata !42), !dbg !44
  store i64 -1, i64* %g, align 8, !dbg !45
  %5 = load i64* %g, align 8, !dbg !46
  %conv = trunc i64 %5 to i32, !dbg !46
  store i32 %conv, i32* %y, align 4, !dbg !46
  %6 = load i32* %y, align 4, !dbg !47
  %call3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 %6), !dbg !47
  %7 = load double* %xx1, align 8, !dbg !48
  %conv4 = fptoui double %7 to i32, !dbg !48
  store i32 %conv4, i32* %x, align 4, !dbg !48
  %8 = load double* %xx1, align 8, !dbg !49
  %9 = load i32* %x, align 4, !dbg !49
  %call5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str4, i32 0, i32 0), double %8, i32 %9), !dbg !49
  call void @llvm.dbg.declare(metadata !{i32* %z}, metadata !50), !dbg !51
  store i32 -1806942208, i32* %z, align 4, !dbg !52
  %10 = load double* %xx1, align 8, !dbg !53
  %conv6 = fptosi double %10 to i32, !dbg !53
  store i32 %conv6, i32* %z, align 4, !dbg !53
  %11 = load i32* %z, align 4, !dbg !54
  %rem = urem i32 %11, 2, !dbg !54
  store i32 %rem, i32* %z, align 4, !dbg !54
  %12 = load i32* %y, align 4, !dbg !55
  %neg = xor i32 %12, -1, !dbg !55
  store i32 %neg, i32* %x, align 4, !dbg !55
  %13 = load i32* %x, align 4, !dbg !56
  %sub = sub i32 %13, 2, !dbg !56
  store i32 %sub, i32* %y, align 4, !dbg !56
  %14 = load i32* %y, align 4, !dbg !57
  %call7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str5, i32 0, i32 0), i32 %14), !dbg !57
  %15 = load i32* %y, align 4, !dbg !58
  %cmp = icmp eq i32 %15, -3, !dbg !58
  %conv8 = zext i1 %cmp to i32, !dbg !58
  %16 = load i32* %x, align 4, !dbg !58
  %cmp9 = icmp eq i32 %16, -1, !dbg !58
  %conv10 = zext i1 %cmp9 to i32, !dbg !58
  %cmp11 = icmp eq i32 %conv8, %conv10, !dbg !58
  br i1 %cmp11, label %if.then, label %if.else, !dbg !58

if.then:                                          ; preds = %entry
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)), !dbg !60
  br label %if.end18, !dbg !60

if.else:                                          ; preds = %entry
  %17 = load i32* %y, align 4, !dbg !61
  %cmp14 = icmp uge i32 %17, -2147483647, !dbg !61
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !61

if.then16:                                        ; preds = %if.else
  %18 = load i32* %y, align 4, !dbg !63
  %19 = load i32* %x, align 4, !dbg !63
  %mul = mul i32 %18, %19, !dbg !63
  store i32 %mul, i32* %z, align 4, !dbg !63
  br label %if.end, !dbg !63

if.else17:                                        ; preds = %if.else
  %20 = load i32* %y, align 4, !dbg !64
  %21 = load i32* %x, align 4, !dbg !64
  %div = udiv i32 %20, %21, !dbg !64
  store i32 %div, i32* %z, align 4, !dbg !64
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then16
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  ret i32 0, !dbg !65
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!42 = metadata !{i32 786688, metadata !4, metadata !"g", metadata !5, i32 8, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 8]
!43 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!44 = metadata !{i32 8, i32 29, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!45 = metadata !{i32 8, i32 20, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!46 = metadata !{i32 8, i32 34, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!47 = metadata !{i32 8, i32 43, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!48 = metadata !{i32 8, i32 62, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!49 = metadata !{i32 8, i32 78, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!50 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 9, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 9]
!51 = metadata !{i32 9, i32 11, metadata !4, null}
!52 = metadata !{i32 9, i32 2, metadata !4, null}
!53 = metadata !{i32 9, i32 29, metadata !4, null}
!54 = metadata !{i32 9, i32 40, metadata !4, null}
!55 = metadata !{i32 9, i32 46, metadata !4, null}
!56 = metadata !{i32 12, i32 2, metadata !4, null}
!57 = metadata !{i32 13, i32 2, metadata !4, null}
!58 = metadata !{i32 14, i32 5, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/test_1.c]
!60 = metadata !{i32 16, i32 3, metadata !59, null}
!61 = metadata !{i32 17, i32 10, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !59, i32 17, i32 10, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/test_1.c]
!63 = metadata !{i32 18, i32 3, metadata !62, null}
!64 = metadata !{i32 20, i32 3, metadata !62, null}
!65 = metadata !{i32 21, i32 2, metadata !4, null}
