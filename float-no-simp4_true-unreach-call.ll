; ModuleID = 'float-no-simp4_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d1 = alloca double, align 8
  %_d1 = alloca double, align 8
  %d2 = alloca double, align 8
  %_d2 = alloca double, align 8
  %d3 = alloca double, align 8
  %_d3 = alloca double, align 8
  %d4 = alloca double, align 8
  %_d4 = alloca double, align 8
  %d5 = alloca double, align 8
  %_d5 = alloca double, align 8
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %d1}, metadata !12), !dbg !14
  %call = call double (...)* @__VERIFIER_nondet_double(), !dbg !15
  store double %call, double* %d1, align 8, !dbg !15
  call void @llvm.dbg.declare(metadata !{double* %_d1}, metadata !16), !dbg !17
  %call1 = call double (...)* @__VERIFIER_nondet_double(), !dbg !18
  store double %call1, double* %_d1, align 8, !dbg !18
  %0 = load double* %_d1, align 8, !dbg !19
  store double %0, double* %d1, align 8, !dbg !19
  %1 = load double* %d1, align 8, !dbg !20
  %call2 = call i32 @__fpclassify(double %1) #1, !dbg !20
  %cmp = icmp eq i32 %call2, 4, !dbg !20
  %conv = zext i1 %cmp to i32, !dbg !20
  call void @__VERIFIER_assume(i32 %conv), !dbg !21
  br i1 false, label %cond.true, label %cond.false, !dbg !22

cond.true:                                        ; preds = %entry
  %2 = load double* %d1, align 8, !dbg !24
  %conv3 = fptrunc double %2 to float, !dbg !24
  %call4 = call i32 @__isnanf(float %conv3) #1, !dbg !24
  %tobool = icmp ne i32 %call4, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end, !dbg !24

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true5, label %cond.false8, !dbg !26

cond.true5:                                       ; preds = %cond.false
  %3 = load double* %d1, align 8, !dbg !28
  %call6 = call i32 @__isnan(double %3) #1, !dbg !28
  %tobool7 = icmp ne i32 %call6, 0, !dbg !28
  br i1 %tobool7, label %if.then, label %if.end, !dbg !28

cond.false8:                                      ; preds = %cond.false
  %4 = load double* %d1, align 8, !dbg !30
  %conv9 = fpext double %4 to x86_fp80, !dbg !30
  %call10 = call i32 @__isnanl(x86_fp80 %conv9) #1, !dbg !30
  %tobool11 = icmp ne i32 %call10, 0, !dbg !30
  br i1 %tobool11, label %if.then, label %if.end, !dbg !30

if.then:                                          ; preds = %cond.false8, %cond.true5, %cond.true
  call void @__VERIFIER_error(), !dbg !32
  br label %if.end, !dbg !32

if.end:                                           ; preds = %if.then, %cond.false8, %cond.true5, %cond.true
  br i1 false, label %cond.true12, label %cond.false16, !dbg !36

cond.true12:                                      ; preds = %if.end
  %5 = load double* %d1, align 8, !dbg !38
  %conv13 = fptrunc double %5 to float, !dbg !38
  %call14 = call i32 @__isinff(float %conv13) #1, !dbg !38
  %tobool15 = icmp ne i32 %call14, 0, !dbg !38
  br i1 %tobool15, label %if.then24, label %if.end25, !dbg !38

cond.false16:                                     ; preds = %if.end
  br i1 true, label %cond.true17, label %cond.false20, !dbg !40

cond.true17:                                      ; preds = %cond.false16
  %6 = load double* %d1, align 8, !dbg !42
  %call18 = call i32 @__isinf(double %6) #1, !dbg !42
  %tobool19 = icmp ne i32 %call18, 0, !dbg !42
  br i1 %tobool19, label %if.then24, label %if.end25, !dbg !42

