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

       sipush 1
       sipush 1
       iadd
       ; END


       ; convert to String;
       invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
       ; call println 
       invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

       return

.end method
