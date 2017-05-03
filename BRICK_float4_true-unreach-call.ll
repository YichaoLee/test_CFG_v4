; ModuleID = 'BRICK_float4_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca double, align 8
  %f2 = alloca double, align 8
  store i32 0, i32* %retval
  %0 = load double* %f2, align 8
  %call = call i32 @__isnan(double %0) #3
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  call void @__VERIFIER_assume(i32 %lnot.ext)
  %1 = load double* %f2, align 8
  %call1 = call i32 @__isinf(double %1) #3
  %tobool2 = icmp ne i32 %call1, 0
  %lnot3 = xor i1 %tobool2, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  call void @__VERIFIER_assume(i32 %lnot.ext4)
  %2 = load double* %f2, align 8
  store double %2, double* %f, align 8
  %3 = load double* %f, align 8
  %add = fadd double 0.000000e+00, %3
  %4 = load double* %f, align 8
  %cmp = fcmp oeq double %add, %4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__VERIFIER_error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load double* %f, align 8
  %add5 = fadd double %5, 0.000000e+00
  %6 = load double* %f, align 8
  %cmp6 = fcmp oeq double %add5, %6
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__VERIFIER_error()
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %7 = load double* %f, align 8
  %add9 = fadd double 0.000000e+00, %7
  %8 = load double* %f, align 8
  %cmp10 = fcmp oeq double %add9, %8
  br i1 %cmp10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__VERIFIER_error()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8
  %9 = load double* %f, align 8
  %sub = fsub double 0.000000e+00, %9
  %10 = load double* %f, align 8
  %sub13 = fsub double -0.000000e+00, %10
  %cmp14 = fcmp oeq double %sub, %sub13
  br i1 %cmp14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__VERIFIER_error()
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %11 = load double* %f, align 8
  %sub17 = fsub double %11, 0.000000e+00
  %12 = load double* %f, align 8
  %cmp18 = fcmp oeq double %sub17, %12
  br i1 %cmp18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__VERIFIER_error()
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16
  %13 = load double* %f, align 8
  %sub21 = fsub double 0.000000e+00, %13
  %14 = load double* %f, align 8
  %sub22 = fsub double -0.000000e+00, %14
  %cmp23 = fcmp oeq double %sub21, %sub22
  br i1 %cmp23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__VERIFIER_error()
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  %15 = load double* %f, align 8
  %sub26 = fsub double -0.000000e+00, %15
  %sub27 = fsub double -0.000000e+00, %sub26
  %16 = load double* %f, align 8
  %cmp28 = fcmp oeq double %sub27, %16
  br i1 %cmp28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__VERIFIER_error()
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  %17 = load double* %f, align 8
  %mul = fmul double 0.000000e+00, %17
  %cmp31 = fcmp oeq double %mul, 0.000000e+00
  br i1 %cmp31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__VERIFIER_error()
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30
  %18 = load double* %f, align 8
  %mul34 = fmul double %18, 0.000000e+00
  %cmp35 = fcmp oeq double %mul34, 0.000000e+00
  br i1 %cmp35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__VERIFIER_error()
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33
  %19 = load double* %f, align 8
  %mul38 = fmul double %19, 1.000000e+00
  %20 = load double* %f, align 8
  %cmp39 = fcmp oeq double %mul38, %20
  br i1 %cmp39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__VERIFIER_error()
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37
  %21 = load double* %f, align 8
  %mul42 = fmul double 1.000000e+00, %21
  %22 = load double* %f, align 8
  %cmp43 = fcmp oeq double %mul42, %22
  br i1 %cmp43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__VERIFIER_error()
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  %23 = load double* %f, align 8
  %mul46 = fmul double 1.000000e+00, %23
  %24 = load double* %f, align 8
  %cmp47 = fcmp oeq double %mul46, %24
  br i1 %cmp47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__VERIFIER_error()
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45
  %25 = load double* %f, align 8
  %div = fdiv double %25, 1.000000e+00
  %26 = load double* %f, align 8
  %cmp50 = fcmp oeq double %div, %26
  br i1 %cmp50, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @__VERIFIER_error()
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  %27 = load i32* %retval
  ret i32 %27
}

declare void @__VERIFIER_assume(i32) #1

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #2

declare void @__VERIFIER_error() #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