cond.false20:                                     ; preds = %cond.false16
  %7 = load double* %d1, align 8, !dbg !44
  %conv21 = fpext double %7 to x86_fp80, !dbg !44
  %call22 = call i32 @__isinfl(x86_fp80 %conv21) #1, !dbg !44
  %tobool23 = icmp ne i32 %call22, 0, !dbg !44
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !44

if.then24:                                        ; preds = %cond.false20, %cond.true17, %cond.true12
  call void @__VERIFIER_error(), !dbg !46
  br label %if.end25, !dbg !46

if.end25:                                         ; preds = %if.then24, %cond.false20, %cond.true17, %cond.true12
  br i1 false, label %cond.true26, label %cond.false30, !dbg !50

cond.true26:                                      ; preds = %if.end25
  %8 = load double* %d1, align 8, !dbg !52
  %conv27 = fptrunc double %8 to float, !dbg !52
  %call28 = call i32 @__finitef(float %conv27) #1, !dbg !52
  %tobool29 = icmp ne i32 %call28, 0, !dbg !52
  br i1 %tobool29, label %if.end39, label %if.then38, !dbg !52

cond.false30:                                     ; preds = %if.end25
  br i1 true, label %cond.true31, label %cond.false34, !dbg !54

cond.true31:                                      ; preds = %cond.false30
  %9 = load double* %d1, align 8, !dbg !56
  %call32 = call i32 @__finite(double %9) #1, !dbg !56
  %tobool33 = icmp ne i32 %call32, 0, !dbg !56
  br i1 %tobool33, label %if.end39, label %if.then38, !dbg !56

cond.false34:                                     ; preds = %cond.false30
  %10 = load double* %d1, align 8, !dbg !58
  %conv35 = fpext double %10 to x86_fp80, !dbg !58
  %call36 = call i32 @__finitel(x86_fp80 %conv35) #1, !dbg !58
  %tobool37 = icmp ne i32 %call36, 0, !dbg !58
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !58

if.then38:                                        ; preds = %cond.false34, %cond.true31, %cond.true26
  call void @__VERIFIER_error(), !dbg !60
  br label %if.end39, !dbg !60

if.end39:                                         ; preds = %if.then38, %cond.false34, %cond.true31, %cond.true26
  call void @llvm.dbg.declare(metadata !{double* %d2}, metadata !64), !dbg !65
  %call40 = call double (...)* @__VERIFIER_nondet_double(), !dbg !66
  store double %call40, double* %d2, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata !{double* %_d2}, metadata !67), !dbg !68
  %call41 = call double (...)* @__VERIFIER_nondet_double(), !dbg !69
  store double %call41, double* %_d2, align 8, !dbg !69
  %11 = load double* %_d2, align 8, !dbg !70
  store double %11, double* %d2, align 8, !dbg !70
  %12 = load double* %d2, align 8, !dbg !71
  %call42 = call i32 @__isinf(double %12) #1, !dbg !71
  call void @__VERIFIER_assume(i32 %call42), !dbg !72
  %13 = load double* %d2, align 8, !dbg !73
  %call43 = call i32 @__fpclassify(double %13) #1, !dbg !73
  %cmp44 = icmp eq i32 %call43, 4, !dbg !73
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !73

if.then46:                                        ; preds = %if.end39
  call void @__VERIFIER_error(), !dbg !75
  br label %if.end47, !dbg !75

if.end47:                                         ; preds = %if.then46, %if.end39
  br i1 false, label %cond.true48, label %cond.false52, !dbg !77

cond.true48:                                      ; preds = %if.end47
  %14 = load double* %d2, align 8, !dbg !79
  %conv49 = fptrunc double %14 to float, !dbg !79
  %call50 = call i32 @__isnanf(float %conv49) #1, !dbg !79
  %tobool51 = icmp ne i32 %call50, 0, !dbg !79
  br i1 %tobool51, label %if.then60, label %if.end61, !dbg !79

cond.false52:                                     ; preds = %if.end47
  br i1 true, label %cond.true53, label %cond.false56, !dbg !81

