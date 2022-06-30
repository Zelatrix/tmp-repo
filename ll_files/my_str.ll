; ModuleID = "/home/callum/specifications-variable-addition/codegen.py"
target triple = "x86_64-unknown-linux-gnu"
target datalayout = ""

declare i32 @"printf"([56 x i8]* %".1", ...)

define void @"main"()
{
entry:
  %".2" = bitcast [6 x i8]* @"fstr" to [56 x i8]*
  %".3" = alloca [56 x i8]
  %".4" = getelementptr [56 x i8], [56 x i8]* %".3", i32 0
  %".5" = call i32 ([56 x i8]*, ...) @printf([56 x i8]* %".3") nounwind
  ret void
}

@"fstr" = internal constant [6 x i8] c"%lf \0a\00"
