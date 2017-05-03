; ModuleID = 'sin_interpolated_negation.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T = constant [362 x double] [double 0.000000e+00, double 0x3F91DF0B2B89D92A, double 0x3FA1DE58C9F7DB9B, double 0x3FAACBC748EFC6E5, double 0x3FB1DB8F6D6A527A, double 0x3FB64FD6B8C28186, double 0x3FBAC2609B3C5672, double 0x3FBF32D44C4F6389, double 0x3FC1D06C968D9EBD, double 0x3FC4060B67A85356, double 0x3FC63A1A7E0B737D, double 0x3FC86C6DDD7661A2, double 0x3FCA9CD9AC42590E, double 0x3FCCCB3236CDC5C1, double 0x3FCEF74BF2E4B96F, double 0x3FD0907DC1930683, double 0x3FD1A40ADD328E38, double 0x3FD2B637CF83D602, double 0x3FD3C6EF372FE97E, double 0x3FD4D61BD000CE17, double 0x3FD5E3A8748A0C0C, double 0x3FD6EF801FCED337, double 0x3FD7F98DEEE5965D, double 0x3FD901BD2298FF67, double 0x3FDA07F921061ACD, double 0x3FDB0C2D7737985D, double 0x3FDC0E45DABE05F7, double 0x3FDD0E2E2B44DE3B, double 0x3FDE0BD27424506A, double 0x3FDF071EEDEFA122, double 5.000000e-01, double 0x3FE07B3120FDDEEE, double 0x3FE0F5193EACDCFE, double 0x3FE16DAED7707737, double 0x3FE1E4E88411FD2F, double 0x3FE25ABCF87C499C, double 0x3FE2CF2304755A42, double 0x3FE342119455BEC6, double 0x3FE3B37FB1BDC948, double 0x3FE4236484487AD5, double 0x3FE491B7523C1623, double 0x3FE4FE6F81384FED, double 0x3FE5698496E20BE8, double 0x3FE5D2EE398C9C39, double 0x3FE63AA430E07329, double 0x3FE6A09E667F3BE3, double 0x3FE704D4E6A54D2E, double 0x3FE7673FE0C8697E, double 0x3FE7C7D7A833BE9C, double 0x3FE82694B4A11C25, double 0x3FE8836FA2CF504B, double 0x3FE8DE613515A320, double 0x3FE9376253F463C0, double 0x3FE98E6C0EA279FB, double 0x3FE9E3779B97F4BF, double 0x3FEA367E59158737, double 0x3FEA8779CDA8EE95, double 0x3FEAD663A8AE2FB8, double 0x3FEB2335C2CDA969, double 0x3FEB6DEA1E76EAC9, double 0x3FEBB67AE8584CB7, double 0x3FEBFCE277D339EC, double 0x3FEC411B4F6D2723, double 0x3FEC83201D3D2C80, double 0x3FECC2EBBB5638E5, double 0x3FED0079302DD768, double 0x3FED3BC3AEFF7F8D, double 0x3FED74C6982C666C, double 0x3FEDAB7D7997CB6F, double 0x3FEDDFE40EFFB7F5, double 0x3FEE11F642522D2A, double 0x3FEE41B02BFEB4E7, double 0x3FEE6F0E134454DF, double 0x3FEE9A0C6E7BDB48, double 0x3FEEC2A7E35E7B8A, double 0x3FEEE8DD4748BF24, double 0x3FEF0CA99F79BA45, double 0x3FEF2E0A214E873A, double 0x3FEF4CFC327A00A7, double 0x3FEF697D6938B69E, double 0x3FEF838B8C811C29, double 0x3FEF9B24942FE470, double 0x3FEFB046A9309477, double 0x3FEFC2F025A23E79, double 0x3FEFD31F94F867A8, double 0x3FEFE0D3B41815CA, double 0x3FEFEC0B7170FFD0, double 0x3FEFF4C5ED12E5FA, double 0x3FEFFB0278BF058D, double 0x3FEFFEC097F5AF7F, double 1.000000e+00, double 0x3FEFFEC097F5AF7F, double 0x3FEFFB0278BF058D, double 0x3FEFF4C5ED12E5FA, double 0x3FEFEC0B7170FFD0, double 0x3FEFE0D3B41815CA, double 0x3FEFD31F94F867A8, double 0x3FEFC2F025A23E79, double 0x3FEFB046A9309477, double 0x3FEF9B24942FE470, double 0x3FEF838B8C811C29, double 0x3FEF697D6938B69E, double 0x3FEF4CFC327A00A7, double 0x3FEF2E0A214E873A, double 0x3FEF0CA99F79BA45, double 0x3FEEE8DD4748BF24, double 0x3FEEC2A7E35E7B8A, double 0x3FEE9A0C6E7BDB48, double 0x3FEE6F0E134454DF, double 0x3FEE41B02BFEB4E7, double 0x3FEE11F642522D2A, double 0x3FEDDFE40EFFB7F5, double 0x3FEDAB7D7997CB6F, double 0x3FED74C6982C666C, double 0x3FED3BC3AEFF7F8D, double 0x3FED0079302DD768, double 0x3FECC2EBBB5638E5, double 0x3FEC83201D3D2C80, double 0x3FEC411B4F6D2723, double 0x3FEBFCE277D339EC, double 0x3FEBB67AE8584CB7, double 0x3FEB6DEA1E76EAC9, double 0x3FEB2335C2CDA969, double 0x3FEAD663A8AE2FB8, double 0x3FEA8779CDA8EE95, double 0x3FEA367E59158737, double 0x3FE9E3779B97F4BF, double 0x3FE98E6C0EA279FB, double 0x3FE9376253F463C0, double 0x3FE8DE613515A320, double 0x3FE8836FA2CF504B, double 0x3FE82694B4A11C25, double 0x3FE7C7D7A833BE9C, double 0x3FE7673FE0C8697E, double 0x3FE704D4E6A54D2E, double 0x3FE6A09E667F3BE3, double 0x3FE63AA430E07329, double 0x3FE5D2EE398C9C39, double 0x3FE5698496E20BE8, double 0x3FE4FE6F81384FED, double 0x3FE491B7523C1623, double 0x3FE4236484487AD5, double 0x3FE3B37FB1BDC948, double 0x3FE342119455BEC6, double 0x3FE2CF2304755A42, double 0x3FE25ABCF87C499C, double 0x3FE1E4E88411FD2F, double 0x3FE16DAED7707737, double 0x3FE0F5193EACDCFE, double 0x3FE07B3120FDDEEE, double 5.000000e-01, double 0x3FDF071EEDEFA122, double 0x3FDE0BD27424506A, double 0x3FDD0E2E2B44DE3B, double 0x3FDC0E45DABE05F7, double 0x3FDB0C2D7737985D, double 0x3FDA07F921061ACD, double 0x3FD901BD2298FF67, double 0x3FD7F98DEEE5965D, double 0x3FD6EF801FCED337, double 0x3FD5E3A8748A0C0C, double 0x3FD4D61BD000CE17, double 0x3FD3C6EF372FE97E, double 0x3FD2B637CF83D602, double 0x3FD1A40ADD328E38, double 0x3FD0907DC1930683, double 0x3FCEF74BF2E4B96F, double 0x3FCCCB3236CDC729, double 0x3FCA9CD9AC42590E, double 0x3FC86C6DDD7661A2, double 0x3FC63A1A7E0B737D, double 0x3FC4060B67A85356, double 0x3FC1D06C968D9EBD, double 0x3FBF32D44C4F6389, double 0x3FBAC2609B3C5672, double 0x3FB64FD6B8C28186, double 0x3FB1DB8F6D6A527A, double 0x3FAACBC748EFC6E5, double 0x3FA1DE58C9F7DB9B, double 0x3F91DF0B2B89D92A, double 0.000000e+00, double 0xBF91DF0B2B89D92A, double 0xBFA1DE58C9F7DB9B, double 0xBFAACBC748EFC6E5, double 0xBFB1DB8F6D6A4FAA, double 0xBFB64FD6B8C28186, double 0xBFBAC2609B3C5672, double 0xBFBF32D44C4F6389, double 0xBFC1D06C968D9EBD, double 0xBFC4060B67A85356, double 0xBFC63A1A7E0B737D, double 0xBFC86C6DDD7661A2, double 0xBFCA9CD9AC42590E, double 0xBFCCCB3236CDC5C1, double 0xBFCEF74BF2E4B96F, double 0xBFD0907DC1930683, double 0xBFD1A40ADD328E38, double 0xBFD2B637CF83D602, double 0xBFD3C6EF372FE97E, double 0xBFD4D61BD000CE17, double 0xBFD5E3A8748A0C0C, double 0xBFD6EF801FCED337, double 0xBFD7F98DEEE5965D, double 0xBFD901BD2298FF67, double 0xBFDA07F921061ACD, double 0xBFDB0C2D7737985D, double 0xBFDC0E45DABE05F7, double 0xBFDD0E2E2B44DE3B, double 0xBFDE0BD27424506A, double 0xBFDF071EEDEFA122, double -5.000000e-01, double 0xBFE07B3120FDDEEE, double 0xBFE0F5193EACDCFE, double 0xBFE16DAED7707737, double 0xBFE1E4E88411FD2F, double 0xBFE25ABCF87C499C, double 0xBFE2CF2304755A42, double 0xBFE342119455BEC6, double 0xBFE3B37FB1BDC948, double 0xBFE4236484487AD5, double 0xBFE491B7523C1623, double 0xBFE4FE6F81384FED, double 0xBFE5698496E20BE8, double 0xBFE5D2EE398C9C39, double 0xBFE63AA430E07329, double 0xBFE6A09E667F3BE3, double 0xBFE704D4E6A54D2E, double 0xBFE7673FE0C8697E, double 0xBFE7C7D7A833BE9C, double 0xBFE82694B4A11C25, double 0xBFE8836FA2CF504B, double 0xBFE8DE613515A320, double 0xBFE9376253F463C0, double 0xBFE98E6C0EA279FB, double 0xBFE9E3779B97F4BF, double 0xBFEA367E59158737, double 0xBFEA8779CDA8EE95, double 0xBFEAD663A8AE2FB8, double 0xBFEB2335C2CDA969, double 0xBFEB6DEA1E76EAC9, double 0xBFEBB67AE8584CB7, double 0xBFEBFCE277D339EC, double 0xBFEC411B4F6D2723, double 0xBFEC83201D3D2C80, double 0xBFECC2EBBB5638E5, double 0xBFED0079302DD768, double 0xBFED3BC3AEFF7F8D, double 0xBFED74C6982C666C, double 0xBFEDAB7D7997CB6F, double 0xBFEDDFE40EFFB7F5, double 0xBFEE11F642522D2A, double 0xBFEE41B02BFEB4E7, double 0xBFEE6F0E134454DF, double 0xBFEE9A0C6E7BDB48, double 0xBFEEC2A7E35E7B8A, double 0xBFEEE8DD4748BF24, double 0xBFEF0CA99F79BA45, double 0xBFEF2E0A214E873A, double 0xBFEF4CFC327A00A7, double 0xBFEF697D6938B69E, double 0xBFEF838B8C811C29, double 0xBFEF9B24942FE470, double 0xBFEFB046A9309477, double 0xBFEFC2F025A23E79, double 0xBFEFD31F94F867A8, double 0xBFEFE0D3B41815CA, double 0xBFEFEC0B7170FFD0, double 0xBFEFF4C5ED12E5FA, double 0xBFEFFB0278BF058D, double 0xBFEFFEC097F5AF7F, double -1.000000e+00, double 0xBFEFFEC097F5AF7F, double 0xBFEFFB0278BF058D, double 0xBFEFF4C5ED12E5FA, double 0xBFEFEC0B7170FFD0, double 0xBFEFE0D3B41815CA, double 0xBFEFD31F94F867A8, double 0xBFEFC2F025A23E79, double 0xBFEFB046A9309477, double 0xBFEF9B24942FE470, double 0xBFEF838B8C811C29, double 0xBFEF697D6938B69E, double 0xBFEF4CFC327A00A7, double 0xBFEF2E0A214E873A, double 0xBFEF0CA99F79BA45, double 0xBFEEE8DD4748BF24, double 0xBFEEC2A7E35E7B8A, double 0xBFEE9A0C6E7BDB48, double 0xBFEE6F0E134454DF, double 0xBFEE41B02BFEB4E7, double 0xBFEE11F642522D2A, double 0xBFEDDFE40EFFB7F5, double 0xBFEDAB7D7997CB6F, double 0xBFED74C6982C666C, double 0xBFED3BC3AEFF7F8D, double 0xBFED0079302DD768, double 0xBFECC2EBBB5638E5, double 0xBFEC83201D3D2C80, double 0xBFEC411B4F6D2723, double 0xBFEBFCE277D339EC, double 0xBFEBB67AE8584CB7, double 0xBFEB6DEA1E76EAC9, double 0xBFEB2335C2CDA969, double 0xBFEAD663A8AE2FB8, double 0xBFEA8779CDA8EE95, double 0xBFEA367E59158737, double 0xBFE9E3779B97F4BF, double 0xBFE98E6C0EA279FB, double 0xBFE9376253F463C0, double 0xBFE8DE613515A320, double 0xBFE8836FA2CF504B, double 0xBFE82694B4A11C25, double 0xBFE7C7D7A833BE9C, double 0xBFE7673FE0C8697E, double 0xBFE704D4E6A54D2E, double 0xBFE6A09E667F3BE3, double 0xBFE63AA430E07329, double 0xBFE5D2EE398C9C39, double 0xBFE5698496E20BE8, double 0xBFE4FE6F81384FED, double 0xBFE491B7523C1623, double 0xBFE4236484487AD5, double 0xBFE3B37FB1BDC948, double 0xBFE342119455BEC6, double 0xBFE2CF2304755A42, double 0xBFE25ABCF87C499C, double 0xBFE1E4E88411FD2F, double 0xBFE16DAED7707737, double 0xBFE0F5193EACDD58, double 0xBFE07B3120FDDEEE, double -5.000000e-01, double 0xBFDF071EEDEFA122, double 0xBFDE0BD27424506A, double 0xBFDD0E2E2B44DE3B, double 0xBFDC0E45DABE05F7, double 0xBFDB0C2D7737985D, double 0xBFDA07F921061ACD, double 0xBFD901BD2298FF67, double 0xBFD7F98DEEE5965D, double 0xBFD6EF801FCED337, double 0xBFD5E3A8748A0C0C, double 0xBFD4D61BD000CE17, double 0xBFD3C6EF372FE97E, double 0xBFD2B637CF83D602, double 0xBFD1A40ADD328E38, double 0xBFD0907DC1930683, double 0xBFCEF74BF2E4B96F, double 0xBFCCCB3236CDC729, double 0xBFCA9CD9AC42590E, double 0xBFC86C6DDD7661A2, double 0xBFC63A1A7E0B737D, double 0xBFC4060B67A85356, double 0xBFC1D06C968D9EBD, double 0xBFBF32D44C4F6389, double 0xBFBAC2609B3C5672, double 0xBFB64FD6B8C28186, double 0xBFB1DB8F6D6A527A, double 0xBFAACBC748EFC6E5, double 0xBFA1DE58C9F7DB9B, double 0xBF91DF0B2B89D92A, double 0.000000e+00, double 0.000000e+00], align 16

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
entry:
  %cond.addr = alloca i32, align 4
  store i32 %cond, i32* %cond.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %cond.addr}, metadata !28), !dbg !29
  %0 = load i32* %cond.addr, align 4, !dbg !30
  %tobool = icmp ne i32 %0, 0, !dbg !30
  br i1 %tobool, label %if.end, label %if.then, !dbg !30

