// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\controllerPeripheralHdlAdi\controllerHdl\controllerHdl_Detect_Change.v
// Created: 2014-09-08 14:12:04
// 
// Generated by MATLAB 8.2 and HDL Coder 3.3
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: controllerHdl_Detect_Change
// Source Path: controllerHdl/Field_Oriented_Control/Open_Loop_Control/Generate_Position_And_Voltage_Ramp/Rotor_Acceleration_To_Velocity/Set_Acceleration/Detect_Change
// Hierarchy Level: 7
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module controllerHdl_Detect_Change
          (
           CLK_IN,
           reset,
           enb_1_2000_0,
           x,
           y
          );


  input   CLK_IN;
  input   reset;
  input   enb_1_2000_0;
  input   signed [17:0] x;  // sfix18_En8
  output  y;


  reg signed [17:0] Delay_out1;  // sfix18_En8
  wire signed [18:0] Add_sub_cast;  // sfix19_En8
  wire signed [18:0] Add_sub_cast_1;  // sfix19_En8
  wire signed [18:0] Add_out1;  // sfix19_En8
  wire Compare_To_Zero2_out1;


  // <S30>/Delay
  always @(posedge CLK_IN)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 18'sb000000000000000000;
      end
      else if (enb_1_2000_0) begin
        Delay_out1 <= x;
      end
    end



  // <S30>/Add
  assign Add_sub_cast = x;
  assign Add_sub_cast_1 = Delay_out1;
  assign Add_out1 = Add_sub_cast - Add_sub_cast_1;



  // <S30>/Compare To Zero2
  assign Compare_To_Zero2_out1 = (Add_out1 != 19'sb0000000000000000000 ? 1'b1 :
              1'b0);



  assign y = Compare_To_Zero2_out1;

endmodule  // controllerHdl_Detect_Change

