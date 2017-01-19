; ModuleID = 'float4_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca double, align 8
  %f2 = alloca double, align 8
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %f}, metadata !12), !dbg !14
  call void @llvm.dbg.declare(metadata !{double* %f2}, metadata !15), !dbg !16
  %0 = load double* %f2, align 8, !dbg !17
  %call = call i32 @__isnan(double %0) #1, !dbg !17
  %tobool = icmp ne i32 %call, 0, !dbg !17
  %lnot = xor i1 %tobool, true, !dbg !17
  %lnot.ext = zext i1 %lnot to i32, !dbg !17
  call void @__VERIFIER_assume(i32 %lnot.ext), !dbg !18
  %1 = load double* %f2, align 8, !dbg !19
  %call1 = call i32 @__isinf(double %1) #1, !dbg !19
  %tobool2 = icmp ne i32 %call1, 0, !dbg !19
  %lnot3 = xor i1 %tobool2, true, !dbg !19
  %lnot.ext4 = zext i1 %lnot3 to i32, !dbg !19
  call void @__VERIFIER_assume(i32 %lnot.ext4), !dbg !20
  %2 = load double* %f2, align 8, !dbg !21
  store double %2, double* %f, align 8, !dbg !21
  %3 = load double* %f, align 8, !dbg !22
  %add = fadd double 0.000000e+00, %3, !dbg !22
  %4 = load double* %f, align 8, !dbg !22
  %cmp = fcmp oeq double %add, %4, !dbg !22
  br i1 %cmp, label %if.end, label %if.then, !dbg !22

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error(), !dbg !24
  br label %if.end, !dbg !24

if.end:                                           ; preds = %if.then, %entry
  %5 = load double* %f, align 8, !dbg !26
  %add5 = fadd double %5, 0.000000e+00, !dbg !26
  %6 = load double* %f, align 8, !dbg !26
  %cmp6 = fcmp oeq double %add5, %6, !dbg !26
  br i1 %cmp6, label %if.end8, label %if.then7, !dbg !26

if.then7:                                         ; preds = %if.end
  call void @__VERIFIER_error(), !dbg !28
  br label %if.end8, !dbg !28

if.end8:                                          ; preds = %if.then7, %if.end
  %7 = load double* %f, align 8, !dbg !30
  %add9 = fadd double 0.000000e+00, %7, !dbg !30
  %8 = load double* %f, align 8, !dbg !30
  %cmp10 = fcmp oeq double %add9, %8, !dbg !30
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !30

if.then11:                                        ; preds = %if.end8
  call void @__VERIFIER_error(), !dbg !32
  br label %if.end12, !dbg !32

if.end12:                                         ; preds = %if.then11, %if.end8
  %9 = load double* %f, align 8, !dbg !34
  %sub = fsub double 0.000000e+00, %9, !dbg !34
  %10 = load double* %f, align 8, !dbg !34
  %sub13 = fsub double -0.000000e+00, %10, !dbg !34
  %cmp14 = fcmp oeq double %sub, %sub13, !dbg !34
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !34

if.then15:                                        ; preds = %if.end12
  call void @__VERIFIER_error(), !dbg !36
  br label %if.end16, !dbg !36

if.end16:                                         ; preds = %if.then15, %if.end12
  %11 = load double* %f, align 8, !dbg !38
  %sub17 = fsub double %11, 0.000000e+00, !dbg !38
  %12 = load double* %f, align 8, !dbg !38
  %cmp18 = fcmp oeq double %sub17, %12, !dbg !38
  br i1 %cmp18, label %if.end20, label %if.then19, !dbg !38

if.then19:                                        ; preds = %if.end16
  call void @__VERIFIER_error(), !dbg !40
  br label %if.end20, !dbg !40

if.end20:                                         ; preds = %if.then19, %if.end16
  %13 = load double* %f, align 8, !dbg !42
  %sub21 = fsub double 0.000000e+00, %13, !dbg !42
  %14 = load double* %f, align 8, !dbg !42
  %sub22 = fsub double -0.000000e+00, %14, !dbg !42
  %cmp23 = fcmp oeq double %sub21, %sub22, !dbg !42
  br i1 %cmp23, label %if.end25, label %if.then24, !dbg !42

if.then24:                                        ; preds = %if.end20
  call void @__VERIFIER_error(), !dbg !44
  br label %if.end25, !dbg !44

if.end25:                                         ; preds = %if.then24, %if.end20
  %15 = load double* %f, align 8, !dbg !46
  %sub26 = fsub double -0.000000e+00, %15, !dbg !46
  %sub27 = fsub double -0.000000e+00, %sub26, !dbg !46
  %16 = load double* %f, align 8, !dbg !46
  %cmp28 = fcmp oeq double %sub27, %16, !dbg !46
  br i1 %cmp28, label %if.end30, label %if.then29, !dbg !46

if.then29:                                        ; preds = %if.end25
  call void @__VERIFIER_error(), !dbg !48
  br label %if.end30, !dbg !48

if.end30:                                         ; preds = %if.then29, %if.end25
  %17 = load double* %f, align 8, !dbg !50
  %mul = fmul double 0.000000e+00, %17, !dbg !50
  %cmp31 = fcmp oeq double %mul, 0.000000e+00, !dbg !50
  br i1 %cmp31, label %if.end33, label %if.then32, !dbg !50

if.then32:                                        ; preds = %if.end30
  call void @__VERIFIER_error(), !dbg !52
  br label %if.end33, !dbg !52