if.then:                                          ; preds = %entry
  br label %ERROR, !dbg !32

ERROR:                                            ; preds = %if.then
  call void (...)* @__VERIFIER_error() #4, !dbg !35
  unreachable, !dbg !35

if.end:                                           ; preds = %entry
  ret void, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define double @SIN_0_180(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %dx = alloca double, align 8
  %i_dx = alloca double, align 8
  %v_inf = alloca double, align 8
  %v_sup = alloca double, align 8
  %i = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata !{double* %dx}, metadata !41), !dbg !42
  call void @llvm.dbg.declare(metadata !{double* %i_dx}, metadata !43), !dbg !44
  call void @llvm.dbg.declare(metadata !{double* %v_inf}, metadata !45), !dbg !46
  call void @llvm.dbg.declare(metadata !{double* %v_sup}, metadata !47), !dbg !48
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !49), !dbg !50
  %0 = load double* %x.addr, align 8, !dbg !51
  %mul = fmul double 2.000000e+00, %0, !dbg !51
  store double %mul, double* %dx, align 8, !dbg !51
  %1 = load double* %dx, align 8, !dbg !52
  %conv = fptosi double %1 to i32, !dbg !52
  store i32 %conv, i32* %i, align 4, !dbg !52
  %2 = load i32* %i, align 4, !dbg !53
  %conv1 = sitofp i32 %2 to double, !dbg !53
  store double %conv1, double* %i_dx, align 8, !dbg !53
  %3 = load i32* %i, align 4, !dbg !54
  %idxprom = sext i32 %3 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [362 x double]* @T, i32 0, i64 %idxprom, !dbg !54
  %4 = load double* %arrayidx, align 8, !dbg !54
  store double %4, double* %v_inf, align 8, !dbg !54
  %5 = load i32* %i, align 4, !dbg !55
  %add = add nsw i32 %5, 1, !dbg !55
  %idxprom2 = sext i32 %add to i64, !dbg !55
  %arrayidx3 = getelementptr inbounds [362 x double]* @T, i32 0, i64 %idxprom2, !dbg !55
  %6 = load double* %arrayidx3, align 8, !dbg !55
  store double %6, double* %v_sup, align 8, !dbg !55
  %7 = load double* %v_inf, align 8, !dbg !56
  %8 = load double* %dx, align 8, !dbg !56
  %9 = load double* %i_dx, align 8, !dbg !56
  %sub = fsub double %8, %9, !dbg !56
  %10 = load double* %v_sup, align 8, !dbg !56
  %11 = load double* %v_inf, align 8, !dbg !56
  %sub4 = fsub double %10, %11, !dbg !56
  %mul5 = fmul double %sub, %sub4, !dbg !56
  %add6 = fadd double %7, %mul5, !dbg !56
  ret double %add6, !dbg !56
}

