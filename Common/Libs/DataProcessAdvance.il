
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1




// Metadata version: v2.0.50727
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern MWArray
{
  .publickeytoken = (E1 D8 4A 0D A1 9D B8 6F )                         // ..J....o
  .ver 2:11:1:0
}
.assembly DataProcessAdvance
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public DataProcessAdvance.ctf
{
  // Offset: 0x00000000 Length: 0x0020CF21
  // 警告: 创建了托管资源文件 DataProcessAdvance.ctf
}
.module DataProcessAdvance.dll
// MVID: {8188012D-13ED-4DA2-AC44-A48A0D742FF4}
.imagebase 0x00400000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x000000001AC90000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi DataProcessAdvance.DataProcessAdvanceClass
       extends [mscorlib]System.Object
       implements [mscorlib]System.IDisposable
{
  .field private static class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR mcr
  .field private bool disposed
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       151 (0x97)
    .maxstack  5
    .locals init (class [mscorlib]System.Reflection.Assembly V_0,
             string V_1,
             int32 V_2,
             string V_3,
             class [mscorlib]System.IO.Stream V_4,
             string[] V_5,
             string V_6,
             string[] V_7,
             int32 V_8)
    IL_0000:  ldsfld     bool [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::MCRAppInitialized
    IL_0005:  brfalse    IL_008c

    IL_000a:  call       class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::GetExecutingAssembly()
    IL_000f:  stloc.0
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance string [mscorlib]System.Reflection.Assembly::get_Location()
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  ldstr      "\\"
    IL_001d:  callvirt   instance int32 [mscorlib]System.String::LastIndexOf(string)
    IL_0022:  stloc.2
    IL_0023:  ldloc.1
    IL_0024:  ldloc.2
    IL_0025:  ldloc.1
    IL_0026:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_002b:  ldloc.2
    IL_002c:  sub
    IL_002d:  callvirt   instance string [mscorlib]System.String::Remove(int32,
                                                                         int32)
    IL_0032:  stloc.1
    IL_0033:  ldstr      "DataProcessAdvance.ctf"
    IL_0038:  stloc.3
    IL_0039:  ldnull
    IL_003a:  stloc.s    V_4
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance string[] [mscorlib]System.Reflection.Assembly::GetManifestResourceNames()
    IL_0042:  stloc.s    V_5
    IL_0044:  ldloc.s    V_5
    IL_0046:  stloc.s    V_7
    IL_0048:  ldc.i4.0
    IL_0049:  stloc.s    V_8
    IL_004b:  br.s       IL_0070

    IL_004d:  ldloc.s    V_7
    IL_004f:  ldloc.s    V_8
    IL_0051:  ldelem.ref
    IL_0052:  stloc.s    V_6
    IL_0054:  ldloc.s    V_6
    IL_0056:  ldloc.3
    IL_0057:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_005c:  brfalse.s  IL_006a

    IL_005e:  ldloc.0
    IL_005f:  ldloc.s    V_6
    IL_0061:  callvirt   instance class [mscorlib]System.IO.Stream [mscorlib]System.Reflection.Assembly::GetManifestResourceStream(string)
    IL_0066:  stloc.s    V_4
    IL_0068:  br.s       IL_0078

    IL_006a:  ldloc.s    V_8
    IL_006c:  ldc.i4.1
    IL_006d:  add
    IL_006e:  stloc.s    V_8
    IL_0070:  ldloc.s    V_8
    IL_0072:  ldloc.s    V_7
    IL_0074:  ldlen
    IL_0075:  conv.i4
    IL_0076:  blt.s      IL_004d

    IL_0078:  ldstr      ""
    IL_007d:  ldloc.1
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldc.i4.1
    IL_0081:  newobj     instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::.ctor(string,
                                                                                          string,
                                                                                          class [mscorlib]System.IO.Stream,
                                                                                          bool)
    IL_0086:  stsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_008b:  ret

    IL_008c:  ldstr      "MWArray assembly could not be initialized"
    IL_0091:  newobj     instance void [mscorlib]System.ApplicationException::.ctor(string)
    IL_0096:  throw
  } // end of method DataProcessAdvanceClass::.cctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method DataProcessAdvanceClass::.ctor

  .method family hidebysig virtual instance void 
          Finalize() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  2
    .try
    {
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.0
      IL_0002:  callvirt   instance void DataProcessAdvance.DataProcessAdvanceClass::Dispose(bool)
      IL_0007:  leave.s    IL_0010

    }  // end .try
    finally
    {
      IL_0009:  ldarg.0
      IL_000a:  call       instance void [mscorlib]System.Object::Finalize()
      IL_000f:  endfinally
    }  // end handler
    IL_0010:  ret
  } // end of method DataProcessAdvanceClass::Finalize

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  callvirt   instance void DataProcessAdvance.DataProcessAdvanceClass::Dispose(bool)
    IL_0007:  ldarg.0
    IL_0008:  call       void [mscorlib]System.GC::SuppressFinalize(object)
    IL_000d:  ret
  } // end of method DataProcessAdvanceClass::Dispose

  .method family hidebysig newslot virtual 
          instance void  Dispose(bool disposing) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool DataProcessAdvance.DataProcessAdvanceClass::disposed
    IL_0006:  brtrue.s   IL_0011

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  stfld      bool DataProcessAdvance.DataProcessAdvanceClass::disposed
    IL_000f:  ldarg.1
    IL_0010:  pop
    IL_0011:  ret
  } // end of method DataProcessAdvanceClass::Dispose

  .method public hidebysig instance void 
          buffer() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldc.i4.0
    IL_0006:  ldstr      "buffer"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  pop
    IL_0017:  ret
  } // end of method DataProcessAdvanceClass::buffer

  .method public hidebysig instance void 
          buffer(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] varargin) cil managed
  {
    .param [1]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldc.i4.0
    IL_0006:  ldstr      "buffer"
    IL_000b:  ldarg.1
    IL_000c:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0011:  pop
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::buffer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          buffer(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "buffer"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::buffer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          buffer(int32 numArgsOut,
                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] varargin) cil managed
  {
    .param [2]
    .custom instance void [mscorlib]System.ParamArrayAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "buffer"
    IL_000b:  ldarg.2
    IL_000c:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0011:  ret
  } // end of method DataProcessAdvanceClass::buffer

  .method public hidebysig instance void 
          buffer(int32 numArgsOut,
                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "buffer"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::buffer

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge_1
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge_1
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    tt2_0
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_2) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge_1
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    tt2_0
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_2
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_2,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_2) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge_1
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    tt2_0
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_2
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wvelo_2
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_abrupt_change_detection(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_2,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_2,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_2) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldc.i4.8
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge_1
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    tt2_0
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_2
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wvelo_2
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.7
    IL_0033:  ldarg.s    wx_gauge_2
    IL_0035:  stelem.ref
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003c:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge_1
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge_1
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    tt2_0
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_2) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge_1
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    tt2_0
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_2
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_2,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_2) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge_1
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    tt2_0
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_2
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wvelo_2
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_1,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2_0,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_2,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo_2,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge_2) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_abrupt_change_detection"
    IL_000b:  ldc.i4.8
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge_1
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    tt2_0
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_2
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wvelo_2
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.7
    IL_0035:  ldarg.s    wx_gauge_2
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003e:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance void 
          sub_abrupt_change_detection(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_abrupt_change_detection"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_abrupt_change_detection

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_diff) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_diff
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_p
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_diff) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_p
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_diff
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance void 
          sub_calculate_change_difference(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference_of_two_direction() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference_of_two_direction(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference_of_two_direction(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference_of_two_direction(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_change_difference_of_two_direction(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_diff) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_diff
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference_of_two_direction(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference_of_two_direction(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference_of_two_direction(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference_of_two_direction(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_p
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_change_difference_of_two_direction(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_p,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_diff) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_p
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_diff
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance void 
          sub_calculate_change_difference_of_two_direction(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_change_difference_of_two_direction"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_change_difference_of_two_direction

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wdisp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray velo_band) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wdisp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    velo_band
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wdisp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray velo_band) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wdisp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    velo_band
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance void 
          sub_calculate_prof_energy_weight_coefficient(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wdisp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_prof_energy_weight_coefficient_single_para(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray velo_band) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wvelo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wdisp
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    velo_band
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wdisp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_L,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_R,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wy0,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wdisp,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray velo_band) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wy0
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wvelo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wdisp
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    velo_band
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance void 
          sub_calculate_prof_energy_weight_coefficient_single_para(int32 numArgsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_prof_energy_weight_coefficient_singl"
    + "e_para"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_prof_energy_weight_coefficient_single_para

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wp_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_gauge) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wp_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wp_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_gauge,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_level) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wp_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wp_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wp_level
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_calculate_TQI_and_STD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_gauge,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_level,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_twist) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldc.i4.8
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wp_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wp_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wp_level
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.7
    IL_0033:  ldarg.s    wp_twist
    IL_0035:  stelem.ref
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003c:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wp_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wp_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wp_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wp_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_gauge) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wp_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wp_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wp_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_gauge,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_level) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wp_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wp_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wp_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wp_level
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_prof_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_L,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_align_R,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_gauge,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_level,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp_twist) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000b:  ldc.i4.8
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wp_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wp_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wp_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wp_level
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.7
    IL_0035:  ldarg.s    wp_twist
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003e:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance void 
          sub_calculate_TQI_and_STD(int32 numArgsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                    class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_calculate_TQI_and_STD"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_calculate_TQI_and_STD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_correlation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray y) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_correlation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_correlation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_correlation(int32 numArgsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_correlation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_correlation(int32 numArgsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray y) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_correlation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance void 
          sub_correlation(int32 numArgsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_correlation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extr() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extr(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_extr(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extr(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extr"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extr(int32 numArgsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extr"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_extr(int32 numArgsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray x,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_extr"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance void 
          sub_extr(int32 numArgsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_extr"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_extr

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Freq_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_filter_by_fft_and_ifft(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_H) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    Freq_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    Freq_H
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Freq_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_L,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Freq_H) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    Fs
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    Freq_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    Freq_H
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance void 
          sub_filter_by_fft_and_ifft(int32 numArgsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_filter_by_fft_and_ifft"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_filter_by_fft_and_ifft

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_invalid_segment_by_peak() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_invalid_segment_by_peak(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_invalid_segment_by_peak(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_find_invalid_segment_by_peak(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_invalid_segment_by_peak(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_invalid_segment_by_peak(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_invalid_segment_by_peak(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_find_invalid_segment_by_peak(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wstd,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_rms
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance void 
          sub_find_invalid_segment_by_peak(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_find_invalid_segment_by_peak"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_find_invalid_segment_by_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wx_level
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.8
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wx_level
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.7
    IL_0033:  ldarg.s    wvelo
    IL_0035:  stelem.ref
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003c:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.s   9
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    wx_align_L
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    wx_align_R
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    wx_gauge
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    wx_level
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    wvelo
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    wgauge_L
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0042:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_identify_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_R) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldc.i4.s   10
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    wx_align_L
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    wx_align_R
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    wx_gauge
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    wx_level
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    wvelo
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    wgauge_L
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.s   9
    IL_003f:  ldarg.s    wgauge_R
    IL_0041:  stelem.ref
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0048:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wx_level
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.8
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wx_level
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.7
    IL_0035:  ldarg.s    wvelo
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003e:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.s   9
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wx_prof_R
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    wx_align_L
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    wx_align_R
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    wx_gauge
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    wx_level
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    wvelo
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    wgauge_L
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0044:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_R) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_identify_abnormal_point"
    IL_000b:  ldc.i4.s   10
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wx_prof_R
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    wx_align_L
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    wx_align_R
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    wx_gauge
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    wx_level
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    wvelo
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    wgauge_L
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.s   9
    IL_0041:  ldarg.s    wgauge_R
    IL_0043:  stelem.ref
    IL_0044:  ldloc.0
    IL_0045:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_004a:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance void 
          sub_identify_abnormal_point(int32 numArgsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                      class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_identify_abnormal_point"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_identify_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp2) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp2
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp2,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp2
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    tt2
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_kilo_rectification_based_on_step_correlation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp2,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_2) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wp2
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    tt2
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    index_abn_2
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    index_abn_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp2) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    index_abn_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp2
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp2,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    index_abn_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp2
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    tt2
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_1,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wp2,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt2,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_abn_2) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    index_abn_1
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wp2
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    tt2
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    index_abn_2
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance void 
          sub_kilo_rectification_based_on_step_correlation(int32 numArgsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_kilo_rectification_based_on_step_correlation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_kilo_rectification_based_on_step_correlation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_deviation() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_deviation"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_deviation(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_dev) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_deviation"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_deviation(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_deviation"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_deviation(int32 numArgsOut,
                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_dev) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_deviation"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_deviation

  .method public hidebysig instance void 
          sub_merge_deviation(int32 numArgsOut,
                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_deviation"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_deviation

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_invalid_identification_information() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_invalid_identification_information"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_invalid_identification_information(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_ivd) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_invalid_identification_information"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_merge_invalid_identification_information(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_ivd,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_invalid_identification_information"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_invalid_identification_information(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_invalid_identification_information"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_invalid_identification_information(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_ivd) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_invalid_identification_information"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_merge_invalid_identification_information(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_ivd,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray len_win) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_merge_invalid_identification_information"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance void 
          sub_merge_invalid_identification_information(int32 numArgsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_merge_invalid_identification_information"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_merge_invalid_identification_information

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_modify_end_point_by_mean_peak() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_modify_end_point_by_mean_peak(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_rms) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_modify_end_point_by_mean_peak(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_rms,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_modify_end_point_by_mean_peak(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_rms,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_modify_end_point_by_mean_peak(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_modify_end_point_by_mean_peak(int32 numArgsOut,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_rms) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_modify_end_point_by_mean_peak(int32 numArgsOut,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_rms,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_modify_end_point_by_mean_peak(int32 numArgsOut,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray index_rms,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance void 
          sub_modify_end_point_by_mean_peak(int32 numArgsOut,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                            class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_modify_end_point_by_mean_peak"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_modify_end_point_by_mean_peak

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_rms
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_rms
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_ip
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_rms
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_rms
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_ip
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance void 
          sub_preprocessing_abnormal_point(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_rms
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_rms
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_ip
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_ACD(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_rms
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_ip
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_rms
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_rms
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_ip
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_rms
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_ip
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance void 
          sub_preprocessing_abnormal_point_for_ACD(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_ACD"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_ACD

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_p2p() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_p2p(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_p2p(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_p2p(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_p2p(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_p2p(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance void 
          sub_preprocessing_abnormal_point_for_p2p(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_p2p"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wx_level
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.8
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_align_L
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    wx_align_R
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    wx_gauge
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    wx_level
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.7
    IL_0033:  ldarg.s    wx_twist
    IL_0035:  stelem.ref
    IL_0036:  ldloc.0
    IL_0037:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.s   9
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    wx_align_L
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    wx_align_R
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    wx_gauge
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    wx_level
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    wx_twist
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    wvelo
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0042:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.s   10
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    wx_align_L
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    wx_align_R
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    wx_gauge
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    wx_level
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    wx_twist
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    wvelo
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.s   9
    IL_003f:  ldarg.s    wgauge_L
    IL_0041:  stelem.ref
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0048:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_abnormal_point_for_TQI(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_R) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldc.i4.s   11
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.1
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.2
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.3
    IL_001d:  stelem.ref
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.3
    IL_0020:  ldarg.s    wx_align_L
    IL_0022:  stelem.ref
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.4
    IL_0025:  ldarg.s    wx_align_R
    IL_0027:  stelem.ref
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  ldarg.s    wx_gauge
    IL_002c:  stelem.ref
    IL_002d:  ldloc.0
    IL_002e:  ldc.i4.6
    IL_002f:  ldarg.s    wx_level
    IL_0031:  stelem.ref
    IL_0032:  ldloc.0
    IL_0033:  ldc.i4.7
    IL_0034:  ldarg.s    wx_twist
    IL_0036:  stelem.ref
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.8
    IL_0039:  ldarg.s    wvelo
    IL_003b:  stelem.ref
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.s   9
    IL_003f:  ldarg.s    wgauge_L
    IL_0041:  stelem.ref
    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.s   10
    IL_0045:  ldarg.s    wgauge_R
    IL_0047:  stelem.ref
    IL_0048:  ldloc.0
    IL_0049:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_004e:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wx_level
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.8
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wx_prof_R
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_align_L
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    wx_align_R
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    wx_gauge
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    wx_level
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  ldc.i4.7
    IL_0035:  ldarg.s    wx_twist
    IL_0037:  stelem.ref
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_003e:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       69 (0x45)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.s   9
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wx_prof_R
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    wx_align_L
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    wx_align_R
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    wx_gauge
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    wx_level
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    wx_twist
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    wvelo
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0044:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.s   10
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wx_prof_R
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    wx_align_L
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    wx_align_R
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    wx_gauge
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    wx_level
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    wx_twist
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    wvelo
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.s   9
    IL_0041:  ldarg.s    wgauge_L
    IL_0043:  stelem.ref
    IL_0044:  ldloc.0
    IL_0045:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_004a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_prof_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_align_R,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_level,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_twist,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_L,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge_R) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000b:  ldc.i4.s   11
    IL_000d:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0012:  stloc.0
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldarg.2
    IL_0016:  stelem.ref
    IL_0017:  ldloc.0
    IL_0018:  ldc.i4.1
    IL_0019:  ldarg.3
    IL_001a:  stelem.ref
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.2
    IL_001d:  ldarg.s    wx_prof_R
    IL_001f:  stelem.ref
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.3
    IL_0022:  ldarg.s    wx_align_L
    IL_0024:  stelem.ref
    IL_0025:  ldloc.0
    IL_0026:  ldc.i4.4
    IL_0027:  ldarg.s    wx_align_R
    IL_0029:  stelem.ref
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.5
    IL_002c:  ldarg.s    wx_gauge
    IL_002e:  stelem.ref
    IL_002f:  ldloc.0
    IL_0030:  ldc.i4.6
    IL_0031:  ldarg.s    wx_level
    IL_0033:  stelem.ref
    IL_0034:  ldloc.0
    IL_0035:  ldc.i4.7
    IL_0036:  ldarg.s    wx_twist
    IL_0038:  stelem.ref
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.8
    IL_003b:  ldarg.s    wvelo
    IL_003d:  stelem.ref
    IL_003e:  ldloc.0
    IL_003f:  ldc.i4.s   9
    IL_0041:  ldarg.s    wgauge_L
    IL_0043:  stelem.ref
    IL_0044:  ldloc.0
    IL_0045:  ldc.i4.s   10
    IL_0047:  ldarg.s    wgauge_R
    IL_0049:  stelem.ref
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0050:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance void 
          sub_preprocessing_abnormal_point_for_TQI(int32 numArgsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_abnormal_point_for_TQI"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_abnormal_point_for_TQI

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_alignment_data() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_alignment_data"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_alignment_data(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_0) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_alignment_data"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_alignment_data(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_0,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww1_0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_alignment_data"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_alignment_data(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_alignment_data"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_alignment_data(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_0) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_alignment_data"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_alignment_data(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww_0,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray ww1_0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_alignment_data"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance void 
          sub_preprocessing_alignment_data(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_alignment_data"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_alignment_data

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_constant_gauge() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_constant_gauge(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_constant_gauge(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_constant_gauge(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_cont_gauge) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_constant_gauge(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_constant_gauge(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_constant_gauge(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_constant_gauge(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wgauge,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_cont_gauge) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_cont_gauge
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance void 
          sub_preprocessing_constant_gauge(int32 numArgsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                           class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_constant_gauge"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_constant_gauge

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_multi_wave
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_peak) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.6
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_multi_wave
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    thresh_multi_peak
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0032:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_continous_multi_wave(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_peak,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldc.i4.7
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_multi_wave
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.5
    IL_0029:  ldarg.s    thresh_multi_peak
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.6
    IL_002e:  ldarg.s    Fs
    IL_0030:  stelem.ref
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0037:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_multi_wave
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_peak) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.6
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_multi_wave
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    thresh_multi_peak
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0034:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_wave,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_multi_peak,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray Fs) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000b:  ldc.i4.7
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_multi_wave
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.5
    IL_002b:  ldarg.s    thresh_multi_peak
    IL_002d:  stelem.ref
    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.6
    IL_0030:  ldarg.s    Fs
    IL_0032:  stelem.ref
    IL_0033:  ldloc.0
    IL_0034:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0039:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance void 
          sub_preprocessing_continous_multi_wave(int32 numArgsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                 class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_continous_multi_wave"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_continous_multi_wave

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_deviation_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_p2p) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldc.i4.5
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    wx_gauge
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.4
    IL_0024:  ldarg.s    thresh_p2p
    IL_0026:  stelem.ref
    IL_0027:  ldloc.0
    IL_0028:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002d:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx0,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx_gauge,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_p2p) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000b:  ldc.i4.5
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    wx_gauge
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.4
    IL_0026:  ldarg.s    thresh_p2p
    IL_0028:  stelem.ref
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance void 
          sub_preprocessing_deviation_by_p2p(int32 numArgsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                             class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_deviation_by_p2p"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_deviation_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_ip
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_rms
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray tt,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_ip) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_rms
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_ip
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance void 
          sub_preprocessing_impulse_noise(int32 numArgsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_impulse_noise_by_forward_difference_method(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_value) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_value) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_value
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance void 
          sub_preprocessing_impulse_noise_by_forward_difference_method(int32 numArgsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                                       class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_impulse_noise_by_forward_differe"
    + "nce_method"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_impulse_noise_by_forward_difference_method

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_by_rms() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_by_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_by_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_by_rms(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_by_rms(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_by_rms(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_by_rms(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_by_rms(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rms) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_rms
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance void 
          sub_preprocessing_invalid_data_by_rms(int32 numArgsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_by_rms"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_by_rms

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_for_low_velocity() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_for_low_velocity(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_for_low_velocity(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_for_low_velocity(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_invalid_data_for_low_velocity(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rela_velo) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000a:  ldc.i4.4
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.3
    IL_001f:  ldarg.s    thresh_rela_velo
    IL_0021:  stelem.ref
    IL_0022:  ldloc.0
    IL_0023:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0028:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_for_low_velocity(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_for_low_velocity(int32 numArgsOut,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_for_low_velocity(int32 numArgsOut,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_for_low_velocity(int32 numArgsOut,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_invalid_data_for_low_velocity(int32 numArgsOut,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wvelo,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_rela_velo) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000b:  ldc.i4.4
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    wvelo
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.3
    IL_0021:  ldarg.s    thresh_rela_velo
    IL_0023:  stelem.ref
    IL_0024:  ldloc.0
    IL_0025:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_002a:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance void 
          sub_preprocessing_invalid_data_for_low_velocity(int32 numArgsOut,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                                          class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_invalid_data_for_low_velocity"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_invalid_data_for_low_velocity

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_wide_gauge_by_p2p() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000a:  ldc.i4.0
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0015:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_wide_gauge_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000a:  ldc.i4.1
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001b:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_wide_gauge_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000a:  ldc.i4.2
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001f:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray 
          sub_preprocessing_wide_gauge_by_p2p(class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_gauge) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  5
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000a:  ldc.i4.3
    IL_000b:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  stelem.ref
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ldarg.2
    IL_0018:  stelem.ref
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.2
    IL_001b:  ldarg.3
    IL_001c:  stelem.ref
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                                                                   class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0023:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_wide_gauge_by_p2p(int32 numArgsOut) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000b:  ldc.i4.0
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0016:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_wide_gauge_by_p2p(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t) cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000b:  ldc.i4.1
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_001c:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_wide_gauge_by_p2p(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000b:  ldc.i4.2
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0020:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] 
          sub_preprocessing_wide_gauge_by_p2p(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray t,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray wx,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray thresh_gauge) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  6
    .locals init (class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] V_0)
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000b:  ldc.i4.3
    IL_000c:  newarr     [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  ldarg.2
    IL_0015:  stelem.ref
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  ldarg.3
    IL_0019:  stelem.ref
    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  ldarg.s    thresh_gauge
    IL_001e:  stelem.ref
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(int32,
                                                                                                                                                     string,
                                                                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0025:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance void 
          sub_preprocessing_wide_gauge_by_p2p(int32 numArgsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]& argsOut,
                                              class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[] argsIn) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  ldstr      "sub_preprocessing_wide_gauge_by_p2p"
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::EvaluateFunction(string,
                                                                                                     int32,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[]&,
                                                                                                     class [MWArray]MathWorks.MATLAB.NET.Arrays.MWArray[])
    IL_0012:  ret
  } // end of method DataProcessAdvanceClass::sub_preprocessing_wide_gauge_by_p2p

  .method public hidebysig instance void 
          WaitForFiguresToDie() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldsfld     class [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR DataProcessAdvance.DataProcessAdvanceClass::mcr
    IL_0005:  callvirt   instance void [MWArray]MathWorks.MATLAB.NET.Utility.MWMCR::WaitForFiguresToDie()
    IL_000a:  ret
  } // end of method DataProcessAdvanceClass::WaitForFiguresToDie

} // end of class DataProcessAdvance.DataProcessAdvanceClass


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 F:\个人文件\铁路\工程代码\类库\Library\Common\Libs\DataProcessAdvance.res
