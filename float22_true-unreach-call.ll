; ModuleID = 'float22_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union._ieee754_float = type { %struct._components }
%struct._components = type { i32 }

; Function Attrs: nounwind uwtable
define float @returnsField(i32 %index) #0 {
entry:
  %index.addr = alloca i32, align 4
  %c = alloca %union._ieee754_float, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %index.addr}, metadata !38), !dbg !39
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %c}, metadata !40), !dbg !41
  %0 = load i32* %index.addr, align 4, !dbg !42
  %and = and i32 %0, 1, !dbg !42
  %ieee = bitcast %union._ieee754_float* %c to %struct._components*, !dbg !42
  %1 = bitcast %struct._components* %ieee to i32*, !dbg !42
  %bf.load = load i32* %1, align 4, !dbg !42
  %bf.value = and i32 %and, 1, !dbg !42
  %bf.clear = and i32 %bf.load, -2, !dbg !42
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !42
  store i32 %bf.set, i32* %1, align 4, !dbg !42
  %ieee1 = bitcast %union._ieee754_float* %c to %struct._components*, !dbg !43
  %2 = bitcast %struct._components* %ieee1 to i32*, !dbg !43
  %bf.load2 = load i32* %2, align 4, !dbg !43
  %bf.clear3 = and i32 %bf.load2, -511, !dbg !43
  store i32 %bf.clear3, i32* %2, align 4, !dbg !43
  %ieee4 = bitcast %union._ieee754_float* %c to %struct._components*, !dbg !44
  %3 = bitcast %struct._components* %ieee4 to i32*, !dbg !44
  %bf.load5 = load i32* %3, align 4, !dbg !44
  %bf.clear6 = and i32 %bf.load5, 511, !dbg !44
  store i32 %bf.clear6, i32* %3, align 4, !dbg !44
  %f = bitcast %union._ieee754_float* %c to float*, !dbg !45
  %4 = load float* %f, align 4, !dbg !45
  ret float %4, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @returnsStructure(i32 %index) #0 {