; Function Attrs: nounwind uwtable
define double @SIN_180(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !57), !dbg !58
  %0 = load double* %x.addr, align 8, !dbg !59
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !59
  br i1 %cmp, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %entry
  %1 = load double* %x.addr, align 8, !dbg !61
  %sub = fsub double -0.000000e+00, %1, !dbg !61
  %call = call double @SIN_0_180(double %sub), !dbg !61
  %sub1 = fsub double -0.000000e+00, %call, !dbg !61
  store double %sub1, double* %retval, !dbg !61
  br label %return, !dbg !61

if.else:                                          ; preds = %entry
  %2 = load double* %x.addr, align 8, !dbg !63
  %call2 = call double @SIN_0_180(double %2), !dbg !63
  store double %call2, double* %retval, !dbg !63
  br label %return, !dbg !63

return:                                           ; preds = %if.else, %if.then
  %3 = load double* %retval, !dbg !64
  ret double %3, !dbg !64
}

; Function Attrs: nounwind uwtable
define double @SIN_POS(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !65), !dbg !66
  %0 = load double* %x.addr, align 8, !dbg !67
  %cmp = fcmp ogt double %0, 1.800000e+02, !dbg !67
  br i1 %cmp, label %if.then, label %if.else, !dbg !67

if.then:                                          ; preds = %entry
  %1 = load double* %x.addr, align 8, !dbg !69
  %2 = load double* %x.addr, align 8, !dbg !69
  %add = fadd double %2, 1.800000e+02, !dbg !69
  %div = fdiv double %add, 3.600000e+02, !dbg !69
  %conv = fptosi double %div to i32, !dbg !69
  %conv1 = sitofp i32 %conv to double, !dbg !69
  %mul = fmul double 3.600000e+02, %conv1, !dbg !69
  %sub = fsub double %1, %mul, !dbg !69
  %call = call double @SIN_180(double %sub), !dbg !69
  store double %call, double* %retval, !dbg !69
  br label %return, !dbg !69