cond.true53:                                      ; preds = %cond.false52
  %15 = load double* %d2, align 8, !dbg !83
  %call54 = call i32 @__isnan(double %15) #1, !dbg !83
  %tobool55 = icmp ne i32 %call54, 0, !dbg !83
  br i1 %tobool55, label %if.then60, label %if.end61, !dbg !83

cond.false56:                                     ; preds = %cond.false52
  %16 = load double* %d2, align 8, !dbg !85
  %conv57 = fpext double %16 to x86_fp80, !dbg !85
  %call58 = call i32 @__isnanl(x86_fp80 %conv57) #1, !dbg !85
  %tobool59 = icmp ne i32 %call58, 0, !dbg !85
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !85

if.then60:                                        ; preds = %cond.false56, %cond.true53, %cond.true48
  call void @__VERIFIER_error(), !dbg !87
  br label %if.end61, !dbg !87

if.end61:                                         ; preds = %if.then60, %cond.false56, %cond.true53, %cond.true48
  call void @llvm.dbg.declare(metadata !{double* %d3}, metadata !91), !dbg !92
  %call62 = call double (...)* @__VERIFIER_nondet_double(), !dbg !93
  store double %call62, double* %d3, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata !{double* %_d3}, metadata !94), !dbg !95
  %call63 = call double (...)* @__VERIFIER_nondet_double(), !dbg !96
  store double %call63, double* %_d3, align 8, !dbg !96
  %17 = load double* %_d3, align 8, !dbg !97
  store double %17, double* %d3, align 8, !dbg !97
  %18 = load double* %d3, align 8, !dbg !98
  %call64 = call i32 @__isnan(double %18) #1, !dbg !98
  call void @__VERIFIER_assume(i32 %call64), !dbg !99
  %19 = load double* %d3, align 8, !dbg !100
  %call65 = call i32 @__fpclassify(double %19) #1, !dbg !100
  %cmp66 = icmp eq i32 %call65, 4, !dbg !100
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !100

if.then68:                                        ; preds = %if.end61
  call void @__VERIFIER_error(), !dbg !102
  br label %if.end69, !dbg !102

if.end69:                                         ; preds = %if.then68, %if.end61
  br i1 false, label %cond.true70, label %cond.false74, !dbg !104

cond.true70:                                      ; preds = %if.end69
  %20 = load double* %d3, align 8, !dbg !106
  %conv71 = fptrunc double %20 to float, !dbg !106
  %call72 = call i32 @__isinff(float %conv71) #1, !dbg !106
  %tobool73 = icmp ne i32 %call72, 0, !dbg !106
  br i1 %tobool73, label %if.then82, label %if.end83, !dbg !106

cond.false74:                                     ; preds = %if.end69
  br i1 true, label %cond.true75, label %cond.false78, !dbg !108

cond.true75:                                      ; preds = %cond.false74
  %21 = load double* %d3, align 8, !dbg !110
  %call76 = call i32 @__isinf(double %21) #1, !dbg !110
  %tobool77 = icmp ne i32 %call76, 0, !dbg !110
  br i1 %tobool77, label %if.then82, label %if.end83, !dbg !110

cond.false78:                                     ; preds = %cond.false74
  %22 = load double* %d3, align 8, !dbg !112
  %conv79 = fpext double %22 to x86_fp80, !dbg !112
  %call80 = call i32 @__isinfl(x86_fp80 %conv79) #1, !dbg !112
  %tobool81 = icmp ne i32 %call80, 0, !dbg !112
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !112

if.then82:                                        ; preds = %cond.false78, %cond.true75, %cond.true70
  call void @__VERIFIER_error(), !dbg !114
  br label %if.end83, !dbg !114

if.end83:                                         ; preds = %if.then82, %cond.false78, %cond.true75, %cond.true70
  %23 = load double* %d3, align 8, !dbg !118
  %24 = load double* %d3, align 8, !dbg !118
  %cmp84 = fcmp une double %23, %24, !dbg !118
  br i1 %cmp84, label %if.end87, label %if.then86, !dbg !118

