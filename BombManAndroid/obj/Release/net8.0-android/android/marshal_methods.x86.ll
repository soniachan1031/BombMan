; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [30 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [60 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 23
	i32 117431740, ; 1: System.Runtime.InteropServices => 0x6ffddbc => 18
	i32 205061960, ; 2: System.ComponentModel => 0xc38ff48 => 10
	i32 379916513, ; 3: System.Threading.Thread.dll => 0x16a510e1 => 23
	i32 395744057, ; 4: _Microsoft.Android.Resource.Designer => 0x17969339 => 0
	i32 442565967, ; 5: System.Collections => 0x1a61054f => 7
	i32 459347974, ; 6: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 19
	i32 469710990, ; 7: System.dll => 0x1bff388e => 25
	i32 498788369, ; 8: System.ObjectModel => 0x1dbae811 => 16
	i32 507640256, ; 9: MonoGame.Framework => 0x1e41f9c0 => 1
	i32 672442732, ; 10: System.Collections.Concurrent => 0x2814a96c => 4
	i32 823281589, ; 11: System.Private.Uri.dll => 0x311247b5 => 17
	i32 904024072, ; 12: System.ComponentModel.Primitives.dll => 0x35e25008 => 8
	i32 992768348, ; 13: System.Collections.dll => 0x3b2c715c => 7
	i32 1019214401, ; 14: System.Drawing => 0x3cbffa41 => 13
	i32 1036536393, ; 15: System.Drawing.Primitives.dll => 0x3dc84a49 => 12
	i32 1053355150, ; 16: BombMan.dll => 0x3ec8ec8e => 2
	i32 1082857460, ; 17: System.ComponentModel.TypeConverter => 0x408b17f4 => 9
	i32 1098259244, ; 18: System => 0x41761b2c => 25
	i32 1324164729, ; 19: System.Linq => 0x4eed2679 => 14
	i32 1449098924, ; 20: BombManAndroid => 0x565f7eac => 3
	i32 1543031311, ; 21: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 22
	i32 1639986890, ; 22: System.Text.RegularExpressions => 0x61c036ca => 22
	i32 1657153582, ; 23: System.Runtime => 0x62c6282e => 20
	i32 1780572499, ; 24: Mono.Android.Runtime.dll => 0x6a216153 => 28
	i32 1824175904, ; 25: System.Text.Encoding.Extensions => 0x6cbab720 => 21
	i32 1910275211, ; 26: System.Collections.NonGeneric.dll => 0x71dc7c8b => 5
	i32 2079903147, ; 27: System.Runtime.dll => 0x7bf8cdab => 20
	i32 2090596640, ; 28: System.Numerics.Vectors => 0x7c9bf920 => 15
	i32 2127167465, ; 29: System.Console => 0x7ec9ffe9 => 11
	i32 2142473426, ; 30: System.Collections.Specialized => 0x7fb38cd2 => 6
	i32 2193016926, ; 31: System.ObjectModel.dll => 0x82b6c85e => 16
	i32 2305521784, ; 32: System.Private.CoreLib.dll => 0x896b7878 => 26
	i32 2435356389, ; 33: System.Console.dll => 0x912896e5 => 11
	i32 2475788418, ; 34: Java.Interop.dll => 0x93918882 => 27
	i32 2585220780, ; 35: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 21
	i32 2665622720, ; 36: System.Drawing.Primitives => 0x9ee22cc0 => 12
	i32 2789782382, ; 37: BombMan => 0xa648b36e => 2
	i32 2909740682, ; 38: System.Private.CoreLib => 0xad6f1e8a => 26
	i32 2919462931, ; 39: System.Numerics.Vectors.dll => 0xae037813 => 15
	i32 2959614098, ; 40: System.ComponentModel.dll => 0xb0682092 => 10
	i32 3038032645, ; 41: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 0
	i32 3059408633, ; 42: Mono.Android.Runtime => 0xb65adef9 => 28
	i32 3059793426, ; 43: System.ComponentModel.Primitives => 0xb660be12 => 8
	i32 3220365878, ; 44: System.Threading => 0xbff2e236 => 24
	i32 3366347497, ; 45: Java.Interop => 0xc8a662e9 => 27
	i32 3471940407, ; 46: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 9
	i32 3476120550, ; 47: Mono.Android => 0xcf3163e6 => 29
	i32 3608519521, ; 48: System.Linq.dll => 0xd715a361 => 14
	i32 3672681054, ; 49: Mono.Android.dll => 0xdae8aa5e => 29
	i32 3792276235, ; 50: System.Collections.NonGeneric => 0xe2098b0b => 5
	i32 3802395368, ; 51: System.Collections.Specialized.dll => 0xe2a3f2e8 => 6
	i32 3831343120, ; 52: MonoGame.Framework.dll => 0xe45da810 => 1
	i32 3849253459, ; 53: System.Runtime.InteropServices.dll => 0xe56ef253 => 18
	i32 3891280793, ; 54: BombManAndroid.dll => 0xe7f03b99 => 3
	i32 3896106733, ; 55: System.Collections.Concurrent.dll => 0xe839deed => 4
	i32 4073602200, ; 56: System.Threading.dll => 0xf2ce3c98 => 24
	i32 4099507663, ; 57: System.Drawing.dll => 0xf45985cf => 13
	i32 4100113165, ; 58: System.Private.Uri => 0xf462c30d => 17
	i32 4181436372 ; 59: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 19
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [60 x i32] [
	i32 23, ; 0
	i32 18, ; 1
	i32 10, ; 2
	i32 23, ; 3
	i32 0, ; 4
	i32 7, ; 5
	i32 19, ; 6
	i32 25, ; 7
	i32 16, ; 8
	i32 1, ; 9
	i32 4, ; 10
	i32 17, ; 11
	i32 8, ; 12
	i32 7, ; 13
	i32 13, ; 14
	i32 12, ; 15
	i32 2, ; 16
	i32 9, ; 17
	i32 25, ; 18
	i32 14, ; 19
	i32 3, ; 20
	i32 22, ; 21
	i32 22, ; 22
	i32 20, ; 23
	i32 28, ; 24
	i32 21, ; 25
	i32 5, ; 26
	i32 20, ; 27
	i32 15, ; 28
	i32 11, ; 29
	i32 6, ; 30
	i32 16, ; 31
	i32 26, ; 32
	i32 11, ; 33
	i32 27, ; 34
	i32 21, ; 35
	i32 12, ; 36
	i32 2, ; 37
	i32 26, ; 38
	i32 15, ; 39
	i32 10, ; 40
	i32 0, ; 41
	i32 28, ; 42
	i32 8, ; 43
	i32 24, ; 44
	i32 27, ; 45
	i32 9, ; 46
	i32 29, ; 47
	i32 14, ; 48
	i32 29, ; 49
	i32 5, ; 50
	i32 6, ; 51
	i32 1, ; 52
	i32 18, ; 53
	i32 3, ; 54
	i32 4, ; 55
	i32 24, ; 56
	i32 13, ; 57
	i32 17, ; 58
	i32 19 ; 59
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
