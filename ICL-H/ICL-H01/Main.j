.class public Demo
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokenonvirtual java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
       ; set limits used by this method
       .limit locals  4
       .limit stack 256

       ; setup local variables:

       ;    1 - the PrintStream object held in java.lang.System.out
       getstatic java/lang/System/out Ljava/io/PrintStream;

       ; place your bytecodes here
       ; START

       new frame_0
       dup
       invokespecial frame_0/<init>()V
       dup
       astore_3
       dup
       sipush 2
       putfield frame_0/x I
       pop
       new frame_1
       dup
       invokespecial frame_1/<init>()V
       dup
       aload_3
       putfield frame_1/sl Lframe_0;
       dup
       astore_3
       dup
       new frame_2
       dup
       invokespecial frame_2/<init>()V
       dup
       aload_3
       putfield frame_2/sl Lframe_1;
       dup
       astore_3
       dup
       aload_3
       getfield frame_2/sl Lframe_1;
       getfield frame_1/sl Lframe_0;
       getfield frame_0/x I
       sipush 1
       iadd
       putfield frame_2/x I
       pop
       aload_3
       getfield frame_2/x I
       aload_3
       getfield frame_2/x I
       iadd
       aload_3
       getfield frame_2/sl Lframe_1;
       astore_3
       putfield frame_1/y I
       pop
       aload_3
       getfield frame_1/sl Lframe_0;
       getfield frame_0/x I
       aload_3
       getfield frame_1/y I
       imul
       aload_3
       getfield frame_1/sl Lframe_0;
       astore_3
       ; END


       ; convert to String;
       invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
       ; call println 
       invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

       return

.end method