entry:
  %retval = alloca %union._ieee754_float, align 4
  %index.addr = alloca i32, align 4
  %c = alloca %union._ieee754_float, align 4
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %index.addr}, metadata !46), !dbg !47
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %c}, metadata !48), !dbg !49
  %0 = load i32* %index.addr, align 4, !dbg !50
  %and = and i32 %0, 1, !dbg !50
  %ieee = bitcast %union._ieee754_float* %c to %struct._components*, !dbg !50
  %1 = bitcast %struct._components* %ieee to i32*, !dbg !50
  %bf.load = load i32* %1, align 4, !dbg !50
  %bf.value = and i32 %and, 1, !dbg !50
  %bf.clear = and i32 %bf.load, -2, !dbg !50
  %bf.set = or i32 %bf.clear, %bf.value, !dbg !50
  store i32 %bf.set, i32* %1, align 4, !dbg !50
  %ieee1 = bitcast %union._ieee754_float* %c to %struct._components*, !dbg !51
  %2 = bitcast %struct._components* %ieee1 to i32*, !dbg !51
  %bf.load2 = load i32* %2, align 4, !dbg !51
  %bf.clear3 = and i32 %bf.load2, -511, !dbg !51
  store i32 %bf.clear3, i32* %2, align 4, !dbg !51
  %ieee4 = bitcast %union._ieee754_float* %c to %struct._components*, !dbg !52
  %3 = bitcast %struct._components* %ieee4 to i32*, !dbg !52
  %bf.load5 = load i32* %3, align 4, !dbg !52
  %bf.clear6 = and i32 %bf.load5, 511, !dbg !52
  store i32 %bf.clear6, i32* %3, align 4, !dbg !52
  %4 = bitcast %union._ieee754_float* %retval to i8*, !dbg !53
  %5 = bitcast %union._ieee754_float* %c to i8*, !dbg !53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 4, i32 4, i1 false), !dbg !53
  %coerce.dive = getelementptr %union._ieee754_float* %retval, i32 0, i32 0, !dbg !53
  %coerce.dive7 = getelementptr %struct._components* %coerce.dive, i32 0, i32 0, !dbg !53
  %6 = load i32* %coerce.dive7, !dbg !53
  ret i32 %6, !dbg !53
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @testOne() #0 {
entry:
  %f1 = alloca %union._ieee754_float, align 4
  %f2 = alloca %union._ieee754_float, align 4
  %coerce = alloca %union._ieee754_float, align 4
  %coerce3 = alloca %union._ieee754_float, align 4
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %f1}, metadata !54), !dbg !55
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %f2}, metadata !56), !dbg !57
  %call = call i32 @returnsStructure(i32 0), !dbg !58
  %coerce.dive = getelementptr %union._ieee754_float* %coerce, i32 0, i32 0, !dbg !58
  %coerce.dive1 = getelementptr %struct._components* %coerce.dive, i32 0, i32 0, !dbg !58
  store i32 %call, i32* %coerce.dive1, !dbg !58
  %0 = bitcast %union._ieee754_float* %f1 to i8*, !dbg !58
  %1 = bitcast %union._ieee754_float* %coerce to i8*, !dbg !58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 4, i1 false), !dbg !58
  %call2 = call i32 @returnsStructure(i32 1), !dbg !59
  %coerce.dive4 = getelementptr %union._ieee754_float* %coerce3, i32 0, i32 0, !dbg !59
  %coerce.dive5 = getelementptr %struct._components* %coerce.dive4, i32 0, i32 0, !dbg !59
  store i32 %call2, i32* %coerce.dive5, !dbg !59
  %2 = bitcast %union._ieee754_float* %f2 to i8*, !dbg !59
  %3 = bitcast %union._ieee754_float* %coerce3 to i8*, !dbg !59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 4, i32 4, i1 false), !dbg !59
  %ieee = bitcast %union._ieee754_float* %f1 to %struct._components*, !dbg !60
  %4 = bitcast %struct._components* %ieee to i32*, !dbg !60
  %bf.load = load i32* %4, align 4, !dbg !60
  %bf.clear = and i32 %bf.load, 1, !dbg !60
  %ieee6 = bitcast %union._ieee754_float* %f2 to %struct._components*, !dbg !60
  %5 = bitcast %struct._components* %ieee6 to i32*, !dbg !60
  %bf.load7 = load i32* %5, align 4, !dbg !60
  %bf.clear8 = and i32 %bf.load7, 1, !dbg !60
  %cmp = icmp ne i32 %bf.clear, %bf.clear8, !dbg !60
  br i1 %cmp, label %if.end, label %if.then, !dbg !60

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !62
  br label %if.end, !dbg !62

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !64
}

declare void @__VERIFIER_error() #3