if.then86:                                        ; preds = %if.end83
  call void @__VERIFIER_error(), !dbg !120
  br label %if.end87, !dbg !120

if.end87:                                         ; preds = %if.then86, %if.end83
  call void @llvm.dbg.declare(metadata !{double* %d4}, metadata !122), !dbg !123
  %call88 = call double (...)* @__VERIFIER_nondet_double(), !dbg !124
  store double %call88, double* %d4, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata !{double* %_d4}, metadata !125), !dbg !126
  %call89 = call double (...)* @__VERIFIER_nondet_double(), !dbg !127
  store double %call89, double* %_d4, align 8, !dbg !127
  %25 = load double* %_d4, align 8, !dbg !128
  store double %25, double* %d4, align 8, !dbg !128
  %26 = load double* %d4, align 8, !dbg !129
  %call90 = call i32 @__finite(double %26) #1, !dbg !129
  call void @__VERIFIER_assume(i32 %call90), !dbg !130
  br i1 false, label %cond.true91, label %cond.false95, !dbg !131

cond.true91:                                      ; preds = %if.end87
  %27 = load double* %d4, align 8, !dbg !133
  %conv92 = fptrunc double %27 to float, !dbg !133
  %call93 = call i32 @__isnanf(float %conv92) #1, !dbg !133
  %tobool94 = icmp ne i32 %call93, 0, !dbg !133
  br i1 %tobool94, label %if.then103, label %if.end104, !dbg !133

cond.false95:                                     ; preds = %if.end87
  br i1 true, label %cond.true96, label %cond.false99, !dbg !135

cond.true96:                                      ; preds = %cond.false95
  %28 = load double* %d4, align 8, !dbg !137
  %call97 = call i32 @__isnan(double %28) #1, !dbg !137
  %tobool98 = icmp ne i32 %call97, 0, !dbg !137
  br i1 %tobool98, label %if.then103, label %if.end104, !dbg !137

cond.false99:                                     ; preds = %cond.false95
  %29 = load double* %d4, align 8, !dbg !139
  %conv100 = fpext double %29 to x86_fp80, !dbg !139
  %call101 = call i32 @__isnanl(x86_fp80 %conv100) #1, !dbg !139
  %tobool102 = icmp ne i32 %call101, 0, !dbg !139
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !139

if.then103:                                       ; preds = %cond.false99, %cond.true96, %cond.true91
  call void @__VERIFIER_error(), !dbg !141
  br label %if.end104, !dbg !141

if.end104:                                        ; preds = %if.then103, %cond.false99, %cond.true96, %cond.true91
  br i1 false, label %cond.true105, label %cond.false109, !dbg !145

cond.true105:                                     ; preds = %if.end104
  %30 = load double* %d4, align 8, !dbg !147
  %conv106 = fptrunc double %30 to float, !dbg !147
  %call107 = call i32 @__isinff(float %conv106) #1, !dbg !147
  %tobool108 = icmp ne i32 %call107, 0, !dbg !147
  br i1 %tobool108, label %if.then117, label %if.end118, !dbg !147

cond.false109:                                    ; preds = %if.end104
  br i1 true, label %cond.true110, label %cond.false113, !dbg !149

cond.true110:                                     ; preds = %cond.false109
  %31 = load double* %d4, align 8, !dbg !151
  %call111 = call i32 @__isinf(double %31) #1, !dbg !151
  %tobool112 = icmp ne i32 %call111, 0, !dbg !151
  br i1 %tobool112, label %if.then117, label %if.end118, !dbg !151

cond.false113:                                    ; preds = %cond.false109
  %32 = load double* %d4, align 8, !dbg !153
  %conv114 = fpext double %32 to x86_fp80, !dbg !153
  %call115 = call i32 @__isinfl(x86_fp80 %conv114) #1, !dbg !153
  %tobool116 = icmp ne i32 %call115, 0, !dbg !153
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !153

if.then117:                                       ; preds = %cond.false113, %cond.true110, %cond.true105
  call void @__VERIFIER_error(), !dbg !155
  br label %if.end118, !dbg !155

