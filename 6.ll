; ModuleID = '6.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %nu = alloca double, align 8
  %result = alloca %struct.gsl_sf_result_struct, align 8
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata !{double* %nu}, metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata !{%struct.gsl_sf_result_struct* %result}, metadata !27), !dbg !28
  %0 = load double* %nu, align 8, !dbg !29
  %1 = load double* %x, align 8, !dbg !29
  %call = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %0, double %1, %struct.gsl_sf_result_struct* %result), !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnu_asympx_e(double %nu, double %x, %struct.gsl_sf_result_struct* %result) #0 {
entry:
  %nu.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  %result.addr = alloca %struct.gsl_sf_result_struct*, align 8
  %mu = alloca double, align 8
  %mum1 = alloca double, align 8
  %mum9 = alloca double, align 8
  %mum25 = alloca double, align 8
  %chi = alloca double, align 8
  %P = alloca double, align 8
  %Q = alloca double, align 8
  %pre = alloca double, align 8
  %c = alloca double, align 8
  %s = alloca double, align 8
  %r = alloca double, align 8
  store double %nu, double* %nu.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %nu.addr}, metadata !31), !dbg !32
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !33), !dbg !34
  store %struct.gsl_sf_result_struct* %result, %struct.gsl_sf_result_struct** %result.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.gsl_sf_result_struct** %result.addr}, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata !{double* %mu}, metadata !37), !dbg !38
  %0 = load double* %nu.addr, align 8, !dbg !39
  %mul = fmul double 4.000000e+00, %0, !dbg !39
  %1 = load double* %nu.addr, align 8, !dbg !39
  %mul1 = fmul double %mul, %1, !dbg !39
  store double %mul1, double* %mu, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata !{double* %mum1}, metadata !40), !dbg !41
  %2 = load double* %mu, align 8, !dbg !42
  %sub = fsub double %2, 1.000000e+00, !dbg !42
  store double %sub, double* %mum1, align 8, !dbg !42
  call void @llvm.dbg.declare(metadata !{double* %mum9}, metadata !43), !dbg !44
  %3 = load double* %mu, align 8, !dbg !45
  %sub2 = fsub double %3, 9.000000e+00, !dbg !45
  store double %sub2, double* %mum9, align 8, !dbg !45
  call void @llvm.dbg.declare(metadata !{double* %mum25}, metadata !46), !dbg !47
  %4 = load double* %mu, align 8, !dbg !48
  %sub3 = fsub double %4, 2.500000e+01, !dbg !48
  store double %sub3, double* %mum25, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata !{double* %chi}, metadata !49), !dbg !50
  %5 = load double* %x.addr, align 8, !dbg !51
  %6 = load double* %nu.addr, align 8, !dbg !51
  %mul4 = fmul double 5.000000e-01, %6, !dbg !51
  %add = fadd double %mul4, 2.500000e-01, !dbg !51
  %mul5 = fmul double %add, 0x400921FB54442D18, !dbg !51
  %sub6 = fsub double %5, %mul5, !dbg !51
  store double %sub6, double* %chi, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata !{double* %P}, metadata !52), !dbg !53
  %7 = load double* %mum1, align 8, !dbg !54
  %8 = load double* %mum9, align 8, !dbg !54
  %mul7 = fmul double %7, %8, !dbg !54
  %9 = load double* %x.addr, align 8, !dbg !54
  %mul8 = fmul double 1.280000e+02, %9, !dbg !54
  %10 = load double* %x.addr, align 8, !dbg !54
  %mul9 = fmul double %mul8, %10, !dbg !54
  %div = fdiv double %mul7, %mul9, !dbg !54
  %sub10 = fsub double 1.000000e+00, %div, !dbg !54
  store double %sub10, double* %P, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata !{double* %Q}, metadata !55), !dbg !56
  %11 = load double* %mum1, align 8, !dbg !57
  %12 = load double* %x.addr, align 8, !dbg !57
  %mul11 = fmul double 8.000000e+00, %12, !dbg !57
  %div12 = fdiv double %11, %mul11, !dbg !57
  %13 = load double* %mum9, align 8, !dbg !57
  %14 = load double* %mum25, align 8, !dbg !57
  %mul13 = fmul double %13, %14, !dbg !57
  %15 = load double* %x.addr, align 8, !dbg !57
  %mul14 = fmul double 3.840000e+02, %15, !dbg !57
  %16 = load double* %x.addr, align 8, !dbg !57
  %mul15 = fmul double %mul14, %16, !dbg !57
  %div16 = fdiv double %mul13, %mul15, !dbg !57
  %sub17 = fsub double 1.000000e+00, %div16, !dbg !57
  %mul18 = fmul double %div12, %sub17, !dbg !57
  store double %mul18, double* %Q, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata !{double* %pre}, metadata !58), !dbg !59
  %17 = load double* %x.addr, align 8, !dbg !60
  %mul19 = fmul double 0x400921FB54442D18, %17, !dbg !60
  %div20 = fdiv double 2.000000e+00, %mul19, !dbg !60
  %call = call double @sqrt(double %div20) #4, !dbg !60
  store double %call, double* %pre, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata !{double* %c}, metadata !61), !dbg !62
  %18 = load double* %chi, align 8, !dbg !63
  %call21 = call double @cos(double %18) #4, !dbg !63
  store double %call21, double* %c, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata !{double* %s}, metadata !64), !dbg !65
  %19 = load double* %chi, align 8, !dbg !66
  %call22 = call double @sin(double %19) #4, !dbg !66
  store double %call22, double* %s, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata !{double* %r}, metadata !67), !dbg !68
  %20 = load double* %mu, align 8, !dbg !69
  %21 = load double* %x.addr, align 8, !dbg !69
  %div23 = fdiv double %20, %21, !dbg !69
  store double %div23, double* %r, align 8, !dbg !69
  %22 = load double* %pre, align 8, !dbg !70
  %23 = load double* %c, align 8, !dbg !70
  %24 = load double* %P, align 8, !dbg !70
  %mul24 = fmul double %23, %24, !dbg !70
  %25 = load double* %s, align 8, !dbg !70
  %26 = load double* %Q, align 8, !dbg !70
  %mul25 = fmul double %25, %26, !dbg !70
  %sub26 = fsub double %mul24, %mul25, !dbg !70
  %mul27 = fmul double %22, %sub26, !dbg !70
  %27 = load %struct.gsl_sf_result_struct** %result.addr, align 8, !dbg !70
  %val = getelementptr inbounds %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !70
  store double %mul27, double* %val, align 8, !dbg !70
  %28 = load double* %pre, align 8, !dbg !71
  %mul28 = fmul double %28, 0x3CB0000000000000, !dbg !71
  %29 = load double* %x.addr, align 8, !dbg !72
  %call29 = call double @fabs(double %29) #1, !dbg !72
  %add30 = fadd double 1.000000e+00, %call29, !dbg !72
  %mul31 = fmul double %mul28, %add30, !dbg !72
  %30 = load double* %c, align 8, !dbg !73
  %31 = load double* %P, align 8, !dbg !73
  %mul32 = fmul double %30, %31, !dbg !73
  %call33 = call double @fabs(double %mul32) #1, !dbg !73
  %32 = load double* %s, align 8, !dbg !74
  %33 = load double* %Q, align 8, !dbg !74
  %mul34 = fmul double %32, %33, !dbg !74
  %call35 = call double @fabs(double %mul34) #1, !dbg !74
  %add36 = fadd double %call33, %call35, !dbg !74
  %mul37 = fmul double %mul31, %add36, !dbg !74
  %34 = load %struct.gsl_sf_result_struct** %result.addr, align 8, !dbg !74
  %err = getelementptr inbounds %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !74
  store double %mul37, double* %err, align 8, !dbg !74
  %35 = load double* %pre, align 8, !dbg !75
  %36 = load double* %r, align 8, !dbg !76
  %mul38 = fmul double 1.000000e-01, %36, !dbg !76
  %37 = load double* %r, align 8, !dbg !76
  %mul39 = fmul double %mul38, %37, !dbg !76
  %38 = load double* %r, align 8, !dbg !76
  %mul40 = fmul double %mul39, %38, !dbg !76
  %39 = load double* %r, align 8, !dbg !76
  %mul41 = fmul double %mul40, %39, !dbg !76
  %call42 = call double @fabs(double %mul41) #1, !dbg !76
  %mul43 = fmul double %35, %call42, !dbg !76
  %40 = load %struct.gsl_sf_result_struct** %result.addr, align 8, !dbg !76
  %err44 = getelementptr inbounds %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !76
  %41 = load double* %err44, align 8, !dbg !76
  %add45 = fadd double %41, %mul43, !dbg !76
  store double %add45, double* %err44, align 8, !dbg !76
  ret i32 0, !dbg !77
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/6.c] [DW_LANG_C99]
!1 = metadata !{metadata !"6.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/6.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gsl_sf_bessel_Jnu_asympx_e", metadata !"gsl_sf_bessel_Jnu_asympx_e", metadata !"", i32 45, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (double, double, %struct.gsl_sf_result_struct*)* @gsl_sf_bessel_Jnu_asympx_e, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [gsl_sf_bessel_Jnu_asympx_e]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !12, metadata !12, metadata !14}
!12 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gsl_sf_result]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"gsl_sf_result", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [gsl_sf_result] [line 26, size 0, align 0, offset 0] [from gsl_sf_result_struct]
!16 = metadata !{i32 786451, metadata !1, null, metadata !"gsl_sf_result_struct", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [gsl_sf_result_struct] [line 23, size 128, align 64, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !19}
!18 = metadata !{i32 786445, metadata !1, metadata !16, metadata !"val", i32 24, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [val] [line 24, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786445, metadata !1, metadata !16, metadata !"err", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [err] [line 25, size 64, align 64, offset 64] [from double]
!20 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!21 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!22 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!23 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 36]
!24 = metadata !{i32 36, i32 15, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"nu", metadata !5, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nu] [line 36]
!26 = metadata !{i32 36, i32 30, metadata !4, null}
!27 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 37, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 37]
!28 = metadata !{i32 37, i32 16, metadata !4, null}
!29 = metadata !{i32 39, i32 2, metadata !4, null}
!30 = metadata !{i32 41, i32 2, metadata !4, null}
!31 = metadata !{i32 786689, metadata !9, metadata !"nu", metadata !5, i32 16777261, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nu] [line 45]
!32 = metadata !{i32 45, i32 41, metadata !9, null}
!33 = metadata !{i32 786689, metadata !9, metadata !"x", metadata !5, i32 33554477, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 45]
!34 = metadata !{i32 45, i32 58, metadata !9, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"result", metadata !5, i32 50331693, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [result] [line 45]
!36 = metadata !{i32 45, i32 77, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"mu", metadata !5, i32 47, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 47]
!38 = metadata !{i32 47, i32 10, metadata !9, null}
!39 = metadata !{i32 47, i32 3, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"mum1", metadata !5, i32 48, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mum1] [line 48]
!41 = metadata !{i32 48, i32 10, metadata !9, null}
!42 = metadata !{i32 48, i32 3, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"mum9", metadata !5, i32 49, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mum9] [line 49]
!44 = metadata !{i32 49, i32 10, metadata !9, null}
!45 = metadata !{i32 49, i32 3, metadata !9, null}
!46 = metadata !{i32 786688, metadata !9, metadata !"mum25", metadata !5, i32 50, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mum25] [line 50]
!47 = metadata !{i32 50, i32 10, metadata !9, null}
!48 = metadata !{i32 50, i32 3, metadata !9, null}
!49 = metadata !{i32 786688, metadata !9, metadata !"chi", metadata !5, i32 51, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chi] [line 51]
!50 = metadata !{i32 51, i32 10, metadata !9, null}
!51 = metadata !{i32 51, i32 3, metadata !9, null}
!52 = metadata !{i32 786688, metadata !9, metadata !"P", metadata !5, i32 52, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [P] [line 52]
!53 = metadata !{i32 52, i32 10, metadata !9, null}
!54 = metadata !{i32 52, i32 3, metadata !9, null}
!55 = metadata !{i32 786688, metadata !9, metadata !"Q", metadata !5, i32 53, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Q] [line 53]
!56 = metadata !{i32 53, i32 10, metadata !9, null}
!57 = metadata !{i32 53, i32 3, metadata !9, null}
!58 = metadata !{i32 786688, metadata !9, metadata !"pre", metadata !5, i32 54, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pre] [line 54]
!59 = metadata !{i32 54, i32 10, metadata !9, null}
!60 = metadata !{i32 54, i32 16, metadata !9, null}
!61 = metadata !{i32 786688, metadata !9, metadata !"c", metadata !5, i32 55, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 55]
!62 = metadata !{i32 55, i32 10, metadata !9, null}
!63 = metadata !{i32 55, i32 16, metadata !9, null}
!64 = metadata !{i32 786688, metadata !9, metadata !"s", metadata !5, i32 56, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 56]
!65 = metadata !{i32 56, i32 10, metadata !9, null}
!66 = metadata !{i32 56, i32 16, metadata !9, null}
!67 = metadata !{i32 786688, metadata !9, metadata !"r", metadata !5, i32 57, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 57]
!68 = metadata !{i32 57, i32 10, metadata !9, null}
!69 = metadata !{i32 57, i32 3, metadata !9, null}
!70 = metadata !{i32 58, i32 3, metadata !9, null} ; [ DW_TAG_imported_module ]
!71 = metadata !{i32 59, i32 3, metadata !9, null}
!72 = metadata !{i32 59, i32 49, metadata !9, null}
!73 = metadata !{i32 59, i32 61, metadata !9, null}
!74 = metadata !{i32 59, i32 73, metadata !9, null}
!75 = metadata !{i32 60, i32 3, metadata !9, null}
!76 = metadata !{i32 60, i32 24, metadata !9, null}
!77 = metadata !{i32 61, i32 3, metadata !9, null}