; Function Attrs: nounwind uwtable
define void @testTwo() #0 {
entry:
  %f1 = alloca %union._ieee754_float, align 4
  %f2 = alloca %union._ieee754_float, align 4
  %coerce = alloca %union._ieee754_float, align 4
  %coerce3 = alloca %union._ieee754_float, align 4
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %f1}, metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %f2}, metadata !67), !dbg !68
  %call = call i32 @returnsStructure(i32 0), !dbg !69
  %coerce.dive = getelementptr %union._ieee754_float* %coerce, i32 0, i32 0, !dbg !69
  %coerce.dive1 = getelementptr %struct._components* %coerce.dive, i32 0, i32 0, !dbg !69
  store i32 %call, i32* %coerce.dive1, !dbg !69
  %0 = bitcast %union._ieee754_float* %f1 to i8*, !dbg !69
  %1 = bitcast %union._ieee754_float* %coerce to i8*, !dbg !69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 4, i32 4, i1 false), !dbg !69
  %call2 = call i32 @returnsStructure(i32 1), !dbg !70
  %coerce.dive4 = getelementptr %union._ieee754_float* %coerce3, i32 0, i32 0, !dbg !70
  %coerce.dive5 = getelementptr %struct._components* %coerce.dive4, i32 0, i32 0, !dbg !70
  store i32 %call2, i32* %coerce.dive5, !dbg !70
  %2 = bitcast %union._ieee754_float* %f2 to i8*, !dbg !70
  %3 = bitcast %union._ieee754_float* %coerce3 to i8*, !dbg !70
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 4, i32 4, i1 false), !dbg !70
  %ieee = bitcast %union._ieee754_float* %f1 to %struct._components*, !dbg !71
  %4 = bitcast %struct._components* %ieee to i32*, !dbg !71
  %bf.load = load i32* %4, align 4, !dbg !71
  %bf.clear = and i32 %bf.load, 1, !dbg !71
  %ieee6 = bitcast %union._ieee754_float* %f2 to %struct._components*, !dbg !71
  %5 = bitcast %struct._components* %ieee6 to i32*, !dbg !71
  %bf.load7 = load i32* %5, align 4, !dbg !71
  %bf.clear8 = and i32 %bf.load7, 1, !dbg !71
  %cmp = icmp ne i32 %bf.clear, %bf.clear8, !dbg !71
  br i1 %cmp, label %if.end, label %if.then, !dbg !71

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !73
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then, %entry
  %call9 = call float @returnsField(i32 0), !dbg !75
  %f = bitcast %union._ieee754_float* %f1 to float*, !dbg !75
  store float %call9, float* %f, align 4, !dbg !75
  %call10 = call float @returnsField(i32 1), !dbg !76
  %f11 = bitcast %union._ieee754_float* %f2 to float*, !dbg !76
  store float %call10, float* %f11, align 4, !dbg !76
  %ieee12 = bitcast %union._ieee754_float* %f1 to %struct._components*, !dbg !77
  %6 = bitcast %struct._components* %ieee12 to i32*, !dbg !77
  %bf.load13 = load i32* %6, align 4, !dbg !77
  %bf.clear14 = and i32 %bf.load13, 1, !dbg !77
  %ieee15 = bitcast %union._ieee754_float* %f2 to %struct._components*, !dbg !77
  %7 = bitcast %struct._components* %ieee15 to i32*, !dbg !77
  %bf.load16 = load i32* %7, align 4, !dbg !77
  %bf.clear17 = and i32 %bf.load16, 1, !dbg !77
  %cmp18 = icmp ne i32 %bf.clear14, %bf.clear17, !dbg !77
  br i1 %cmp18, label %if.end20, label %if.then19, !dbg !77

if.then19:                                        ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !79
  br label %if.end20, !dbg !79

if.end20:                                         ; preds = %if.then19, %if.end
  ret void, !dbg !81
}