if.else:                                          ; preds = %entry
  %3 = load double* %x.addr, align 8, !dbg !71
  %call2 = call double @SIN_180(double %3), !dbg !71
  store double %call2, double* %retval, !dbg !71
  br label %return, !dbg !71

return:                                           ; preds = %if.else, %if.then
  %4 = load double* %retval, !dbg !72
  ret double %4, !dbg !72
}

; Function Attrs: nounwind uwtable
define double @SIN(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{double* %x.addr}, metadata !73), !dbg !74
  %0 = load double* %x.addr, align 8, !dbg !75
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !75
  br i1 %cmp, label %if.then, label %if.else, !dbg !75

if.then:                                          ; preds = %entry
  %1 = load double* %x.addr, align 8, !dbg !77
  %sub = fsub double -0.000000e+00, %1, !dbg !77
  %call = call double @SIN_POS(double %sub), !dbg !77
  %sub1 = fsub double -0.000000e+00, %call, !dbg !77
  store double %sub1, double* %retval, !dbg !77
  br label %return, !dbg !77

if.else:                                          ; preds = %entry
  %2 = load double* %x.addr, align 8, !dbg !79
  %call2 = call double @SIN_POS(double %2), !dbg !79
  store double %call2, double* %retval, !dbg !79
  br label %return, !dbg !79

