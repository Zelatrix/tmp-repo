@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define dso_local i32 @main() {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ;call void @llvm.dbg.declare(metadata [3 x i32]* %2, metadata !12, metadata !DIExpression()), !dbg !16
  ;call void @llvm.dbg.declare(metadata i32* %3, metadata !17, metadata !DIExpression()), !dbg !18
  ;call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !20
  ;call void @llvm.dbg.declare(metadata i32* %5, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 3, i32* %5, align 4
  br label %6

6:                                                ; preds = %10, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  br label %6

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %20, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24
  br label %16

26:                                               ; preds = %16
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare void @llvm.dbg.declare(metadata, metadata, metadata)

declare dso_local i32 @printf(i8*, ...)