if.end118:                                        ; preds = %if.then117, %cond.false113, %cond.true110, %cond.true105
  call void @llvm.dbg.declare(metadata !{double* %d5}, metadata !159), !dbg !160
  %call119 = call double (...)* @__VERIFIER_nondet_double(), !dbg !161
  store double %call119, double* %d5, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata !{double* %_d5}, metadata !162), !dbg !163
  %call120 = call double (...)* @__VERIFIER_nondet_double(), !dbg !164
  store double %call120, double* %_d5, align 8, !dbg !164
  %33 = load double* %_d5, align 8, !dbg !165
  store double %33, double* %d5, align 8, !dbg !165
  br i1 false, label %cond.true121, label %cond.false125, !dbg !166

cond.true121:                                     ; preds = %if.end118
  %34 = load double* %d5, align 8, !dbg !167
  %conv122 = fptrunc double %34 to float, !dbg !167
  %call123 = call i32 @__isnanf(float %conv122) #1, !dbg !167
  %tobool124 = icmp ne i32 %call123, 0, !dbg !167
  br i1 %tobool124, label %land.end, label %land.rhs, !dbg !167

cond.false125:                                    ; preds = %if.end118
  br i1 true, label %cond.true126, label %cond.false129, !dbg !169

cond.true126:                                     ; preds = %cond.false125
  %35 = load double* %d5, align 8, !dbg !171
  %call127 = call i32 @__isnan(double %35) #1, !dbg !171
  %tobool128 = icmp ne i32 %call127, 0, !dbg !171
  br i1 %tobool128, label %land.end, label %land.rhs, !dbg !171

cond.false129:                                    ; preds = %cond.false125
  %36 = load double* %d5, align 8, !dbg !173
  %conv130 = fpext double %36 to x86_fp80, !dbg !173
  %call131 = call i32 @__isnanl(x86_fp80 %conv130) #1, !dbg !173
  %tobool132 = icmp ne i32 %call131, 0, !dbg !173
  br i1 %tobool132, label %land.end, label %land.rhs, !dbg !173