return:                                           ; preds = %if.else, %if.then
  %3 = load double* %retval, !dbg !80
  ret double %3, !dbg !80
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %aa = alloca double, align 8
  %r = alloca double, align 8
  store i32 0, i32* %retval
  call void @llvm.dbg.declare(metadata !{double* %a}, metadata !81), !dbg !82
  call void @llvm.dbg.declare(metadata !{double* %aa}, metadata !83), !dbg !84
  call void @llvm.dbg.declare(metadata !{double* %r}, metadata !85), !dbg !86
  store double -3.600000e+02, double* %a, align 8, !dbg !87
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load double* %a, align 8, !dbg !89
  %cmp = fcmp ole double %0, 3.600000e+02, !dbg !89
  br i1 %cmp, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %call = call double (...)* @__VERIFIER_nondet_double(), !dbg !92
  store double %call, double* %aa, align 8, !dbg !92
  %1 = load double* %aa, align 8, !dbg !94
  %2 = load double* %a, align 8, !dbg !94
  %div = fdiv double %2, 2.000000e+00, !dbg !94
  %cmp1 = fcmp oge double %1, %div, !dbg !94
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !94

land.rhs:                                         ; preds = %for.body
  %3 = load double* %aa, align 8, !dbg !95
  %4 = load double* %a, align 8, !dbg !95
  %add = fadd double %4, 1.000000e+00, !dbg !95
  %div2 = fdiv double %add, 2.000000e+00, !dbg !95
  %cmp3 = fcmp ole double %3, %div2, !dbg !95
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %5 = phi i1 [ false, %for.body ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %5 to i32, !dbg !97
  call void @__VERIFIER_assume(i32 %land.ext), !dbg !97
  %6 = load double* %aa, align 8, !dbg !99
  %call4 = call double @SIN(double %6), !dbg !99
  %7 = load double* %aa, align 8, !dbg !100
  %sub = fsub double -0.000000e+00, %7, !dbg !100
  %call5 = call double @SIN(double %sub), !dbg !100
  %add6 = fadd double %call4, %call5, !dbg !100
  store double %add6, double* %r, align 8, !dbg !100
  %8 = load double* %r, align 8, !dbg !101
  %cmp7 = fcmp oge double %8, -6.000000e-02, !dbg !101
  br i1 %cmp7, label %land.rhs8, label %land.end10, !dbg !101

land.rhs8:                                        ; preds = %land.end
  %9 = load double* %r, align 8, !dbg !102
  %cmp9 = fcmp ole double %9, 6.000000e-02, !dbg !102
  br label %land.end10

land.end10:                                       ; preds = %land.rhs8, %land.end
  %10 = phi i1 [ false, %land.end ], [ %cmp9, %land.rhs8 ]
  %land.ext11 = zext i1 %10 to i32, !dbg !104
  call void @__VERIFIER_assert(i32 %land.ext11), !dbg !104
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %land.end10
  %11 = load double* %a, align 8, !dbg !107
  %inc = fadd double %11, 1.000000e+00, !dbg !107
  store double %inc, double* %a, align 8, !dbg !107
  br label %for.cond, !dbg !107

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !108
}

