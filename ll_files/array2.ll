@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@length = dso_local global i32 3, align 4
@array = common dso_local global [3 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = load i32, i32* @i, align 4
  %4 = load i32, i32* @length, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i32, i32* @i, align 4
  %8 = load i32, i32* @i, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* @array, i64 0, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @i, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @i, align 4
  br label %2

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i32, i32* @j, align 4
  %16 = load i32, i32* @length, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* @j, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* @array, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @j, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @j, align 4
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @printf(i8*, ...)