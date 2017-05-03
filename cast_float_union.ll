; ModuleID = 'cast_float_union.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.dbl = type { double }
%union.fl = type { i32 }

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %cond.addr}, metadata !20), !dbg !21
  %0 = load i32* %cond.addr, align 4, !dbg !22
  %tobool = icmp ne i32 %0, 0, !dbg !22
  br i1 %tobool, label %if.end, label %if.then, !dbg !22

if.then:                                          ; preds = %entry
  br label %ERROR, !dbg !24

ERROR:                                            ; preds = %if.then
  call void (...)* @__VERIFIER_error() #4, !dbg !27
  unreachable, !dbg !27

if.end:                                           ; preds = %entry
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define float @cast(double %d) #0 {
entry:
  %retval = alloca float, align 4
  %d.addr = alloca double, align 8
  %f = alloca float, align 4
  %dbl = alloca %union.dbl, align 8
  %fl = alloca %union.fl, align 4
  store double %d, double* %d.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %d.addr}, metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata !{float* %f}, metadata !33), !dbg !34
  call void @llvm.dbg.declare(metadata !{%union.dbl* %dbl}, metadata !35), !dbg !44
  call void @llvm.dbg.declare(metadata !{%union.fl* %fl}, metadata !45), !dbg !50
  %0 = load double* %d.addr, align 8, !dbg !51
  %d1 = bitcast %union.dbl* %dbl to double*, !dbg !51
  store double %0, double* %d1, align 8, !dbg !51
  %i = bitcast %union.dbl* %dbl to [2 x i32]*, !dbg !52
  %arrayidx = getelementptr inbounds [2 x i32]* %i, i32 0, i64 0, !dbg !52
  %1 = load i32* %arrayidx, align 4, !dbg !52
  %and = and i32 %1, 2146435072, !dbg !52
  %shr = lshr i32 %and, 20, !dbg !52
  %cmp = icmp eq i32 %shr, 2047, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %retval, !dbg !54
  br label %return, !dbg !54

if.end:                                           ; preds = %entry
  %i2 = bitcast %union.dbl* %dbl to [2 x i32]*, !dbg !56
  %arrayidx3 = getelementptr inbounds [2 x i32]* %i2, i32 0, i64 0, !dbg !56
  store i32 1206910975, i32* %arrayidx3, align 4, !dbg !56
  %i4 = bitcast %union.dbl* %dbl to [2 x i32]*, !dbg !57
  %arrayidx5 = getelementptr inbounds [2 x i32]* %i4, i32 0, i64 1, !dbg !57
  store i32 -536870912, i32* %arrayidx5, align 4, !dbg !57
  %2 = load double* %d.addr, align 8, !dbg !58
  %d6 = bitcast %union.dbl* %dbl to double*, !dbg !58
  %3 = load double* %d6, align 8, !dbg !58
  %cmp7 = fcmp ogt double %2, %3, !dbg !58
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !58

if.then8:                                         ; preds = %if.end
  %i9 = bitcast %union.fl* %fl to i32*, !dbg !60
  store i32 2139095039, i32* %i9, align 4, !dbg !60
  %f10 = bitcast %union.fl* %fl to float*, !dbg !62
  %4 = load float* %f10, align 4, !dbg !62
  store float %4, float* %f, align 4, !dbg !62
  br label %if.end18, !dbg !63

if.else:                                          ; preds = %if.end
  %5 = load double* %d.addr, align 8, !dbg !64
  %sub = fsub double -0.000000e+00, %5, !dbg !64
  %d11 = bitcast %union.dbl* %dbl to double*, !dbg !64
  %6 = load double* %d11, align 8, !dbg !64
  %cmp12 = fcmp ogt double %sub, %6, !dbg !64
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !64

if.then13:                                        ; preds = %if.else
  %i14 = bitcast %union.fl* %fl to i32*, !dbg !66
  store i32 -8388609, i32* %i14, align 4, !dbg !66
  %f15 = bitcast %union.fl* %fl to float*, !dbg !68
  %7 = load float* %f15, align 4, !dbg !68
  store float %7, float* %f, align 4, !dbg !68
  br label %if.end17, !dbg !69

if.else16:                                        ; preds = %if.else
  %8 = load double* %d.addr, align 8, !dbg !70
  %conv = fptrunc double %8 to float, !dbg !70
  store float %conv, float* %f, align 4, !dbg !70
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  %9 = load float* %f, align 4, !dbg !72
  store float %9, float* %retval, !dbg !72
  br label %return, !dbg !72

return:                                           ; preds = %if.end18, %if.then
  %10 = load float* %retval, !dbg !73
  ret float %10, !dbg !73
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %r = alloca float, align 4
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %a}, metadata !74), !dbg !75
  call void @llvm.dbg.declare(metadata !{float* %r}, metadata !76), !dbg !77
  %call = call double (...)* @__VERIFIER_nondet_double(), !dbg !78
  store double %call, double* %a, align 8, !dbg !78
  %0 = load double* %a, align 8, !dbg !79
  %call1 = call float @cast(double %0), !dbg !79
  store float %call1, float* %r, align 4, !dbg !79
  ret i32 0, !dbg !80
}