if.end33:                                         ; preds = %if.then32, %if.end30
  %18 = load double* %f, align 8, !dbg !54
  %mul34 = fmul double %18, 0.000000e+00, !dbg !54
  %cmp35 = fcmp oeq double %mul34, 0.000000e+00, !dbg !54
  br i1 %cmp35, label %if.end37, label %if.then36, !dbg !54

if.then36:                                        ; preds = %if.end33
  call void @__VERIFIER_error(), !dbg !56
  br label %if.end37, !dbg !56

if.end37:                                         ; preds = %if.then36, %if.end33
  %19 = load double* %f, align 8, !dbg !58
  %mul38 = fmul double %19, 1.000000e+00, !dbg !58
  %20 = load double* %f, align 8, !dbg !58
  %cmp39 = fcmp oeq double %mul38, %20, !dbg !58
  br i1 %cmp39, label %if.end41, label %if.then40, !dbg !58

if.then40:                                        ; preds = %if.end37
  call void @__VERIFIER_error(), !dbg !60
  br label %if.end41, !dbg !60

if.end41:                                         ; preds = %if.then40, %if.end37
  %21 = load double* %f, align 8, !dbg !62
  %mul42 = fmul double 1.000000e+00, %21, !dbg !62
  %22 = load double* %f, align 8, !dbg !62
  %cmp43 = fcmp oeq double %mul42, %22, !dbg !62
  br i1 %cmp43, label %if.end45, label %if.then44, !dbg !62

if.then44:                                        ; preds = %if.end41
  call void @__VERIFIER_error(), !dbg !64
  br label %if.end45, !dbg !64

if.end45:                                         ; preds = %if.then44, %if.end41
  %23 = load double* %f, align 8, !dbg !66
  %mul46 = fmul double 1.000000e+00, %23, !dbg !66
  %24 = load double* %f, align 8, !dbg !66
  %cmp47 = fcmp oeq double %mul46, %24, !dbg !66
  br i1 %cmp47, label %if.end49, label %if.then48, !dbg !66

if.then48:                                        ; preds = %if.end45
  call void @__VERIFIER_error(), !dbg !68
  br label %if.end49, !dbg !68

if.end49:                                         ; preds = %if.then48, %if.end45
  %25 = load double* %f, align 8, !dbg !70
  %div = fdiv double %25, 1.000000e+00, !dbg !70
  %26 = load double* %f, align 8, !dbg !70
  %cmp50 = fcmp oeq double %div, %26, !dbg !70
  br i1 %cmp50, label %if.end52, label %if.then51, !dbg !70

if.then51:                                        ; preds = %if.end49
  call void @__VERIFIER_error(), !dbg !72
  br label %if.end52, !dbg !72

if.end52:                                         ; preds = %if.then51, %if.end49
  %27 = load i32* %retval, !dbg !74
  ret i32 %27, !dbg !74
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @__VERIFIER_assume(i32) #2

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #3

declare void @__VERIFIER_error() #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float4_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 5} ; [ DW_TAG_subprogram ] [line 4] [def] [scope 5] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"f", metadata !5, i32 6, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 6]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 6, i32 10, metadata !4, null}
!15 = metadata !{i32 786688, metadata !4, metadata !"f2", metadata !5, i32 6, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f2] [line 6]
!16 = metadata !{i32 6, i32 13, metadata !4, null}
!17 = metadata !{i32 8, i32 22, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!18 = metadata !{i32 8, i32 3, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!19 = metadata !{i32 9, i32 22, metadata !4, null}
!20 = metadata !{i32 9, i32 3, metadata !4, null}
!21 = metadata !{i32 10, i32 3, metadata !4, null}
!22 = metadata !{i32 14, i32 6, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!24 = metadata !{i32 14, i32 17, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !23, i32 14, i32 17, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!26 = metadata !{i32 15, i32 6, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!28 = metadata !{i32 15, i32 17, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !27, i32 15, i32 17, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!30 = metadata !{i32 17, i32 6, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!32 = metadata !{i32 17, i32 23, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 17, i32 23, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!34 = metadata !{i32 21, i32 6, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!36 = metadata !{i32 21, i32 18, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !35, i32 21, i32 18, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!38 = metadata !{i32 22, i32 6, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 6, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!40 = metadata !{i32 22, i32 17, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !39, i32 22, i32 17, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!42 = metadata !{i32 24, i32 6, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 6, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!44 = metadata !{i32 24, i32 24, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !43, i32 24, i32 24, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!46 = metadata !{i32 29, i32 6, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 6, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!48 = metadata !{i32 29, i32 19, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !47, i32 29, i32 19, i32 1, i32 49} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!50 = metadata !{i32 33, i32 6, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 6, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!52 = metadata !{i32 33, i32 17, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !51, i32 33, i32 17, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!54 = metadata !{i32 34, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 6, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!56 = metadata !{i32 34, i32 17, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !55, i32 34, i32 17, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!58 = metadata !{i32 36, i32 6, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 6, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!60 = metadata !{i32 36, i32 17, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !59, i32 36, i32 17, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!62 = metadata !{i32 37, i32 6, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 6, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!64 = metadata !{i32 37, i32 17, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !63, i32 37, i32 17, i32 1, i32 53} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!66 = metadata !{i32 38, i32 6, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !4, i32 38, i32 6, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!68 = metadata !{i32 38, i32 23, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !67, i32 38, i32 23, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!70 = metadata !{i32 46, i32 6, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 6, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!72 = metadata !{i32 46, i32 19, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !71, i32 46, i32 19, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float4_true-unreach-call.c]
!74 = metadata !{i32 68, i32 1, metadata !4, null}
