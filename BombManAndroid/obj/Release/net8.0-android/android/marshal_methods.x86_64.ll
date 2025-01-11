; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [30 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [60 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 29
	i64 750875890346172408, ; 1: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 23
	i64 799765834175365804, ; 2: System.ComponentModel.dll => 0xb1956c9f18442ac => 10
	i64 1268860745194512059, ; 3: System.Drawing.dll => 0x119be62002c19ebb => 13
	i64 1513467482682125403, ; 4: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 28
	i64 1537168428375924959, ; 5: System.Threading.Thread.dll => 0x15551e8a954ae0df => 23
	i64 1767386781656293639, ; 6: System.Private.Uri.dll => 0x188704e9f5582107 => 17
	i64 1875417405349196092, ; 7: System.Drawing.Primitives => 0x1a06d2319b6c713c => 12
	i64 2102659300918482391, ; 8: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 12
	i64 2287834202362508563, ; 9: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 4
	i64 2494412289865674793, ; 10: BombMan => 0x229deec2fccff029 => 2
	i64 2497223385847772520, ; 11: System.Runtime => 0x22a7eb7046413568 => 20
	i64 3311221304742556517, ; 12: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 15
	i64 3340764486024919100, ; 13: BombMan.dll => 0x2e5cc79993c1783c => 2
	i64 3551103847008531295, ; 14: System.Private.CoreLib.dll => 0x31480e226177735f => 26
	i64 3571415421602489686, ; 15: System.Runtime.dll => 0x319037675df7e556 => 20
	i64 3765805579991108233, ; 16: BombManAndroid.dll => 0x3442d439108dca89 => 3
	i64 4009997192427317104, ; 17: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 19
	i64 4154383907710350974, ; 18: System.ComponentModel => 0x39a7562737acb67e => 10
	i64 4205801962323029395, ; 19: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 9
	i64 4783864354832935512, ; 20: MonoGame.Framework => 0x4263b348e3786a58 => 1
	i64 4809057822547766521, ; 21: System.Drawing => 0x42bd349c3145ecf9 => 13
	i64 5103417709280584325, ; 22: System.Collections.Specialized => 0x46d2fb5e161b6285 => 6
	i64 5182934613077526976, ; 23: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 6
	i64 6357457916754632952, ; 24: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 0
	i64 6374883192182784167, ; 25: BombManAndroid => 0x5878227cdaa9c0a7 => 3
	i64 6894844156784520562, ; 26: System.Numerics.Vectors => 0x5faf683aead1ad72 => 15
	i64 7270811800166795866, ; 27: System.Linq => 0x64e71ccf51a90a5a => 14
	i64 7377312882064240630, ; 28: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 9
	i64 7489048572193775167, ; 29: System.ObjectModel => 0x67ee71ff6b419e3f => 16
	i64 7714652370974252055, ; 30: System.Private.CoreLib => 0x6b0ff375198b9c17 => 26
	i64 8064050204834738623, ; 31: System.Collections.dll => 0x6fe942efa61731bf => 7
	i64 8167236081217502503, ; 32: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 27
	i64 8185542183669246576, ; 33: System.Collections => 0x7198e33f4794aa70 => 7
	i64 8563666267364444763, ; 34: System.Private.Uri => 0x76d841191140ca5b => 17
	i64 8626175481042262068, ; 35: Java.Interop => 0x77b654e585b55834 => 27
	i64 9659729154652888475, ; 36: System.Text.RegularExpressions => 0x860e407c9991dd9b => 22
	i64 9702891218465930390, ; 37: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 5
	i64 9808709177481450983, ; 38: Mono.Android.dll => 0x881f890734e555e7 => 29
	i64 11485890710487134646, ; 39: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 18
	i64 12201331334810686224, ; 40: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 19
	i64 12475113361194491050, ; 41: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 0
	i64 12708922737231849740, ; 42: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 21
	i64 13343850469010654401, ; 43: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 28
	i64 13717397318615465333, ; 44: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 8
	i64 13881769479078963060, ; 45: System.Console.dll => 0xc0a5f3cade5c6774 => 11
	i64 14125464355221830302, ; 46: System.Threading.dll => 0xc407bafdbc707a9e => 24
	i64 14254574811015963973, ; 47: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 21
	i64 14843517874685189901, ; 48: MonoGame.Framework.dll => 0xcdfec4dcd9c59f0d => 1
	i64 15076659072870671916, ; 49: System.ObjectModel.dll => 0xd13b0d8c1620662c => 16
	i64 15133485256822086103, ; 50: System.Linq.dll => 0xd204f0a9127dd9d7 => 14
	i64 15527772828719725935, ; 51: System.Console => 0xd77dbb1e38cd3d6f => 11
	i64 15609085926864131306, ; 52: System.dll => 0xd89e9cf3334914ea => 25
	i64 16154507427712707110, ; 53: System => 0xe03056ea4e39aa26 => 25
	i64 16890310621557459193, ; 54: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 22
	i64 17008137082415910100, ; 55: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 5
	i64 17062143951396181894, ; 56: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 8
	i64 17712670374920797664, ; 57: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 18
	i64 18025913125965088385, ; 58: System.Threading => 0xfa28e87b91334681 => 24
	i64 18245806341561545090 ; 59: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 4
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [60 x i32] [
	i32 29, ; 0
	i32 23, ; 1
	i32 10, ; 2
	i32 13, ; 3
	i32 28, ; 4
	i32 23, ; 5
	i32 17, ; 6
	i32 12, ; 7
	i32 12, ; 8
	i32 4, ; 9
	i32 2, ; 10
	i32 20, ; 11
	i32 15, ; 12
	i32 2, ; 13
	i32 26, ; 14
	i32 20, ; 15
	i32 3, ; 16
	i32 19, ; 17
	i32 10, ; 18
	i32 9, ; 19
	i32 1, ; 20
	i32 13, ; 21
	i32 6, ; 22
	i32 6, ; 23
	i32 0, ; 24
	i32 3, ; 25
	i32 15, ; 26
	i32 14, ; 27
	i32 9, ; 28
	i32 16, ; 29
	i32 26, ; 30
	i32 7, ; 31
	i32 27, ; 32
	i32 7, ; 33
	i32 17, ; 34
	i32 27, ; 35
	i32 22, ; 36
	i32 5, ; 37
	i32 29, ; 38
	i32 18, ; 39
	i32 19, ; 40
	i32 0, ; 41
	i32 21, ; 42
	i32 28, ; 43
	i32 8, ; 44
	i32 11, ; 45
	i32 24, ; 46
	i32 21, ; 47
	i32 1, ; 48
	i32 16, ; 49
	i32 14, ; 50
	i32 11, ; 51
	i32 25, ; 52
	i32 25, ; 53
	i32 22, ; 54
	i32 5, ; 55
	i32 8, ; 56
	i32 18, ; 57
	i32 24, ; 58
	i32 4 ; 59
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