declare double @__VERIFIER_nondet_double(...) #3

declare void @__VERIFIER_assume(i32) #3

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (tags/RELEASE_352/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c] [DW_LANG_C99]
!1 = metadata !{metadata !"sin_interpolated_negation.c", metadata !"/home/lich/Documents/test_CFG_v4"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !14, metadata !15, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_assert", metadata !"__VERIFIER_assert", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @__VERIFIER_assert, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [__VERIFIER_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SIN_0_180", metadata !"SIN_0_180", metadata !"", i32 110, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @SIN_0_180, null, null, metadata !2, i32 111} ; [ DW_TAG_subprogram ] [line 110] [def] [scope 111] [SIN_0_180]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SIN_180", metadata !"SIN_180", metadata !"", i32 123, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @SIN_180, null, null, metadata !2, i32 124} ; [ DW_TAG_subprogram ] [line 123] [def] [scope 124] [SIN_180]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SIN_POS", metadata !"SIN_POS", metadata !"", i32 129, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @SIN_POS, null, null, metadata !2, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [SIN_POS]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SIN", metadata !"SIN", metadata !"", i32 135, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (double)* @SIN, null, null, metadata !2, i32 136} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 136] [SIN]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 141, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786484, i32 0, null, metadata !"T", metadata !"T", metadata !"", metadata !5, i32 15, metadata !21, i32 0, i32 1, [362 x double]* @T, null} ; [ DW_TAG_variable ] [T] [line 15] [def]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 23168, i64 64, i32 0, i32 0, metadata !22, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 23168, align 64, offset 0] [from ]
!22 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 362}      ; [ DW_TAG_subrange_type ] [0, 361]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (tags/RELEASE_352/final)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"cond", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 12]
!29 = metadata !{i32 12, i32 28, metadata !4, null}
!30 = metadata !{i32 12, i32 40, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!32 = metadata !{i32 12, i32 49, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 12, i32 49, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!34 = metadata !{i32 786443, metadata !1, metadata !31, i32 12, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!35 = metadata !{i32 12, i32 58, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 12, i32 58, i32 3, i32 9} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!37 = metadata !{i32 12, i32 80, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 80, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!39 = metadata !{i32 786689, metadata !9, metadata !"x", metadata !5, i32 16777326, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 110]
!40 = metadata !{i32 110, i32 25, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"dx", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dx] [line 112]
!42 = metadata !{i32 112, i32 10, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"i_dx", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i_dx] [line 112]
!44 = metadata !{i32 112, i32 14, metadata !9, null}
!45 = metadata !{i32 786688, metadata !9, metadata !"v_inf", metadata !5, i32 112, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v_inf] [line 112]
!46 = metadata !{i32 112, i32 20, metadata !9, null}
!47 = metadata !{i32 786688, metadata !9, metadata !"v_sup", metadata !5, i32 113, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v_sup] [line 113]
!48 = metadata !{i32 113, i32 10, metadata !9, null}
!49 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 114, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 114]
!50 = metadata !{i32 114, i32 7, metadata !9, null}
!51 = metadata !{i32 115, i32 3, metadata !9, null}
!52 = metadata !{i32 116, i32 3, metadata !9, null}
!53 = metadata !{i32 117, i32 3, metadata !9, null}
!54 = metadata !{i32 118, i32 3, metadata !9, null}
!55 = metadata !{i32 119, i32 3, metadata !9, null}
!56 = metadata !{i32 120, i32 3, metadata !9, null}
!57 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !5, i32 16777339, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 123]
!58 = metadata !{i32 123, i32 23, metadata !13, null}
!59 = metadata !{i32 125, i32 7, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !13, i32 125, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!61 = metadata !{i32 125, i32 20, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !60, i32 125, i32 20, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!63 = metadata !{i32 126, i32 15, metadata !60, null}
!64 = metadata !{i32 127, i32 1, metadata !13, null}
!65 = metadata !{i32 786689, metadata !14, metadata !"x", metadata !5, i32 16777345, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 129]
!66 = metadata !{i32 129, i32 23, metadata !14, null}
!67 = metadata !{i32 131, i32 7, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !14, i32 131, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!69 = metadata !{i32 131, i32 21, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !68, i32 131, i32 21, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!71 = metadata !{i32 132, i32 15, metadata !68, null}
!72 = metadata !{i32 133, i32 1, metadata !14, null}
!73 = metadata !{i32 786689, metadata !15, metadata !"x", metadata !5, i32 16777351, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 135]
!74 = metadata !{i32 135, i32 19, metadata !15, null}
!75 = metadata !{i32 137, i32 7, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !15, i32 137, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!77 = metadata !{i32 137, i32 20, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 137, i32 20, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!79 = metadata !{i32 138, i32 15, metadata !76, null}
!80 = metadata !{i32 139, i32 1, metadata !15, null}
!81 = metadata !{i32 786688, metadata !16, metadata !"a", metadata !5, i32 143, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 143]
!82 = metadata !{i32 143, i32 10, metadata !16, null}
!83 = metadata !{i32 786688, metadata !16, metadata !"aa", metadata !5, i32 143, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa] [line 143]
!84 = metadata !{i32 143, i32 13, metadata !16, null}
!85 = metadata !{i32 786688, metadata !16, metadata !"r", metadata !5, i32 143, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 143]
!86 = metadata !{i32 143, i32 17, metadata !16, null}
!87 = metadata !{i32 145, i32 8, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !16, i32 145, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!89 = metadata !{i32 145, i32 8, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !91, i32 145, i32 8, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!91 = metadata !{i32 786443, metadata !1, metadata !88, i32 145, i32 8, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!92 = metadata !{i32 146, i32 10, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !88, i32 145, i32 33, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!94 = metadata !{i32 147, i32 5, metadata !93, null}
!95 = metadata !{i32 147, i32 5, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !93, i32 147, i32 5, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!97 = metadata !{i32 147, i32 5, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !93, i32 147, i32 5, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!99 = metadata !{i32 149, i32 9, metadata !93, null}
!100 = metadata !{i32 149, i32 19, metadata !93, null}
!101 = metadata !{i32 151, i32 5, metadata !93, null}
!102 = metadata !{i32 151, i32 5, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !93, i32 151, i32 5, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!104 = metadata !{i32 151, i32 5, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !93, i32 151, i32 5, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [/home/lich/Documents/test_CFG_v4/sin_interpolated_negation.c]
!106 = metadata !{i32 152, i32 3, metadata !93, null}
!107 = metadata !{i32 145, i32 28, metadata !88, null}
!108 = metadata !{i32 153, i32 3, metadata !16, null}