; Function Attrs: nounwind uwtable
define i32 @testThree() #0 {
entry:
  %f1 = alloca %union._ieee754_float, align 4
  %f2 = alloca %union._ieee754_float, align 4
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %f1}, metadata !82), !dbg !83
  call void @llvm.dbg.declare(metadata !{%union._ieee754_float* %f2}, metadata !84), !dbg !85
  %call = call float @returnsField(i32 0), !dbg !86
  %f = bitcast %union._ieee754_float* %f1 to float*, !dbg !86
  store float %call, float* %f, align 4, !dbg !86
  %call1 = call float @returnsField(i32 1), !dbg !87
  %f3 = bitcast %union._ieee754_float* %f2 to float*, !dbg !87
  store float %call1, float* %f3, align 4, !dbg !87
  %ieee = bitcast %union._ieee754_float* %f1 to %struct._components*, !dbg !88
  %0 = bitcast %struct._components* %ieee to i32*, !dbg !88
  %bf.load = load i32* %0, align 4, !dbg !88
  %bf.clear = and i32 %bf.load, 1, !dbg !88
  %ieee4 = bitcast %union._ieee754_float* %f2 to %struct._components*, !dbg !88
  %1 = bitcast %struct._components* %ieee4 to i32*, !dbg !88
  %bf.load5 = load i32* %1, align 4, !dbg !88
  %bf.clear6 = and i32 %bf.load5, 1, !dbg !88
  %cmp = icmp ne i32 %bf.clear, %bf.clear6, !dbg !88
  br i1 %cmp, label %if.end, label %if.then, !dbg !88

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !90
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !92
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @testOne(), !dbg !93
  call void @testTwo(), !dbg !94
  %call = call i32 @testThree(), !dbg !95
  ret i32 0, !dbg !96
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36}
!llvm.ident = !{!37}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float22_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !12, metadata !26, metadata !29, metadata !30, metadata !34}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"returnsField", metadata !"returnsField", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (i32)* @returnsField, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [returnsField]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786454, metadata !10, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!10 = metadata !{metadata !"/usr/include/stdint.h", metadata !"/home/lich/Documents/test_CFG_v4"}
!11 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"returnsStructure", metadata !"returnsStructure", metadata !"", i32 37, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @returnsStructure, null, null, metadata !2, i32 37} ; [ DW_TAG_subprogram ] [line 37] [def] [returnsStructure]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !9}
!15 = metadata !{i32 786454, metadata !1, null, metadata !"ieee754_float", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [ieee754_float] [line 24, size 0, align 0, offset 0] [from _ieee754_float]
!16 = metadata !{i32 786455, metadata !1, null, metadata !"_ieee754_float", i32 21, i64 32, i64 32, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_union_type ] [_ieee754_float] [line 21, size 32, align 32, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !25}
!18 = metadata !{i32 786445, metadata !1, metadata !16, metadata !"ieee", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [ieee] [line 22, size 32, align 32, offset 0] [from components]
!19 = metadata !{i32 786454, metadata !1, null, metadata !"components", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [components] [line 19, size 0, align 0, offset 0] [from _components]
!20 = metadata !{i32 786451, metadata !1, null, metadata !"_components", i32 15, i64 32, i64 32, i32 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_components] [line 15, size 32, align 32, offset 0] [def] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !24}
!22 = metadata !{i32 786445, metadata !1, metadata !20, metadata !"negative", i32 16, i64 1, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [negative] [line 16, size 1, align 32, offset 0] [from unsigned int]
!23 = metadata !{i32 786445, metadata !1, metadata !20, metadata !"exponent", i32 17, i64 8, i64 32, i64 1, i32 0, metadata !11} ; [ DW_TAG_member ] [exponent] [line 17, size 8, align 32, offset 1] [from unsigned int]
!24 = metadata !{i32 786445, metadata !1, metadata !20, metadata !"mantissa", i32 18, i64 23, i64 32, i64 9, i32 0, metadata !11} ; [ DW_TAG_member ] [mantissa] [line 18, size 23, align 32, offset 9] [from unsigned int]
!25 = metadata !{i32 786445, metadata !1, metadata !16, metadata !"f", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [f] [line 23, size 32, align 32, offset 0] [from float]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"testOne", metadata !"testOne", metadata !"", i32 48, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @testOne, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [testOne]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null}
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"testTwo", metadata !"testTwo", metadata !"", i32 60, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @testTwo, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 60] [def] [testTwo]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"testThree", metadata !"testThree", metadata !"", i32 77, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @testThree, null, null, metadata !2, i32 77} ; [ DW_TAG_subprogram ] [line 77] [def] [testThree]
!31 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 88, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 88} ; [ DW_TAG_subprogram ] [line 88] [def] [main]
!35 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!36 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!37 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!38 = metadata !{i32 786689, metadata !4, metadata !"index", metadata !5, i32 16777243, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 27]
!39 = metadata !{i32 27, i32 30, metadata !4, null}
!40 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 28, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 28]
!41 = metadata !{i32 28, i32 19, metadata !4, null}
!42 = metadata !{i32 30, i32 5, metadata !4, null}
!43 = metadata !{i32 31, i32 5, metadata !4, null}
!44 = metadata !{i32 32, i32 5, metadata !4, null}
!45 = metadata !{i32 34, i32 5, metadata !4, null}
!46 = metadata !{i32 786689, metadata !12, metadata !"index", metadata !5, i32 16777253, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 37]
!47 = metadata !{i32 37, i32 42, metadata !12, null}
!48 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 38, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 38]
!49 = metadata !{i32 38, i32 19, metadata !12, null}
!50 = metadata !{i32 40, i32 5, metadata !12, null}
!51 = metadata !{i32 41, i32 5, metadata !12, null}
!52 = metadata !{i32 42, i32 5, metadata !12, null}
!53 = metadata !{i32 44, i32 5, metadata !12, null}
!54 = metadata !{i32 786688, metadata !26, metadata !"f1", metadata !5, i32 49, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 49]
!55 = metadata !{i32 49, i32 18, metadata !26, null}
!56 = metadata !{i32 786688, metadata !26, metadata !"f2", metadata !5, i32 49, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 49]
!57 = metadata !{i32 49, i32 22, metadata !26, null}
!58 = metadata !{i32 51, i32 9, metadata !26, null}
!59 = metadata !{i32 52, i32 9, metadata !26, null}
!60 = metadata !{i32 54, i32 7, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !26, i32 54, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!62 = metadata !{i32 54, i32 48, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !61, i32 54, i32 48, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!64 = metadata !{i32 56, i32 4, metadata !26, null}
!65 = metadata !{i32 786688, metadata !29, metadata !"f1", metadata !5, i32 61, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 61]
!66 = metadata !{i32 61, i32 18, metadata !29, null}
!67 = metadata !{i32 786688, metadata !29, metadata !"f2", metadata !5, i32 61, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 61]
!68 = metadata !{i32 61, i32 22, metadata !29, null}
!69 = metadata !{i32 63, i32 9, metadata !29, null}
!70 = metadata !{i32 64, i32 9, metadata !29, null}
!71 = metadata !{i32 66, i32 7, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !29, i32 66, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!73 = metadata !{i32 66, i32 48, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !72, i32 66, i32 48, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!75 = metadata !{i32 68, i32 11, metadata !29, null}
!76 = metadata !{i32 69, i32 11, metadata !29, null}
!77 = metadata !{i32 71, i32 7, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !29, i32 71, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!79 = metadata !{i32 71, i32 48, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 71, i32 48, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!81 = metadata !{i32 73, i32 4, metadata !29, null}
!82 = metadata !{i32 786688, metadata !30, metadata !"f1", metadata !5, i32 78, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 78]
!83 = metadata !{i32 78, i32 18, metadata !30, null}
!84 = metadata !{i32 786688, metadata !30, metadata !"f2", metadata !5, i32 78, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 78]
!85 = metadata !{i32 78, i32 22, metadata !30, null}
!86 = metadata !{i32 80, i32 11, metadata !30, null}
!87 = metadata !{i32 81, i32 11, metadata !30, null}
!88 = metadata !{i32 83, i32 7, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !30, i32 83, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!90 = metadata !{i32 83, i32 48, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !89, i32 83, i32 48, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float22_true-unreach-call.c]
!92 = metadata !{i32 85, i32 4, metadata !30, null}
!93 = metadata !{i32 89, i32 3, metadata !34, null}
!94 = metadata !{i32 90, i32 3, metadata !34, null}
!95 = metadata !{i32 91, i32 3, metadata !34, null}
!96 = metadata !{i32 93, i32 3, metadata !34, null}