land.rhs:                                         ; preds = %cond.false129, %cond.true126, %cond.true121
  %37 = load double* %d5, align 8, !dbg !175
  %call133 = call i32 @__isinf(double %37) #1, !dbg !175
  %tobool134 = icmp ne i32 %call133, 0, !dbg !175
  %lnot = xor i1 %tobool134, true, !dbg !175
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false129, %cond.true126, %cond.true121
  %38 = phi i1 [ false, %cond.false129 ], [ false, %cond.true126 ], [ false, %cond.true121 ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %38 to i32, !dbg !179
  call void @__VERIFIER_assume(i32 %land.ext), !dbg !166
  br i1 false, label %cond.true135, label %cond.false139, !dbg !183

cond.true135:                                     ; preds = %land.end
  %39 = load double* %d5, align 8, !dbg !185
  %conv136 = fptrunc double %39 to float, !dbg !185
  %call137 = call i32 @__finitef(float %conv136) #1, !dbg !185
  %tobool138 = icmp ne i32 %call137, 0, !dbg !185
  br i1 %tobool138, label %if.end148, label %if.then147, !dbg !185

cond.false139:                                    ; preds = %land.end
  br i1 true, label %cond.true140, label %cond.false143, !dbg !187

cond.true140:                                     ; preds = %cond.false139
  %40 = load double* %d5, align 8, !dbg !189
  %call141 = call i32 @__finite(double %40) #1, !dbg !189
  %tobool142 = icmp ne i32 %call141, 0, !dbg !189
  br i1 %tobool142, label %if.end148, label %if.then147, !dbg !189

cond.false143:                                    ; preds = %cond.false139
  %41 = load double* %d5, align 8, !dbg !191
  %conv144 = fpext double %41 to x86_fp80, !dbg !191
  %call145 = call i32 @__finitel(x86_fp80 %conv144) #1, !dbg !191
  %tobool146 = icmp ne i32 %call145, 0, !dbg !191
  br i1 %tobool146, label %if.end148, label %if.then147, !dbg !191

if.then147:                                       ; preds = %cond.false143, %cond.true140, %cond.true135
  call void @__VERIFIER_error(), !dbg !193
  br label %if.end148, !dbg !193

if.end148:                                        ; preds = %if.then147, %cond.false143, %cond.true140, %cond.true135
  %42 = load i32* %retval, !dbg !197
  ret i32 %42, !dbg !197
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare double @__VERIFIER_nondet_double(...) #2

declare void @__VERIFIER_assume(i32) #2

; Function Attrs: nounwind readnone
declare i32 @__fpclassify(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #3

declare void @__VERIFIER_error() #2

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #3

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #3

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #3

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #3

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c] [DW_LANG_C99]
!1 = metadata !{metadata !"float-no-simp4_true-unreach-call.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 7] [def] [scope 8] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"d1", metadata !5, i32 9, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d1] [line 9]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 9, i32 10, metadata !4, null}
!15 = metadata !{i32 9, i32 15, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"_d1", metadata !5, i32 10, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_d1] [line 10]
!17 = metadata !{i32 10, i32 10, metadata !4, null}
!18 = metadata !{i32 10, i32 16, metadata !4, null}
!19 = metadata !{i32 11, i32 3, metadata !4, null}
!20 = metadata !{i32 12, i32 21, metadata !4, null}
!21 = metadata !{i32 12, i32 3, metadata !4, null}
!22 = metadata !{i32 13, i32 6, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!24 = metadata !{i32 13, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !23, i32 13, i32 9, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!26 = metadata !{i32 13, i32 9, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !23, i32 13, i32 9, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!28 = metadata !{i32 13, i32 9, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !23, i32 13, i32 9, i32 4, i32 14} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!30 = metadata !{i32 13, i32 9, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !23, i32 13, i32 9, i32 5, i32 15} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!32 = metadata !{i32 13, i32 21, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 13, i32 21, i32 7, i32 17} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!34 = metadata !{i32 786443, metadata !1, metadata !35, i32 13, i32 21, i32 6, i32 16} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!35 = metadata !{i32 786443, metadata !1, metadata !23, i32 13, i32 21, i32 3, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!36 = metadata !{i32 14, i32 6, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!38 = metadata !{i32 14, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !37, i32 14, i32 9, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!40 = metadata !{i32 14, i32 9, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !37, i32 14, i32 9, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!42 = metadata !{i32 14, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !37, i32 14, i32 9, i32 4, i32 21} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!44 = metadata !{i32 14, i32 9, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !37, i32 14, i32 9, i32 5, i32 22} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!46 = metadata !{i32 14, i32 21, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !48, i32 14, i32 21, i32 7, i32 24} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 14, i32 21, i32 6, i32 23} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!49 = metadata !{i32 786443, metadata !1, metadata !37, i32 14, i32 21, i32 3, i32 20} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!50 = metadata !{i32 15, i32 6, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!52 = metadata !{i32 15, i32 8, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 8, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!54 = metadata !{i32 15, i32 8, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 8, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!56 = metadata !{i32 15, i32 8, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 8, i32 4, i32 28} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!58 = metadata !{i32 15, i32 8, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 8, i32 5, i32 29} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!60 = metadata !{i32 15, i32 23, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !62, i32 15, i32 23, i32 7, i32 31} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!62 = metadata !{i32 786443, metadata !1, metadata !63, i32 15, i32 23, i32 6, i32 30} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!63 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 23, i32 3, i32 27} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!64 = metadata !{i32 786688, metadata !4, metadata !"d2", metadata !5, i32 17, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2] [line 17]
!65 = metadata !{i32 17, i32 10, metadata !4, null}
!66 = metadata !{i32 17, i32 15, metadata !4, null}
!67 = metadata !{i32 786688, metadata !4, metadata !"_d2", metadata !5, i32 18, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_d2] [line 18]
!68 = metadata !{i32 18, i32 10, metadata !4, null}
!69 = metadata !{i32 18, i32 16, metadata !4, null}
!70 = metadata !{i32 19, i32 3, metadata !4, null}
!71 = metadata !{i32 20, i32 21, metadata !4, null}
!72 = metadata !{i32 20, i32 3, metadata !4, null}
!73 = metadata !{i32 21, i32 9, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!75 = metadata !{i32 21, i32 24, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 21, i32 24, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!77 = metadata !{i32 22, i32 6, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!79 = metadata !{i32 22, i32 9, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 22, i32 9, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!81 = metadata !{i32 22, i32 9, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !78, i32 22, i32 9, i32 2, i32 34} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!83 = metadata !{i32 22, i32 9, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !78, i32 22, i32 9, i32 4, i32 36} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!85 = metadata !{i32 22, i32 9, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !78, i32 22, i32 9, i32 5, i32 37} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!87 = metadata !{i32 22, i32 21, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 22, i32 21, i32 7, i32 39} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 22, i32 21, i32 6, i32 38} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!90 = metadata !{i32 786443, metadata !1, metadata !78, i32 22, i32 21, i32 3, i32 35} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!91 = metadata !{i32 786688, metadata !4, metadata !"d3", metadata !5, i32 25, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d3] [line 25]
!92 = metadata !{i32 25, i32 10, metadata !4, null}
!93 = metadata !{i32 25, i32 15, metadata !4, null}
!94 = metadata !{i32 786688, metadata !4, metadata !"_d3", metadata !5, i32 26, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_d3] [line 26]
!95 = metadata !{i32 26, i32 10, metadata !4, null}
!96 = metadata !{i32 26, i32 16, metadata !4, null}
!97 = metadata !{i32 27, i32 3, metadata !4, null}
!98 = metadata !{i32 28, i32 21, metadata !4, null}
!99 = metadata !{i32 28, i32 3, metadata !4, null}
!100 = metadata !{i32 29, i32 9, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 6, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!102 = metadata !{i32 29, i32 24, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !101, i32 29, i32 24, i32 1, i32 40} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!104 = metadata !{i32 30, i32 6, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!106 = metadata !{i32 30, i32 9, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !105, i32 30, i32 9, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!108 = metadata !{i32 30, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !105, i32 30, i32 9, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!110 = metadata !{i32 30, i32 9, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !105, i32 30, i32 9, i32 4, i32 44} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!112 = metadata !{i32 30, i32 9, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !105, i32 30, i32 9, i32 5, i32 45} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!114 = metadata !{i32 30, i32 21, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !116, i32 30, i32 21, i32 7, i32 47} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!116 = metadata !{i32 786443, metadata !1, metadata !117, i32 30, i32 21, i32 6, i32 46} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!117 = metadata !{i32 786443, metadata !1, metadata !105, i32 30, i32 21, i32 3, i32 43} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!118 = metadata !{i32 31, i32 6, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 6, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!120 = metadata !{i32 31, i32 17, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !119, i32 31, i32 17, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!122 = metadata !{i32 786688, metadata !4, metadata !"d4", metadata !5, i32 34, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d4] [line 34]
!123 = metadata !{i32 34, i32 10, metadata !4, null}
!124 = metadata !{i32 34, i32 15, metadata !4, null}
!125 = metadata !{i32 786688, metadata !4, metadata !"_d4", metadata !5, i32 35, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_d4] [line 35]
!126 = metadata !{i32 35, i32 10, metadata !4, null}
!127 = metadata !{i32 35, i32 16, metadata !4, null}
!128 = metadata !{i32 36, i32 3, metadata !4, null}
!129 = metadata !{i32 37, i32 21, metadata !4, null}
!130 = metadata !{i32 37, i32 3, metadata !4, null}
!131 = metadata !{i32 38, i32 6, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !4, i32 38, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!133 = metadata !{i32 38, i32 9, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !132, i32 38, i32 9, i32 1, i32 49} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!135 = metadata !{i32 38, i32 9, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !132, i32 38, i32 9, i32 2, i32 50} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!137 = metadata !{i32 38, i32 9, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !132, i32 38, i32 9, i32 4, i32 52} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!139 = metadata !{i32 38, i32 9, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !132, i32 38, i32 9, i32 5, i32 53} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!141 = metadata !{i32 38, i32 21, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !143, i32 38, i32 21, i32 7, i32 55} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!143 = metadata !{i32 786443, metadata !1, metadata !144, i32 38, i32 21, i32 6, i32 54} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!144 = metadata !{i32 786443, metadata !1, metadata !132, i32 38, i32 21, i32 3, i32 51} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!145 = metadata !{i32 39, i32 6, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 6, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!147 = metadata !{i32 39, i32 9, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !146, i32 39, i32 9, i32 1, i32 56} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!149 = metadata !{i32 39, i32 9, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !146, i32 39, i32 9, i32 2, i32 57} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!151 = metadata !{i32 39, i32 9, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !146, i32 39, i32 9, i32 4, i32 59} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!153 = metadata !{i32 39, i32 9, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !146, i32 39, i32 9, i32 5, i32 60} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!155 = metadata !{i32 39, i32 21, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !157, i32 39, i32 21, i32 7, i32 62} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!157 = metadata !{i32 786443, metadata !1, metadata !158, i32 39, i32 21, i32 6, i32 61} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!158 = metadata !{i32 786443, metadata !1, metadata !146, i32 39, i32 21, i32 3, i32 58} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!159 = metadata !{i32 786688, metadata !4, metadata !"d5", metadata !5, i32 42, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d5] [line 42]
!160 = metadata !{i32 42, i32 10, metadata !4, null}
!161 = metadata !{i32 42, i32 15, metadata !4, null}
!162 = metadata !{i32 786688, metadata !4, metadata !"_d5", metadata !5, i32 43, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_d5] [line 43]
!163 = metadata !{i32 43, i32 10, metadata !4, null}
!164 = metadata !{i32 43, i32 16, metadata !4, null}
!165 = metadata !{i32 44, i32 3, metadata !4, null}
!166 = metadata !{i32 45, i32 3, metadata !4, null}
!167 = metadata !{i32 45, i32 22, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 22, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!169 = metadata !{i32 45, i32 22, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 22, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!171 = metadata !{i32 45, i32 22, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 22, i32 5, i32 67} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!173 = metadata !{i32 45, i32 22, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 22, i32 6, i32 68} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!175 = metadata !{i32 45, i32 36, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 45, i32 36, i32 10, i32 72} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!177 = metadata !{i32 786443, metadata !1, metadata !178, i32 45, i32 36, i32 8, i32 70} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!178 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 36, i32 4, i32 66} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!179 = metadata !{i32 45, i32 36, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !181, i32 45, i32 36, i32 9, i32 71} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!181 = metadata !{i32 786443, metadata !1, metadata !182, i32 45, i32 36, i32 7, i32 69} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!182 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 36, i32 3, i32 65} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!183 = metadata !{i32 46, i32 6, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 6, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!185 = metadata !{i32 46, i32 8, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !184, i32 46, i32 8, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!187 = metadata !{i32 46, i32 8, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !184, i32 46, i32 8, i32 2, i32 74} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!189 = metadata !{i32 46, i32 8, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !184, i32 46, i32 8, i32 4, i32 76} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!191 = metadata !{i32 46, i32 8, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !184, i32 46, i32 8, i32 5, i32 77} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!193 = metadata !{i32 46, i32 23, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !195, i32 46, i32 23, i32 7, i32 79} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!195 = metadata !{i32 786443, metadata !1, metadata !196, i32 46, i32 23, i32 6, i32 78} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!196 = metadata !{i32 786443, metadata !1, metadata !184, i32 46, i32 23, i32 3, i32 75} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/float-no-simp4_true-unreach-call.c]
!197 = metadata !{i32 47, i32 1, metadata !4, null}
