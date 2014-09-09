// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\velocityControlHdl\velocityControlHdl_Maintain_Range.v
// Created: 2014-08-25 21:11:09
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: velocityControlHdl_Maintain_Range
// Source Path: velocityControlHdl/Control_DQ_Currents/Control_Current/Maintain_Range
// Hierarchy Level: 6
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module velocityControlHdl_Maintain_Range
          (
           In1,
           Out1
          );


  input   signed [35:0] In1;  // sfix36_En33
  output  signed [17:0] Out1;  // sfix18_En15


  wire signed [17:0] Data_Type_Conversion_out1;  // sfix18_En15


  // <S11>/Data Type Conversion
  assign Data_Type_Conversion_out1 = In1[35:18];



  assign Out1 = Data_Type_Conversion_out1;

endmodule  // velocityControlHdl_Maintain_Range