declare double @__VERIFIER_nondet_double(...) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18}
!llvm.ident = !{!19}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c] [DW_LANG_C99]
!1 = metadata !{metadata !"cast_float_union.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_assert", metadata !"__VERIFIER_assert", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @__VERIFIER_assert, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [__VERIFIER_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cast", metadata !"cast", metadata !"", i32 21, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float (double)* @cast, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 22] [cast]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 47, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [main]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8}
!17 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!18 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!19 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!20 = metadata !{i32 786689, metadata !4, metadata !"cond", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 8]
!21 = metadata !{i32 8, i32 28, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!22 = metadata !{i32 8, i32 40, metadata !23, null} ; [ DW_TAG_imported_declaration ]
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 8, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!24 = metadata !{i32 8, i32 49, metadata !25, null} ; [ DW_TAG_imported_declaration ]
!25 = metadata !{i32 786443, metadata !1, metadata !26, i32 8, i32 49, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!26 = metadata !{i32 786443, metadata !1, metadata !23, i32 8, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!27 = metadata !{i32 8, i32 58, metadata !28, null} ; [ DW_TAG_imported_declaration ]
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 8, i32 58, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!29 = metadata !{i32 8, i32 80, metadata !30, null} ; [ DW_TAG_imported_declaration ]
!30 = metadata !{i32 786443, metadata !1, metadata !4, i32 8, i32 80, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!31 = metadata !{i32 786689, metadata !9, metadata !"d", metadata !5, i32 16777237, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 21]
!32 = metadata !{i32 21, i32 19, metadata !9, null}
!33 = metadata !{i32 786688, metadata !9, metadata !"f", metadata !5, i32 23, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 23]
!34 = metadata !{i32 23, i32 9, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"dbl", metadata !5, i32 24, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbl] [line 24]
!36 = metadata !{i32 786455, metadata !1, null, metadata !"dbl", i32 10, i64 64, i64 64, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_union_type ] [dbl] [line 10, size 64, align 64, offset 0] [def] [from ]
!37 = metadata !{metadata !38, metadata !43}
!38 = metadata !{i32 786445, metadata !1, metadata !36, metadata !"i", i32 11, i64 64, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [i] [line 11, size 64, align 32, offset 0] [from ]
!39 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !40, metadata !41, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from unsigned int]
!40 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!43 = metadata !{i32 786445, metadata !1, metadata !36, metadata !"d", i32 12, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [d] [line 12, size 64, align 64, offset 0] [from double]
!44 = metadata !{i32 24, i32 13, metadata !9, null}
!45 = metadata !{i32 786688, metadata !9, metadata !"fl", metadata !5, i32 25, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fl] [line 25]
!46 = metadata !{i32 786455, metadata !1, null, metadata !"fl", i32 15, i64 32, i64 32, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_union_type ] [fl] [line 15, size 32, align 32, offset 0] [def] [from ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786445, metadata !1, metadata !46, metadata !"i", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [i] [line 16, size 32, align 32, offset 0] [from unsigned int]
!49 = metadata !{i32 786445, metadata !1, metadata !46, metadata !"f", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [f] [line 17, size 32, align 32, offset 0] [from float]
!50 = metadata !{i32 25, i32 12, metadata !9, null}
!51 = metadata !{i32 27, i32 3, metadata !9, null}
!52 = metadata !{i32 28, i32 7, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!54 = metadata !{i32 28, i32 48, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 28, i32 48, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!56 = metadata !{i32 30, i32 3, metadata !9, null}
!57 = metadata !{i32 31, i32 3, metadata !9, null}
!58 = metadata !{i32 33, i32 7, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !9, i32 33, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!60 = metadata !{i32 34, i32 5, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !59, i32 33, i32 18, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!62 = metadata !{i32 35, i32 5, metadata !61, null}
!63 = metadata !{i32 36, i32 3, metadata !61, null}
!64 = metadata !{i32 37, i32 12, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !59, i32 37, i32 12, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!66 = metadata !{i32 38, i32 5, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !65, i32 37, i32 24, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!68 = metadata !{i32 39, i32 5, metadata !67, null}
!69 = metadata !{i32 40, i32 3, metadata !67, null}
!70 = metadata !{i32 42, i32 5, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !65, i32 41, i32 8, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/cast_float_union.c]
!72 = metadata !{i32 44, i32 3, metadata !9, null}
!73 = metadata !{i32 45, i32 1, metadata !9, null}
!74 = metadata !{i32 786688, metadata !14, metadata !"a", metadata !5, i32 49, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 49]
!75 = metadata !{i32 49, i32 10, metadata !14, null}
!76 = metadata !{i32 786688, metadata !14, metadata !"r", metadata !5, i32 50, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 50]
!77 = metadata !{i32 50, i32 9, metadata !14, null}
!78 = metadata !{i32 52, i32 7, metadata !14, null}
!79 = metadata !{i32 53, i32 7, metadata !14, null}
!80 = metadata !{i32 54, i32 3, metadata !14, null}
