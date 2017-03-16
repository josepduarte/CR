// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Mar 16 22:58:32 2017
// Host        : Inator running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jduarte/Documents/GitHub/CR/Aula3/ex4/ex4.srcs/sources_1/bd/ex4/ip/ex4_number_of_ones_0_0/ex4_number_of_ones_0_0_sim_netlist.v
// Design      : ex4_number_of_ones_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ex4_number_of_ones_0_0,number_of_ones,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "number_of_ones,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ex4_number_of_ones_0_0
   (clk,
    reset,
    datain,
    result);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) input reset;
  input [1023:0]datain;
  output [9:0]result;

  wire clk;
  wire [1023:0]datain;
  wire reset;
  wire [9:0]result;

  (* number_of_bits_input = "1024" *) 
  (* number_of_bits_output = "10" *) 
  ex4_number_of_ones_0_0_number_of_ones U0
       (.clk(clk),
        .datain(datain),
        .reset(reset),
        .result(result));
endmodule

(* ORIG_REF_NAME = "number_of_ones" *) (* number_of_bits_input = "1024" *) (* number_of_bits_output = "10" *) 
module ex4_number_of_ones_0_0_number_of_ones
   (clk,
    reset,
    datain,
    result);
  input clk;
  input reset;
  input [1023:0]datain;
  output [9:0]result;

  wire Current_State;
  wire Current_State_i_1_n_0;
  wire Current_State_i_2_n_0;
  wire Current_State_i_3_n_0;
  wire clk;
  wire [1023:0]datain;
  wire \index[0]_rep_i_1__0_n_0 ;
  wire \index[0]_rep_i_1_n_0 ;
  wire \index[1]_rep_i_1__0_n_0 ;
  wire \index[1]_rep_i_1__1_n_0 ;
  wire \index[1]_rep_i_1_n_0 ;
  wire \index[9]_i_3_n_0 ;
  wire \index_reg[0]_rep__0_n_0 ;
  wire \index_reg[0]_rep_n_0 ;
  wire \index_reg[1]_rep__0_n_0 ;
  wire \index_reg[1]_rep__1_n_0 ;
  wire \index_reg[1]_rep_n_0 ;
  wire [9:0]index_reg__0;
  wire nr_of_ones;
  wire nr_of_ones1;
  wire \nr_of_ones[4]_i_15_n_0 ;
  wire \nr_of_ones[4]_i_16_n_0 ;
  wire \nr_of_ones[4]_i_17_n_0 ;
  wire \nr_of_ones[4]_i_18_n_0 ;
  wire \nr_of_ones[4]_i_19_n_0 ;
  wire \nr_of_ones[4]_i_20_n_0 ;
  wire \nr_of_ones[4]_i_21_n_0 ;
  wire \nr_of_ones[4]_i_223_n_0 ;
  wire \nr_of_ones[4]_i_224_n_0 ;
  wire \nr_of_ones[4]_i_225_n_0 ;
  wire \nr_of_ones[4]_i_226_n_0 ;
  wire \nr_of_ones[4]_i_227_n_0 ;
  wire \nr_of_ones[4]_i_228_n_0 ;
  wire \nr_of_ones[4]_i_229_n_0 ;
  wire \nr_of_ones[4]_i_22_n_0 ;
  wire \nr_of_ones[4]_i_230_n_0 ;
  wire \nr_of_ones[4]_i_231_n_0 ;
  wire \nr_of_ones[4]_i_232_n_0 ;
  wire \nr_of_ones[4]_i_233_n_0 ;
  wire \nr_of_ones[4]_i_234_n_0 ;
  wire \nr_of_ones[4]_i_235_n_0 ;
  wire \nr_of_ones[4]_i_236_n_0 ;
  wire \nr_of_ones[4]_i_237_n_0 ;
  wire \nr_of_ones[4]_i_238_n_0 ;
  wire \nr_of_ones[4]_i_239_n_0 ;
  wire \nr_of_ones[4]_i_23_n_0 ;
  wire \nr_of_ones[4]_i_240_n_0 ;
  wire \nr_of_ones[4]_i_241_n_0 ;
  wire \nr_of_ones[4]_i_242_n_0 ;
  wire \nr_of_ones[4]_i_243_n_0 ;
  wire \nr_of_ones[4]_i_244_n_0 ;
  wire \nr_of_ones[4]_i_245_n_0 ;
  wire \nr_of_ones[4]_i_246_n_0 ;
  wire \nr_of_ones[4]_i_247_n_0 ;
  wire \nr_of_ones[4]_i_248_n_0 ;
  wire \nr_of_ones[4]_i_249_n_0 ;
  wire \nr_of_ones[4]_i_24_n_0 ;
  wire \nr_of_ones[4]_i_250_n_0 ;
  wire \nr_of_ones[4]_i_251_n_0 ;
  wire \nr_of_ones[4]_i_252_n_0 ;
  wire \nr_of_ones[4]_i_253_n_0 ;
  wire \nr_of_ones[4]_i_254_n_0 ;
  wire \nr_of_ones[4]_i_255_n_0 ;
  wire \nr_of_ones[4]_i_256_n_0 ;
  wire \nr_of_ones[4]_i_257_n_0 ;
  wire \nr_of_ones[4]_i_258_n_0 ;
  wire \nr_of_ones[4]_i_259_n_0 ;
  wire \nr_of_ones[4]_i_25_n_0 ;
  wire \nr_of_ones[4]_i_260_n_0 ;
  wire \nr_of_ones[4]_i_261_n_0 ;
  wire \nr_of_ones[4]_i_262_n_0 ;
  wire \nr_of_ones[4]_i_263_n_0 ;
  wire \nr_of_ones[4]_i_264_n_0 ;
  wire \nr_of_ones[4]_i_265_n_0 ;
  wire \nr_of_ones[4]_i_266_n_0 ;
  wire \nr_of_ones[4]_i_267_n_0 ;
  wire \nr_of_ones[4]_i_268_n_0 ;
  wire \nr_of_ones[4]_i_269_n_0 ;
  wire \nr_of_ones[4]_i_26_n_0 ;
  wire \nr_of_ones[4]_i_270_n_0 ;
  wire \nr_of_ones[4]_i_271_n_0 ;
  wire \nr_of_ones[4]_i_272_n_0 ;
  wire \nr_of_ones[4]_i_273_n_0 ;
  wire \nr_of_ones[4]_i_274_n_0 ;
  wire \nr_of_ones[4]_i_275_n_0 ;
  wire \nr_of_ones[4]_i_276_n_0 ;
  wire \nr_of_ones[4]_i_277_n_0 ;
  wire \nr_of_ones[4]_i_278_n_0 ;
  wire \nr_of_ones[4]_i_279_n_0 ;
  wire \nr_of_ones[4]_i_27_n_0 ;
  wire \nr_of_ones[4]_i_280_n_0 ;
  wire \nr_of_ones[4]_i_281_n_0 ;
  wire \nr_of_ones[4]_i_282_n_0 ;
  wire \nr_of_ones[4]_i_283_n_0 ;
  wire \nr_of_ones[4]_i_284_n_0 ;
  wire \nr_of_ones[4]_i_285_n_0 ;
  wire \nr_of_ones[4]_i_286_n_0 ;
  wire \nr_of_ones[4]_i_287_n_0 ;
  wire \nr_of_ones[4]_i_288_n_0 ;
  wire \nr_of_ones[4]_i_289_n_0 ;
  wire \nr_of_ones[4]_i_28_n_0 ;
  wire \nr_of_ones[4]_i_290_n_0 ;
  wire \nr_of_ones[4]_i_291_n_0 ;
  wire \nr_of_ones[4]_i_292_n_0 ;
  wire \nr_of_ones[4]_i_293_n_0 ;
  wire \nr_of_ones[4]_i_294_n_0 ;
  wire \nr_of_ones[4]_i_295_n_0 ;
  wire \nr_of_ones[4]_i_296_n_0 ;
  wire \nr_of_ones[4]_i_297_n_0 ;
  wire \nr_of_ones[4]_i_298_n_0 ;
  wire \nr_of_ones[4]_i_299_n_0 ;
  wire \nr_of_ones[4]_i_29_n_0 ;
  wire \nr_of_ones[4]_i_300_n_0 ;
  wire \nr_of_ones[4]_i_301_n_0 ;
  wire \nr_of_ones[4]_i_302_n_0 ;
  wire \nr_of_ones[4]_i_303_n_0 ;
  wire \nr_of_ones[4]_i_304_n_0 ;
  wire \nr_of_ones[4]_i_305_n_0 ;
  wire \nr_of_ones[4]_i_306_n_0 ;
  wire \nr_of_ones[4]_i_307_n_0 ;
  wire \nr_of_ones[4]_i_308_n_0 ;
  wire \nr_of_ones[4]_i_309_n_0 ;
  wire \nr_of_ones[4]_i_30_n_0 ;
  wire \nr_of_ones[4]_i_310_n_0 ;
  wire \nr_of_ones[4]_i_311_n_0 ;
  wire \nr_of_ones[4]_i_312_n_0 ;
  wire \nr_of_ones[4]_i_313_n_0 ;
  wire \nr_of_ones[4]_i_314_n_0 ;
  wire \nr_of_ones[4]_i_315_n_0 ;
  wire \nr_of_ones[4]_i_316_n_0 ;
  wire \nr_of_ones[4]_i_317_n_0 ;
  wire \nr_of_ones[4]_i_318_n_0 ;
  wire \nr_of_ones[4]_i_319_n_0 ;
  wire \nr_of_ones[4]_i_320_n_0 ;
  wire \nr_of_ones[4]_i_321_n_0 ;
  wire \nr_of_ones[4]_i_322_n_0 ;
  wire \nr_of_ones[4]_i_323_n_0 ;
  wire \nr_of_ones[4]_i_324_n_0 ;
  wire \nr_of_ones[4]_i_325_n_0 ;
  wire \nr_of_ones[4]_i_326_n_0 ;
  wire \nr_of_ones[4]_i_327_n_0 ;
  wire \nr_of_ones[4]_i_328_n_0 ;
  wire \nr_of_ones[4]_i_329_n_0 ;
  wire \nr_of_ones[4]_i_330_n_0 ;
  wire \nr_of_ones[4]_i_331_n_0 ;
  wire \nr_of_ones[4]_i_332_n_0 ;
  wire \nr_of_ones[4]_i_333_n_0 ;
  wire \nr_of_ones[4]_i_334_n_0 ;
  wire \nr_of_ones[4]_i_335_n_0 ;
  wire \nr_of_ones[4]_i_336_n_0 ;
  wire \nr_of_ones[4]_i_337_n_0 ;
  wire \nr_of_ones[4]_i_338_n_0 ;
  wire \nr_of_ones[4]_i_339_n_0 ;
  wire \nr_of_ones[4]_i_340_n_0 ;
  wire \nr_of_ones[4]_i_341_n_0 ;
  wire \nr_of_ones[4]_i_342_n_0 ;
  wire \nr_of_ones[4]_i_343_n_0 ;
  wire \nr_of_ones[4]_i_344_n_0 ;
  wire \nr_of_ones[4]_i_345_n_0 ;
  wire \nr_of_ones[4]_i_346_n_0 ;
  wire \nr_of_ones[4]_i_347_n_0 ;
  wire \nr_of_ones[4]_i_348_n_0 ;
  wire \nr_of_ones[4]_i_349_n_0 ;
  wire \nr_of_ones[4]_i_350_n_0 ;
  wire \nr_of_ones[4]_i_351_n_0 ;
  wire \nr_of_ones[4]_i_352_n_0 ;
  wire \nr_of_ones[4]_i_353_n_0 ;
  wire \nr_of_ones[4]_i_354_n_0 ;
  wire \nr_of_ones[4]_i_355_n_0 ;
  wire \nr_of_ones[4]_i_356_n_0 ;
  wire \nr_of_ones[4]_i_357_n_0 ;
  wire \nr_of_ones[4]_i_358_n_0 ;
  wire \nr_of_ones[4]_i_359_n_0 ;
  wire \nr_of_ones[4]_i_360_n_0 ;
  wire \nr_of_ones[4]_i_361_n_0 ;
  wire \nr_of_ones[4]_i_362_n_0 ;
  wire \nr_of_ones[4]_i_363_n_0 ;
  wire \nr_of_ones[4]_i_364_n_0 ;
  wire \nr_of_ones[4]_i_365_n_0 ;
  wire \nr_of_ones[4]_i_366_n_0 ;
  wire \nr_of_ones[4]_i_367_n_0 ;
  wire \nr_of_ones[4]_i_368_n_0 ;
  wire \nr_of_ones[4]_i_369_n_0 ;
  wire \nr_of_ones[4]_i_370_n_0 ;
  wire \nr_of_ones[4]_i_371_n_0 ;
  wire \nr_of_ones[4]_i_372_n_0 ;
  wire \nr_of_ones[4]_i_373_n_0 ;
  wire \nr_of_ones[4]_i_374_n_0 ;
  wire \nr_of_ones[4]_i_375_n_0 ;
  wire \nr_of_ones[4]_i_376_n_0 ;
  wire \nr_of_ones[4]_i_377_n_0 ;
  wire \nr_of_ones[4]_i_378_n_0 ;
  wire \nr_of_ones[4]_i_379_n_0 ;
  wire \nr_of_ones[4]_i_380_n_0 ;
  wire \nr_of_ones[4]_i_381_n_0 ;
  wire \nr_of_ones[4]_i_382_n_0 ;
  wire \nr_of_ones[4]_i_383_n_0 ;
  wire \nr_of_ones[4]_i_384_n_0 ;
  wire \nr_of_ones[4]_i_385_n_0 ;
  wire \nr_of_ones[4]_i_386_n_0 ;
  wire \nr_of_ones[4]_i_387_n_0 ;
  wire \nr_of_ones[4]_i_388_n_0 ;
  wire \nr_of_ones[4]_i_389_n_0 ;
  wire \nr_of_ones[4]_i_390_n_0 ;
  wire \nr_of_ones[4]_i_391_n_0 ;
  wire \nr_of_ones[4]_i_392_n_0 ;
  wire \nr_of_ones[4]_i_393_n_0 ;
  wire \nr_of_ones[4]_i_394_n_0 ;
  wire \nr_of_ones[4]_i_395_n_0 ;
  wire \nr_of_ones[4]_i_396_n_0 ;
  wire \nr_of_ones[4]_i_397_n_0 ;
  wire \nr_of_ones[4]_i_398_n_0 ;
  wire \nr_of_ones[4]_i_399_n_0 ;
  wire \nr_of_ones[4]_i_400_n_0 ;
  wire \nr_of_ones[4]_i_401_n_0 ;
  wire \nr_of_ones[4]_i_402_n_0 ;
  wire \nr_of_ones[4]_i_403_n_0 ;
  wire \nr_of_ones[4]_i_404_n_0 ;
  wire \nr_of_ones[4]_i_405_n_0 ;
  wire \nr_of_ones[4]_i_406_n_0 ;
  wire \nr_of_ones[4]_i_407_n_0 ;
  wire \nr_of_ones[4]_i_408_n_0 ;
  wire \nr_of_ones[4]_i_409_n_0 ;
  wire \nr_of_ones[4]_i_410_n_0 ;
  wire \nr_of_ones[4]_i_411_n_0 ;
  wire \nr_of_ones[4]_i_412_n_0 ;
  wire \nr_of_ones[4]_i_413_n_0 ;
  wire \nr_of_ones[4]_i_414_n_0 ;
  wire \nr_of_ones[4]_i_415_n_0 ;
  wire \nr_of_ones[4]_i_416_n_0 ;
  wire \nr_of_ones[4]_i_417_n_0 ;
  wire \nr_of_ones[4]_i_418_n_0 ;
  wire \nr_of_ones[4]_i_419_n_0 ;
  wire \nr_of_ones[4]_i_420_n_0 ;
  wire \nr_of_ones[4]_i_421_n_0 ;
  wire \nr_of_ones[4]_i_422_n_0 ;
  wire \nr_of_ones[4]_i_423_n_0 ;
  wire \nr_of_ones[4]_i_424_n_0 ;
  wire \nr_of_ones[4]_i_425_n_0 ;
  wire \nr_of_ones[4]_i_426_n_0 ;
  wire \nr_of_ones[4]_i_427_n_0 ;
  wire \nr_of_ones[4]_i_428_n_0 ;
  wire \nr_of_ones[4]_i_429_n_0 ;
  wire \nr_of_ones[4]_i_430_n_0 ;
  wire \nr_of_ones[4]_i_431_n_0 ;
  wire \nr_of_ones[4]_i_432_n_0 ;
  wire \nr_of_ones[4]_i_433_n_0 ;
  wire \nr_of_ones[4]_i_434_n_0 ;
  wire \nr_of_ones[4]_i_435_n_0 ;
  wire \nr_of_ones[4]_i_436_n_0 ;
  wire \nr_of_ones[4]_i_437_n_0 ;
  wire \nr_of_ones[4]_i_438_n_0 ;
  wire \nr_of_ones[4]_i_439_n_0 ;
  wire \nr_of_ones[4]_i_440_n_0 ;
  wire \nr_of_ones[4]_i_441_n_0 ;
  wire \nr_of_ones[4]_i_442_n_0 ;
  wire \nr_of_ones[4]_i_443_n_0 ;
  wire \nr_of_ones[4]_i_444_n_0 ;
  wire \nr_of_ones[4]_i_445_n_0 ;
  wire \nr_of_ones[4]_i_446_n_0 ;
  wire \nr_of_ones[4]_i_447_n_0 ;
  wire \nr_of_ones[4]_i_448_n_0 ;
  wire \nr_of_ones[4]_i_449_n_0 ;
  wire \nr_of_ones[4]_i_450_n_0 ;
  wire \nr_of_ones[4]_i_451_n_0 ;
  wire \nr_of_ones[4]_i_452_n_0 ;
  wire \nr_of_ones[4]_i_453_n_0 ;
  wire \nr_of_ones[4]_i_454_n_0 ;
  wire \nr_of_ones[4]_i_455_n_0 ;
  wire \nr_of_ones[4]_i_456_n_0 ;
  wire \nr_of_ones[4]_i_457_n_0 ;
  wire \nr_of_ones[4]_i_458_n_0 ;
  wire \nr_of_ones[4]_i_459_n_0 ;
  wire \nr_of_ones[4]_i_460_n_0 ;
  wire \nr_of_ones[4]_i_461_n_0 ;
  wire \nr_of_ones[4]_i_462_n_0 ;
  wire \nr_of_ones[4]_i_463_n_0 ;
  wire \nr_of_ones[4]_i_464_n_0 ;
  wire \nr_of_ones[4]_i_465_n_0 ;
  wire \nr_of_ones[4]_i_466_n_0 ;
  wire \nr_of_ones[4]_i_467_n_0 ;
  wire \nr_of_ones[4]_i_468_n_0 ;
  wire \nr_of_ones[4]_i_469_n_0 ;
  wire \nr_of_ones[4]_i_470_n_0 ;
  wire \nr_of_ones[4]_i_471_n_0 ;
  wire \nr_of_ones[4]_i_472_n_0 ;
  wire \nr_of_ones[4]_i_473_n_0 ;
  wire \nr_of_ones[4]_i_474_n_0 ;
  wire \nr_of_ones[4]_i_475_n_0 ;
  wire \nr_of_ones[4]_i_476_n_0 ;
  wire \nr_of_ones[4]_i_477_n_0 ;
  wire \nr_of_ones[4]_i_478_n_0 ;
  wire \nr_of_ones[9]_i_2_n_0 ;
  wire \nr_of_ones_reg[4]_i_100_n_0 ;
  wire \nr_of_ones_reg[4]_i_101_n_0 ;
  wire \nr_of_ones_reg[4]_i_102_n_0 ;
  wire \nr_of_ones_reg[4]_i_103_n_0 ;
  wire \nr_of_ones_reg[4]_i_104_n_0 ;
  wire \nr_of_ones_reg[4]_i_105_n_0 ;
  wire \nr_of_ones_reg[4]_i_106_n_0 ;
  wire \nr_of_ones_reg[4]_i_107_n_0 ;
  wire \nr_of_ones_reg[4]_i_108_n_0 ;
  wire \nr_of_ones_reg[4]_i_109_n_0 ;
  wire \nr_of_ones_reg[4]_i_10_n_0 ;
  wire \nr_of_ones_reg[4]_i_110_n_0 ;
  wire \nr_of_ones_reg[4]_i_111_n_0 ;
  wire \nr_of_ones_reg[4]_i_112_n_0 ;
  wire \nr_of_ones_reg[4]_i_113_n_0 ;
  wire \nr_of_ones_reg[4]_i_114_n_0 ;
  wire \nr_of_ones_reg[4]_i_115_n_0 ;
  wire \nr_of_ones_reg[4]_i_116_n_0 ;
  wire \nr_of_ones_reg[4]_i_117_n_0 ;
  wire \nr_of_ones_reg[4]_i_118_n_0 ;
  wire \nr_of_ones_reg[4]_i_119_n_0 ;
  wire \nr_of_ones_reg[4]_i_11_n_0 ;
  wire \nr_of_ones_reg[4]_i_120_n_0 ;
  wire \nr_of_ones_reg[4]_i_121_n_0 ;
  wire \nr_of_ones_reg[4]_i_122_n_0 ;
  wire \nr_of_ones_reg[4]_i_123_n_0 ;
  wire \nr_of_ones_reg[4]_i_124_n_0 ;
  wire \nr_of_ones_reg[4]_i_125_n_0 ;
  wire \nr_of_ones_reg[4]_i_126_n_0 ;
  wire \nr_of_ones_reg[4]_i_127_n_0 ;
  wire \nr_of_ones_reg[4]_i_128_n_0 ;
  wire \nr_of_ones_reg[4]_i_129_n_0 ;
  wire \nr_of_ones_reg[4]_i_12_n_0 ;
  wire \nr_of_ones_reg[4]_i_130_n_0 ;
  wire \nr_of_ones_reg[4]_i_131_n_0 ;
  wire \nr_of_ones_reg[4]_i_132_n_0 ;
  wire \nr_of_ones_reg[4]_i_133_n_0 ;
  wire \nr_of_ones_reg[4]_i_134_n_0 ;
  wire \nr_of_ones_reg[4]_i_135_n_0 ;
  wire \nr_of_ones_reg[4]_i_136_n_0 ;
  wire \nr_of_ones_reg[4]_i_137_n_0 ;
  wire \nr_of_ones_reg[4]_i_138_n_0 ;
  wire \nr_of_ones_reg[4]_i_139_n_0 ;
  wire \nr_of_ones_reg[4]_i_13_n_0 ;
  wire \nr_of_ones_reg[4]_i_140_n_0 ;
  wire \nr_of_ones_reg[4]_i_141_n_0 ;
  wire \nr_of_ones_reg[4]_i_142_n_0 ;
  wire \nr_of_ones_reg[4]_i_143_n_0 ;
  wire \nr_of_ones_reg[4]_i_144_n_0 ;
  wire \nr_of_ones_reg[4]_i_145_n_0 ;
  wire \nr_of_ones_reg[4]_i_146_n_0 ;
  wire \nr_of_ones_reg[4]_i_147_n_0 ;
  wire \nr_of_ones_reg[4]_i_148_n_0 ;
  wire \nr_of_ones_reg[4]_i_149_n_0 ;
  wire \nr_of_ones_reg[4]_i_14_n_0 ;
  wire \nr_of_ones_reg[4]_i_150_n_0 ;
  wire \nr_of_ones_reg[4]_i_151_n_0 ;
  wire \nr_of_ones_reg[4]_i_152_n_0 ;
  wire \nr_of_ones_reg[4]_i_153_n_0 ;
  wire \nr_of_ones_reg[4]_i_154_n_0 ;
  wire \nr_of_ones_reg[4]_i_155_n_0 ;
  wire \nr_of_ones_reg[4]_i_156_n_0 ;
  wire \nr_of_ones_reg[4]_i_157_n_0 ;
  wire \nr_of_ones_reg[4]_i_158_n_0 ;
  wire \nr_of_ones_reg[4]_i_159_n_0 ;
  wire \nr_of_ones_reg[4]_i_160_n_0 ;
  wire \nr_of_ones_reg[4]_i_161_n_0 ;
  wire \nr_of_ones_reg[4]_i_162_n_0 ;
  wire \nr_of_ones_reg[4]_i_163_n_0 ;
  wire \nr_of_ones_reg[4]_i_164_n_0 ;
  wire \nr_of_ones_reg[4]_i_165_n_0 ;
  wire \nr_of_ones_reg[4]_i_166_n_0 ;
  wire \nr_of_ones_reg[4]_i_167_n_0 ;
  wire \nr_of_ones_reg[4]_i_168_n_0 ;
  wire \nr_of_ones_reg[4]_i_169_n_0 ;
  wire \nr_of_ones_reg[4]_i_170_n_0 ;
  wire \nr_of_ones_reg[4]_i_171_n_0 ;
  wire \nr_of_ones_reg[4]_i_172_n_0 ;
  wire \nr_of_ones_reg[4]_i_173_n_0 ;
  wire \nr_of_ones_reg[4]_i_174_n_0 ;
  wire \nr_of_ones_reg[4]_i_175_n_0 ;
  wire \nr_of_ones_reg[4]_i_176_n_0 ;
  wire \nr_of_ones_reg[4]_i_177_n_0 ;
  wire \nr_of_ones_reg[4]_i_178_n_0 ;
  wire \nr_of_ones_reg[4]_i_179_n_0 ;
  wire \nr_of_ones_reg[4]_i_180_n_0 ;
  wire \nr_of_ones_reg[4]_i_181_n_0 ;
  wire \nr_of_ones_reg[4]_i_182_n_0 ;
  wire \nr_of_ones_reg[4]_i_183_n_0 ;
  wire \nr_of_ones_reg[4]_i_184_n_0 ;
  wire \nr_of_ones_reg[4]_i_185_n_0 ;
  wire \nr_of_ones_reg[4]_i_186_n_0 ;
  wire \nr_of_ones_reg[4]_i_187_n_0 ;
  wire \nr_of_ones_reg[4]_i_188_n_0 ;
  wire \nr_of_ones_reg[4]_i_189_n_0 ;
  wire \nr_of_ones_reg[4]_i_190_n_0 ;
  wire \nr_of_ones_reg[4]_i_191_n_0 ;
  wire \nr_of_ones_reg[4]_i_192_n_0 ;
  wire \nr_of_ones_reg[4]_i_193_n_0 ;
  wire \nr_of_ones_reg[4]_i_194_n_0 ;
  wire \nr_of_ones_reg[4]_i_195_n_0 ;
  wire \nr_of_ones_reg[4]_i_196_n_0 ;
  wire \nr_of_ones_reg[4]_i_197_n_0 ;
  wire \nr_of_ones_reg[4]_i_198_n_0 ;
  wire \nr_of_ones_reg[4]_i_199_n_0 ;
  wire \nr_of_ones_reg[4]_i_200_n_0 ;
  wire \nr_of_ones_reg[4]_i_201_n_0 ;
  wire \nr_of_ones_reg[4]_i_202_n_0 ;
  wire \nr_of_ones_reg[4]_i_203_n_0 ;
  wire \nr_of_ones_reg[4]_i_204_n_0 ;
  wire \nr_of_ones_reg[4]_i_205_n_0 ;
  wire \nr_of_ones_reg[4]_i_206_n_0 ;
  wire \nr_of_ones_reg[4]_i_207_n_0 ;
  wire \nr_of_ones_reg[4]_i_208_n_0 ;
  wire \nr_of_ones_reg[4]_i_209_n_0 ;
  wire \nr_of_ones_reg[4]_i_210_n_0 ;
  wire \nr_of_ones_reg[4]_i_211_n_0 ;
  wire \nr_of_ones_reg[4]_i_212_n_0 ;
  wire \nr_of_ones_reg[4]_i_213_n_0 ;
  wire \nr_of_ones_reg[4]_i_214_n_0 ;
  wire \nr_of_ones_reg[4]_i_215_n_0 ;
  wire \nr_of_ones_reg[4]_i_216_n_0 ;
  wire \nr_of_ones_reg[4]_i_217_n_0 ;
  wire \nr_of_ones_reg[4]_i_218_n_0 ;
  wire \nr_of_ones_reg[4]_i_219_n_0 ;
  wire \nr_of_ones_reg[4]_i_220_n_0 ;
  wire \nr_of_ones_reg[4]_i_221_n_0 ;
  wire \nr_of_ones_reg[4]_i_222_n_0 ;
  wire \nr_of_ones_reg[4]_i_31_n_0 ;
  wire \nr_of_ones_reg[4]_i_32_n_0 ;
  wire \nr_of_ones_reg[4]_i_33_n_0 ;
  wire \nr_of_ones_reg[4]_i_34_n_0 ;
  wire \nr_of_ones_reg[4]_i_35_n_0 ;
  wire \nr_of_ones_reg[4]_i_36_n_0 ;
  wire \nr_of_ones_reg[4]_i_37_n_0 ;
  wire \nr_of_ones_reg[4]_i_38_n_0 ;
  wire \nr_of_ones_reg[4]_i_39_n_0 ;
  wire \nr_of_ones_reg[4]_i_3_n_0 ;
  wire \nr_of_ones_reg[4]_i_40_n_0 ;
  wire \nr_of_ones_reg[4]_i_41_n_0 ;
  wire \nr_of_ones_reg[4]_i_42_n_0 ;
  wire \nr_of_ones_reg[4]_i_43_n_0 ;
  wire \nr_of_ones_reg[4]_i_44_n_0 ;
  wire \nr_of_ones_reg[4]_i_45_n_0 ;
  wire \nr_of_ones_reg[4]_i_46_n_0 ;
  wire \nr_of_ones_reg[4]_i_47_n_0 ;
  wire \nr_of_ones_reg[4]_i_48_n_0 ;
  wire \nr_of_ones_reg[4]_i_49_n_0 ;
  wire \nr_of_ones_reg[4]_i_4_n_0 ;
  wire \nr_of_ones_reg[4]_i_50_n_0 ;
  wire \nr_of_ones_reg[4]_i_51_n_0 ;
  wire \nr_of_ones_reg[4]_i_52_n_0 ;
  wire \nr_of_ones_reg[4]_i_53_n_0 ;
  wire \nr_of_ones_reg[4]_i_54_n_0 ;
  wire \nr_of_ones_reg[4]_i_55_n_0 ;
  wire \nr_of_ones_reg[4]_i_56_n_0 ;
  wire \nr_of_ones_reg[4]_i_57_n_0 ;
  wire \nr_of_ones_reg[4]_i_58_n_0 ;
  wire \nr_of_ones_reg[4]_i_59_n_0 ;
  wire \nr_of_ones_reg[4]_i_5_n_0 ;
  wire \nr_of_ones_reg[4]_i_60_n_0 ;
  wire \nr_of_ones_reg[4]_i_61_n_0 ;
  wire \nr_of_ones_reg[4]_i_62_n_0 ;
  wire \nr_of_ones_reg[4]_i_63_n_0 ;
  wire \nr_of_ones_reg[4]_i_64_n_0 ;
  wire \nr_of_ones_reg[4]_i_65_n_0 ;
  wire \nr_of_ones_reg[4]_i_66_n_0 ;
  wire \nr_of_ones_reg[4]_i_67_n_0 ;
  wire \nr_of_ones_reg[4]_i_68_n_0 ;
  wire \nr_of_ones_reg[4]_i_69_n_0 ;
  wire \nr_of_ones_reg[4]_i_6_n_0 ;
  wire \nr_of_ones_reg[4]_i_70_n_0 ;
  wire \nr_of_ones_reg[4]_i_71_n_0 ;
  wire \nr_of_ones_reg[4]_i_72_n_0 ;
  wire \nr_of_ones_reg[4]_i_73_n_0 ;
  wire \nr_of_ones_reg[4]_i_74_n_0 ;
  wire \nr_of_ones_reg[4]_i_75_n_0 ;
  wire \nr_of_ones_reg[4]_i_76_n_0 ;
  wire \nr_of_ones_reg[4]_i_77_n_0 ;
  wire \nr_of_ones_reg[4]_i_78_n_0 ;
  wire \nr_of_ones_reg[4]_i_79_n_0 ;
  wire \nr_of_ones_reg[4]_i_7_n_0 ;
  wire \nr_of_ones_reg[4]_i_80_n_0 ;
  wire \nr_of_ones_reg[4]_i_81_n_0 ;
  wire \nr_of_ones_reg[4]_i_82_n_0 ;
  wire \nr_of_ones_reg[4]_i_83_n_0 ;
  wire \nr_of_ones_reg[4]_i_84_n_0 ;
  wire \nr_of_ones_reg[4]_i_85_n_0 ;
  wire \nr_of_ones_reg[4]_i_86_n_0 ;
  wire \nr_of_ones_reg[4]_i_87_n_0 ;
  wire \nr_of_ones_reg[4]_i_88_n_0 ;
  wire \nr_of_ones_reg[4]_i_89_n_0 ;
  wire \nr_of_ones_reg[4]_i_8_n_0 ;
  wire \nr_of_ones_reg[4]_i_90_n_0 ;
  wire \nr_of_ones_reg[4]_i_91_n_0 ;
  wire \nr_of_ones_reg[4]_i_92_n_0 ;
  wire \nr_of_ones_reg[4]_i_93_n_0 ;
  wire \nr_of_ones_reg[4]_i_94_n_0 ;
  wire \nr_of_ones_reg[4]_i_95_n_0 ;
  wire \nr_of_ones_reg[4]_i_96_n_0 ;
  wire \nr_of_ones_reg[4]_i_97_n_0 ;
  wire \nr_of_ones_reg[4]_i_98_n_0 ;
  wire \nr_of_ones_reg[4]_i_99_n_0 ;
  wire \nr_of_ones_reg[4]_i_9_n_0 ;
  wire [9:0]nr_of_ones_reg__0;
  wire [9:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire reset;
  wire [9:0]result;

  LUT6 #(
    .INIT(64'h0000000000000010)) 
    Current_State_i_1
       (.I0(Current_State_i_2_n_0),
        .I1(Current_State_i_3_n_0),
        .I2(\index_reg[0]_rep_n_0 ),
        .I3(Current_State),
        .I4(index_reg__0[9]),
        .I5(reset),
        .O(Current_State_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    Current_State_i_2
       (.I0(index_reg__0[7]),
        .I1(index_reg__0[8]),
        .I2(index_reg__0[5]),
        .I3(index_reg__0[6]),
        .O(Current_State_i_2_n_0));
  LUT4 #(
    .INIT(16'hBFFF)) 
    Current_State_i_3
       (.I0(index_reg__0[4]),
        .I1(index_reg__0[3]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(index_reg__0[2]),
        .O(Current_State_i_3_n_0));
  FDRE Current_State_reg
       (.C(clk),
        .CE(1'b1),
        .D(Current_State_i_1_n_0),
        .Q(Current_State),
        .R(1'b0));
  FDRE \Res_reg[0] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[0]),
        .Q(result[0]),
        .R(reset));
  FDRE \Res_reg[1] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[1]),
        .Q(result[1]),
        .R(reset));
  FDRE \Res_reg[2] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[2]),
        .Q(result[2]),
        .R(reset));
  FDRE \Res_reg[3] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[3]),
        .Q(result[3]),
        .R(reset));
  FDRE \Res_reg[4] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[4]),
        .Q(result[4]),
        .R(reset));
  FDRE \Res_reg[5] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[5]),
        .Q(result[5]),
        .R(reset));
  FDRE \Res_reg[6] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[6]),
        .Q(result[6]),
        .R(reset));
  FDRE \Res_reg[7] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[7]),
        .Q(result[7]),
        .R(reset));
  FDRE \Res_reg[8] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[8]),
        .Q(result[8]),
        .R(reset));
  FDRE \Res_reg[9] 
       (.C(clk),
        .CE(Current_State),
        .D(nr_of_ones_reg__0[9]),
        .Q(result[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(\index_reg[0]_rep_n_0 ),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_rep_i_1 
       (.I0(\index_reg[0]_rep_n_0 ),
        .O(\index[0]_rep_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_rep_i_1__0 
       (.I0(\index_reg[0]_rep_n_0 ),
        .O(\index[0]_rep_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(\index_reg[0]_rep_n_0 ),
        .I1(index_reg__0[1]),
        .O(p_0_in[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_rep_i_1 
       (.I0(\index_reg[0]_rep_n_0 ),
        .I1(index_reg__0[1]),
        .O(\index[1]_rep_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_rep_i_1__0 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .O(\index[1]_rep_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_rep_i_1__1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .O(\index[1]_rep_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(\index_reg[0]_rep_n_0 ),
        .I1(index_reg__0[1]),
        .I2(index_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(index_reg__0[1]),
        .I1(\index_reg[0]_rep_n_0 ),
        .I2(index_reg__0[2]),
        .I3(index_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_1 
       (.I0(index_reg__0[2]),
        .I1(\index_reg[0]_rep_n_0 ),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[3]),
        .I4(index_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \index[5]_i_1 
       (.I0(index_reg__0[3]),
        .I1(index_reg__0[1]),
        .I2(\index_reg[0]_rep__0_n_0 ),
        .I3(index_reg__0[2]),
        .I4(index_reg__0[4]),
        .I5(index_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \index[6]_i_1 
       (.I0(\index[9]_i_3_n_0 ),
        .I1(index_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[7]_i_1 
       (.I0(\index[9]_i_3_n_0 ),
        .I1(index_reg__0[6]),
        .I2(index_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[8]_i_1 
       (.I0(index_reg__0[6]),
        .I1(\index[9]_i_3_n_0 ),
        .I2(index_reg__0[7]),
        .I3(index_reg__0[8]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \index[9]_i_1 
       (.I0(reset),
        .I1(Current_State),
        .O(nr_of_ones));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[9]_i_2 
       (.I0(index_reg__0[7]),
        .I1(\index[9]_i_3_n_0 ),
        .I2(index_reg__0[6]),
        .I3(index_reg__0[8]),
        .I4(index_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \index[9]_i_3 
       (.I0(index_reg__0[5]),
        .I1(index_reg__0[3]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(\index_reg[0]_rep__0_n_0 ),
        .I4(index_reg__0[2]),
        .I5(index_reg__0[4]),
        .O(\index[9]_i_3_n_0 ));
  (* ORIG_CELL_NAME = "index_reg[0]" *) 
  FDRE \index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(index_reg__0[0]),
        .R(nr_of_ones));
  (* ORIG_CELL_NAME = "index_reg[0]" *) 
  FDRE \index_reg[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\index[0]_rep_i_1_n_0 ),
        .Q(\index_reg[0]_rep_n_0 ),
        .R(nr_of_ones));
  (* ORIG_CELL_NAME = "index_reg[0]" *) 
  FDRE \index_reg[0]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\index[0]_rep_i_1__0_n_0 ),
        .Q(\index_reg[0]_rep__0_n_0 ),
        .R(nr_of_ones));
  (* ORIG_CELL_NAME = "index_reg[1]" *) 
  FDRE \index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(index_reg__0[1]),
        .R(nr_of_ones));
  (* ORIG_CELL_NAME = "index_reg[1]" *) 
  FDRE \index_reg[1]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\index[1]_rep_i_1_n_0 ),
        .Q(\index_reg[1]_rep_n_0 ),
        .R(nr_of_ones));
  (* ORIG_CELL_NAME = "index_reg[1]" *) 
  FDRE \index_reg[1]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\index[1]_rep_i_1__0_n_0 ),
        .Q(\index_reg[1]_rep__0_n_0 ),
        .R(nr_of_ones));
  (* ORIG_CELL_NAME = "index_reg[1]" *) 
  FDRE \index_reg[1]_rep__1 
       (.C(clk),
        .CE(1'b1),
        .D(\index[1]_rep_i_1__1_n_0 ),
        .Q(\index_reg[1]_rep__1_n_0 ),
        .R(nr_of_ones));
  FDRE \index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(index_reg__0[2]),
        .R(nr_of_ones));
  FDRE \index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(index_reg__0[3]),
        .R(nr_of_ones));
  FDRE \index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(index_reg__0[4]),
        .R(nr_of_ones));
  FDRE \index_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(index_reg__0[5]),
        .R(nr_of_ones));
  FDRE \index_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(index_reg__0[6]),
        .R(nr_of_ones));
  FDRE \index_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(index_reg__0[7]),
        .R(nr_of_ones));
  FDRE \index_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(index_reg__0[8]),
        .R(nr_of_ones));
  FDRE \index_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(index_reg__0[9]),
        .R(nr_of_ones));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nr_of_ones[0]_i_1 
       (.I0(nr_of_ones_reg__0[0]),
        .I1(nr_of_ones1),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \nr_of_ones[1]_i_1 
       (.I0(nr_of_ones1),
        .I1(nr_of_ones_reg__0[0]),
        .I2(nr_of_ones_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \nr_of_ones[2]_i_1 
       (.I0(nr_of_ones_reg__0[1]),
        .I1(nr_of_ones_reg__0[0]),
        .I2(nr_of_ones1),
        .I3(nr_of_ones_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \nr_of_ones[3]_i_1 
       (.I0(nr_of_ones_reg__0[2]),
        .I1(nr_of_ones1),
        .I2(nr_of_ones_reg__0[0]),
        .I3(nr_of_ones_reg__0[1]),
        .I4(nr_of_ones_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \nr_of_ones[4]_i_1 
       (.I0(nr_of_ones_reg__0[3]),
        .I1(nr_of_ones_reg__0[1]),
        .I2(nr_of_ones_reg__0[0]),
        .I3(nr_of_ones1),
        .I4(nr_of_ones_reg__0[2]),
        .I5(nr_of_ones_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_15 
       (.I0(\nr_of_ones_reg[4]_i_31_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_32_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_33_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_34_n_0 ),
        .O(\nr_of_ones[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_16 
       (.I0(\nr_of_ones_reg[4]_i_35_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_36_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_37_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_38_n_0 ),
        .O(\nr_of_ones[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_17 
       (.I0(\nr_of_ones_reg[4]_i_39_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_40_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_41_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_42_n_0 ),
        .O(\nr_of_ones[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_18 
       (.I0(\nr_of_ones_reg[4]_i_43_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_44_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_45_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_46_n_0 ),
        .O(\nr_of_ones[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_19 
       (.I0(\nr_of_ones_reg[4]_i_47_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_48_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_49_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_50_n_0 ),
        .O(\nr_of_ones[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_2 
       (.I0(\nr_of_ones_reg[4]_i_3_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_4_n_0 ),
        .I2(index_reg__0[8]),
        .I3(\nr_of_ones_reg[4]_i_5_n_0 ),
        .I4(index_reg__0[9]),
        .I5(\nr_of_ones_reg[4]_i_6_n_0 ),
        .O(nr_of_ones1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_20 
       (.I0(\nr_of_ones_reg[4]_i_51_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_52_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_53_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_54_n_0 ),
        .O(\nr_of_ones[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_21 
       (.I0(\nr_of_ones_reg[4]_i_55_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_56_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_57_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_58_n_0 ),
        .O(\nr_of_ones[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_22 
       (.I0(\nr_of_ones_reg[4]_i_59_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_60_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_61_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_62_n_0 ),
        .O(\nr_of_ones[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_223 
       (.I0(datain[819]),
        .I1(datain[818]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[817]),
        .I4(index_reg__0[0]),
        .I5(datain[816]),
        .O(\nr_of_ones[4]_i_223_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_224 
       (.I0(datain[823]),
        .I1(datain[822]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[821]),
        .I4(index_reg__0[0]),
        .I5(datain[820]),
        .O(\nr_of_ones[4]_i_224_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_225 
       (.I0(datain[827]),
        .I1(datain[826]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[825]),
        .I4(index_reg__0[0]),
        .I5(datain[824]),
        .O(\nr_of_ones[4]_i_225_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_226 
       (.I0(datain[831]),
        .I1(datain[830]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[829]),
        .I4(index_reg__0[0]),
        .I5(datain[828]),
        .O(\nr_of_ones[4]_i_226_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_227 
       (.I0(datain[803]),
        .I1(datain[802]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[801]),
        .I4(index_reg__0[0]),
        .I5(datain[800]),
        .O(\nr_of_ones[4]_i_227_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_228 
       (.I0(datain[807]),
        .I1(datain[806]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[805]),
        .I4(index_reg__0[0]),
        .I5(datain[804]),
        .O(\nr_of_ones[4]_i_228_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_229 
       (.I0(datain[811]),
        .I1(datain[810]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[809]),
        .I4(index_reg__0[0]),
        .I5(datain[808]),
        .O(\nr_of_ones[4]_i_229_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_23 
       (.I0(\nr_of_ones_reg[4]_i_63_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_64_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_65_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_66_n_0 ),
        .O(\nr_of_ones[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_230 
       (.I0(datain[815]),
        .I1(datain[814]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[813]),
        .I4(index_reg__0[0]),
        .I5(datain[812]),
        .O(\nr_of_ones[4]_i_230_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_231 
       (.I0(datain[787]),
        .I1(datain[786]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[785]),
        .I4(index_reg__0[0]),
        .I5(datain[784]),
        .O(\nr_of_ones[4]_i_231_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_232 
       (.I0(datain[791]),
        .I1(datain[790]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[789]),
        .I4(index_reg__0[0]),
        .I5(datain[788]),
        .O(\nr_of_ones[4]_i_232_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_233 
       (.I0(datain[795]),
        .I1(datain[794]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[793]),
        .I4(index_reg__0[0]),
        .I5(datain[792]),
        .O(\nr_of_ones[4]_i_233_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_234 
       (.I0(datain[799]),
        .I1(datain[798]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[797]),
        .I4(index_reg__0[0]),
        .I5(datain[796]),
        .O(\nr_of_ones[4]_i_234_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_235 
       (.I0(datain[771]),
        .I1(datain[770]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[769]),
        .I4(index_reg__0[0]),
        .I5(datain[768]),
        .O(\nr_of_ones[4]_i_235_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_236 
       (.I0(datain[775]),
        .I1(datain[774]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[773]),
        .I4(index_reg__0[0]),
        .I5(datain[772]),
        .O(\nr_of_ones[4]_i_236_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_237 
       (.I0(datain[779]),
        .I1(datain[778]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[777]),
        .I4(index_reg__0[0]),
        .I5(datain[776]),
        .O(\nr_of_ones[4]_i_237_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_238 
       (.I0(datain[783]),
        .I1(datain[782]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[781]),
        .I4(index_reg__0[0]),
        .I5(datain[780]),
        .O(\nr_of_ones[4]_i_238_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_239 
       (.I0(datain[883]),
        .I1(datain[882]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[881]),
        .I4(index_reg__0[0]),
        .I5(datain[880]),
        .O(\nr_of_ones[4]_i_239_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_24 
       (.I0(\nr_of_ones_reg[4]_i_67_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_68_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_69_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_70_n_0 ),
        .O(\nr_of_ones[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_240 
       (.I0(datain[887]),
        .I1(datain[886]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[885]),
        .I4(index_reg__0[0]),
        .I5(datain[884]),
        .O(\nr_of_ones[4]_i_240_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_241 
       (.I0(datain[891]),
        .I1(datain[890]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[889]),
        .I4(index_reg__0[0]),
        .I5(datain[888]),
        .O(\nr_of_ones[4]_i_241_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_242 
       (.I0(datain[895]),
        .I1(datain[894]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[893]),
        .I4(index_reg__0[0]),
        .I5(datain[892]),
        .O(\nr_of_ones[4]_i_242_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_243 
       (.I0(datain[867]),
        .I1(datain[866]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[865]),
        .I4(index_reg__0[0]),
        .I5(datain[864]),
        .O(\nr_of_ones[4]_i_243_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_244 
       (.I0(datain[871]),
        .I1(datain[870]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[869]),
        .I4(index_reg__0[0]),
        .I5(datain[868]),
        .O(\nr_of_ones[4]_i_244_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_245 
       (.I0(datain[875]),
        .I1(datain[874]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[873]),
        .I4(index_reg__0[0]),
        .I5(datain[872]),
        .O(\nr_of_ones[4]_i_245_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_246 
       (.I0(datain[879]),
        .I1(datain[878]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[877]),
        .I4(index_reg__0[0]),
        .I5(datain[876]),
        .O(\nr_of_ones[4]_i_246_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_247 
       (.I0(datain[851]),
        .I1(datain[850]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[849]),
        .I4(index_reg__0[0]),
        .I5(datain[848]),
        .O(\nr_of_ones[4]_i_247_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_248 
       (.I0(datain[855]),
        .I1(datain[854]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[853]),
        .I4(index_reg__0[0]),
        .I5(datain[852]),
        .O(\nr_of_ones[4]_i_248_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_249 
       (.I0(datain[859]),
        .I1(datain[858]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[857]),
        .I4(index_reg__0[0]),
        .I5(datain[856]),
        .O(\nr_of_ones[4]_i_249_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_25 
       (.I0(\nr_of_ones_reg[4]_i_71_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_72_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_73_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_74_n_0 ),
        .O(\nr_of_ones[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_250 
       (.I0(datain[863]),
        .I1(datain[862]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[861]),
        .I4(index_reg__0[0]),
        .I5(datain[860]),
        .O(\nr_of_ones[4]_i_250_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_251 
       (.I0(datain[835]),
        .I1(datain[834]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[833]),
        .I4(index_reg__0[0]),
        .I5(datain[832]),
        .O(\nr_of_ones[4]_i_251_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_252 
       (.I0(datain[839]),
        .I1(datain[838]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[837]),
        .I4(index_reg__0[0]),
        .I5(datain[836]),
        .O(\nr_of_ones[4]_i_252_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_253 
       (.I0(datain[843]),
        .I1(datain[842]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[841]),
        .I4(index_reg__0[0]),
        .I5(datain[840]),
        .O(\nr_of_ones[4]_i_253_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_254 
       (.I0(datain[847]),
        .I1(datain[846]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[845]),
        .I4(index_reg__0[0]),
        .I5(datain[844]),
        .O(\nr_of_ones[4]_i_254_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_255 
       (.I0(datain[947]),
        .I1(datain[946]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[945]),
        .I4(index_reg__0[0]),
        .I5(datain[944]),
        .O(\nr_of_ones[4]_i_255_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_256 
       (.I0(datain[951]),
        .I1(datain[950]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[949]),
        .I4(index_reg__0[0]),
        .I5(datain[948]),
        .O(\nr_of_ones[4]_i_256_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_257 
       (.I0(datain[955]),
        .I1(datain[954]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[953]),
        .I4(index_reg__0[0]),
        .I5(datain[952]),
        .O(\nr_of_ones[4]_i_257_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_258 
       (.I0(datain[959]),
        .I1(datain[958]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[957]),
        .I4(index_reg__0[0]),
        .I5(datain[956]),
        .O(\nr_of_ones[4]_i_258_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_259 
       (.I0(datain[931]),
        .I1(datain[930]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[929]),
        .I4(index_reg__0[0]),
        .I5(datain[928]),
        .O(\nr_of_ones[4]_i_259_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_26 
       (.I0(\nr_of_ones_reg[4]_i_75_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_76_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_77_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_78_n_0 ),
        .O(\nr_of_ones[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_260 
       (.I0(datain[935]),
        .I1(datain[934]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[933]),
        .I4(index_reg__0[0]),
        .I5(datain[932]),
        .O(\nr_of_ones[4]_i_260_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_261 
       (.I0(datain[939]),
        .I1(datain[938]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[937]),
        .I4(index_reg__0[0]),
        .I5(datain[936]),
        .O(\nr_of_ones[4]_i_261_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_262 
       (.I0(datain[943]),
        .I1(datain[942]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[941]),
        .I4(index_reg__0[0]),
        .I5(datain[940]),
        .O(\nr_of_ones[4]_i_262_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_263 
       (.I0(datain[915]),
        .I1(datain[914]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[913]),
        .I4(index_reg__0[0]),
        .I5(datain[912]),
        .O(\nr_of_ones[4]_i_263_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_264 
       (.I0(datain[919]),
        .I1(datain[918]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[917]),
        .I4(index_reg__0[0]),
        .I5(datain[916]),
        .O(\nr_of_ones[4]_i_264_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_265 
       (.I0(datain[923]),
        .I1(datain[922]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[921]),
        .I4(index_reg__0[0]),
        .I5(datain[920]),
        .O(\nr_of_ones[4]_i_265_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_266 
       (.I0(datain[927]),
        .I1(datain[926]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[925]),
        .I4(index_reg__0[0]),
        .I5(datain[924]),
        .O(\nr_of_ones[4]_i_266_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_267 
       (.I0(datain[899]),
        .I1(datain[898]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[897]),
        .I4(index_reg__0[0]),
        .I5(datain[896]),
        .O(\nr_of_ones[4]_i_267_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_268 
       (.I0(datain[903]),
        .I1(datain[902]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[901]),
        .I4(index_reg__0[0]),
        .I5(datain[900]),
        .O(\nr_of_ones[4]_i_268_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_269 
       (.I0(datain[907]),
        .I1(datain[906]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[905]),
        .I4(index_reg__0[0]),
        .I5(datain[904]),
        .O(\nr_of_ones[4]_i_269_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_27 
       (.I0(\nr_of_ones_reg[4]_i_79_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_80_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_81_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_82_n_0 ),
        .O(\nr_of_ones[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_270 
       (.I0(datain[911]),
        .I1(datain[910]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[909]),
        .I4(index_reg__0[0]),
        .I5(datain[908]),
        .O(\nr_of_ones[4]_i_270_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_271 
       (.I0(datain[1011]),
        .I1(datain[1010]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[1009]),
        .I4(index_reg__0[0]),
        .I5(datain[1008]),
        .O(\nr_of_ones[4]_i_271_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_272 
       (.I0(datain[1015]),
        .I1(datain[1014]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[1013]),
        .I4(index_reg__0[0]),
        .I5(datain[1012]),
        .O(\nr_of_ones[4]_i_272_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_273 
       (.I0(datain[1019]),
        .I1(datain[1018]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[1017]),
        .I4(index_reg__0[0]),
        .I5(datain[1016]),
        .O(\nr_of_ones[4]_i_273_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_274 
       (.I0(datain[1023]),
        .I1(datain[1022]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[1021]),
        .I4(index_reg__0[0]),
        .I5(datain[1020]),
        .O(\nr_of_ones[4]_i_274_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_275 
       (.I0(datain[995]),
        .I1(datain[994]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[993]),
        .I4(index_reg__0[0]),
        .I5(datain[992]),
        .O(\nr_of_ones[4]_i_275_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_276 
       (.I0(datain[999]),
        .I1(datain[998]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[997]),
        .I4(index_reg__0[0]),
        .I5(datain[996]),
        .O(\nr_of_ones[4]_i_276_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_277 
       (.I0(datain[1003]),
        .I1(datain[1002]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[1001]),
        .I4(index_reg__0[0]),
        .I5(datain[1000]),
        .O(\nr_of_ones[4]_i_277_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_278 
       (.I0(datain[1007]),
        .I1(datain[1006]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[1005]),
        .I4(index_reg__0[0]),
        .I5(datain[1004]),
        .O(\nr_of_ones[4]_i_278_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_279 
       (.I0(datain[979]),
        .I1(datain[978]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[977]),
        .I4(index_reg__0[0]),
        .I5(datain[976]),
        .O(\nr_of_ones[4]_i_279_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_28 
       (.I0(\nr_of_ones_reg[4]_i_83_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_84_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_85_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_86_n_0 ),
        .O(\nr_of_ones[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_280 
       (.I0(datain[983]),
        .I1(datain[982]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[981]),
        .I4(index_reg__0[0]),
        .I5(datain[980]),
        .O(\nr_of_ones[4]_i_280_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_281 
       (.I0(datain[987]),
        .I1(datain[986]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[985]),
        .I4(index_reg__0[0]),
        .I5(datain[984]),
        .O(\nr_of_ones[4]_i_281_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_282 
       (.I0(datain[991]),
        .I1(datain[990]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[989]),
        .I4(index_reg__0[0]),
        .I5(datain[988]),
        .O(\nr_of_ones[4]_i_282_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_283 
       (.I0(datain[963]),
        .I1(datain[962]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[961]),
        .I4(index_reg__0[0]),
        .I5(datain[960]),
        .O(\nr_of_ones[4]_i_283_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_284 
       (.I0(datain[967]),
        .I1(datain[966]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[965]),
        .I4(index_reg__0[0]),
        .I5(datain[964]),
        .O(\nr_of_ones[4]_i_284_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_285 
       (.I0(datain[971]),
        .I1(datain[970]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[969]),
        .I4(index_reg__0[0]),
        .I5(datain[968]),
        .O(\nr_of_ones[4]_i_285_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_286 
       (.I0(datain[975]),
        .I1(datain[974]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[973]),
        .I4(index_reg__0[0]),
        .I5(datain[972]),
        .O(\nr_of_ones[4]_i_286_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_287 
       (.I0(datain[307]),
        .I1(datain[306]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[305]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[304]),
        .O(\nr_of_ones[4]_i_287_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_288 
       (.I0(datain[311]),
        .I1(datain[310]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[309]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[308]),
        .O(\nr_of_ones[4]_i_288_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_289 
       (.I0(datain[315]),
        .I1(datain[314]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[313]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[312]),
        .O(\nr_of_ones[4]_i_289_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_29 
       (.I0(\nr_of_ones_reg[4]_i_87_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_88_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_89_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_90_n_0 ),
        .O(\nr_of_ones[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_290 
       (.I0(datain[319]),
        .I1(datain[318]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[317]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[316]),
        .O(\nr_of_ones[4]_i_290_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_291 
       (.I0(datain[291]),
        .I1(datain[290]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[289]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[288]),
        .O(\nr_of_ones[4]_i_291_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_292 
       (.I0(datain[295]),
        .I1(datain[294]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[293]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[292]),
        .O(\nr_of_ones[4]_i_292_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_293 
       (.I0(datain[299]),
        .I1(datain[298]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[297]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[296]),
        .O(\nr_of_ones[4]_i_293_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_294 
       (.I0(datain[303]),
        .I1(datain[302]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[301]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[300]),
        .O(\nr_of_ones[4]_i_294_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_295 
       (.I0(datain[275]),
        .I1(datain[274]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[273]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[272]),
        .O(\nr_of_ones[4]_i_295_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_296 
       (.I0(datain[279]),
        .I1(datain[278]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[277]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[276]),
        .O(\nr_of_ones[4]_i_296_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_297 
       (.I0(datain[283]),
        .I1(datain[282]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[281]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[280]),
        .O(\nr_of_ones[4]_i_297_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_298 
       (.I0(datain[287]),
        .I1(datain[286]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[285]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[284]),
        .O(\nr_of_ones[4]_i_298_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_299 
       (.I0(datain[259]),
        .I1(datain[258]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[257]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[256]),
        .O(\nr_of_ones[4]_i_299_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_30 
       (.I0(\nr_of_ones_reg[4]_i_91_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_92_n_0 ),
        .I2(index_reg__0[5]),
        .I3(\nr_of_ones_reg[4]_i_93_n_0 ),
        .I4(index_reg__0[4]),
        .I5(\nr_of_ones_reg[4]_i_94_n_0 ),
        .O(\nr_of_ones[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_300 
       (.I0(datain[263]),
        .I1(datain[262]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[261]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[260]),
        .O(\nr_of_ones[4]_i_300_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_301 
       (.I0(datain[267]),
        .I1(datain[266]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[265]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[264]),
        .O(\nr_of_ones[4]_i_301_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_302 
       (.I0(datain[271]),
        .I1(datain[270]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[269]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[268]),
        .O(\nr_of_ones[4]_i_302_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_303 
       (.I0(datain[371]),
        .I1(datain[370]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[369]),
        .I4(index_reg__0[0]),
        .I5(datain[368]),
        .O(\nr_of_ones[4]_i_303_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_304 
       (.I0(datain[375]),
        .I1(datain[374]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[373]),
        .I4(index_reg__0[0]),
        .I5(datain[372]),
        .O(\nr_of_ones[4]_i_304_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_305 
       (.I0(datain[379]),
        .I1(datain[378]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[377]),
        .I4(index_reg__0[0]),
        .I5(datain[376]),
        .O(\nr_of_ones[4]_i_305_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_306 
       (.I0(datain[383]),
        .I1(datain[382]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[381]),
        .I4(index_reg__0[0]),
        .I5(datain[380]),
        .O(\nr_of_ones[4]_i_306_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_307 
       (.I0(datain[355]),
        .I1(datain[354]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[353]),
        .I4(index_reg__0[0]),
        .I5(datain[352]),
        .O(\nr_of_ones[4]_i_307_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_308 
       (.I0(datain[359]),
        .I1(datain[358]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[357]),
        .I4(index_reg__0[0]),
        .I5(datain[356]),
        .O(\nr_of_ones[4]_i_308_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_309 
       (.I0(datain[363]),
        .I1(datain[362]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[361]),
        .I4(index_reg__0[0]),
        .I5(datain[360]),
        .O(\nr_of_ones[4]_i_309_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_310 
       (.I0(datain[367]),
        .I1(datain[366]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[365]),
        .I4(index_reg__0[0]),
        .I5(datain[364]),
        .O(\nr_of_ones[4]_i_310_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_311 
       (.I0(datain[339]),
        .I1(datain[338]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[337]),
        .I4(index_reg__0[0]),
        .I5(datain[336]),
        .O(\nr_of_ones[4]_i_311_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_312 
       (.I0(datain[343]),
        .I1(datain[342]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[341]),
        .I4(index_reg__0[0]),
        .I5(datain[340]),
        .O(\nr_of_ones[4]_i_312_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_313 
       (.I0(datain[347]),
        .I1(datain[346]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[345]),
        .I4(index_reg__0[0]),
        .I5(datain[344]),
        .O(\nr_of_ones[4]_i_313_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_314 
       (.I0(datain[351]),
        .I1(datain[350]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[349]),
        .I4(index_reg__0[0]),
        .I5(datain[348]),
        .O(\nr_of_ones[4]_i_314_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_315 
       (.I0(datain[323]),
        .I1(datain[322]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[321]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[320]),
        .O(\nr_of_ones[4]_i_315_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_316 
       (.I0(datain[327]),
        .I1(datain[326]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[325]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[324]),
        .O(\nr_of_ones[4]_i_316_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_317 
       (.I0(datain[331]),
        .I1(datain[330]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[329]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[328]),
        .O(\nr_of_ones[4]_i_317_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_318 
       (.I0(datain[335]),
        .I1(datain[334]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[333]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[332]),
        .O(\nr_of_ones[4]_i_318_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_319 
       (.I0(datain[435]),
        .I1(datain[434]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[433]),
        .I4(index_reg__0[0]),
        .I5(datain[432]),
        .O(\nr_of_ones[4]_i_319_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_320 
       (.I0(datain[439]),
        .I1(datain[438]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[437]),
        .I4(index_reg__0[0]),
        .I5(datain[436]),
        .O(\nr_of_ones[4]_i_320_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_321 
       (.I0(datain[443]),
        .I1(datain[442]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[441]),
        .I4(index_reg__0[0]),
        .I5(datain[440]),
        .O(\nr_of_ones[4]_i_321_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_322 
       (.I0(datain[447]),
        .I1(datain[446]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[445]),
        .I4(index_reg__0[0]),
        .I5(datain[444]),
        .O(\nr_of_ones[4]_i_322_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_323 
       (.I0(datain[419]),
        .I1(datain[418]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[417]),
        .I4(index_reg__0[0]),
        .I5(datain[416]),
        .O(\nr_of_ones[4]_i_323_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_324 
       (.I0(datain[423]),
        .I1(datain[422]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[421]),
        .I4(index_reg__0[0]),
        .I5(datain[420]),
        .O(\nr_of_ones[4]_i_324_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_325 
       (.I0(datain[427]),
        .I1(datain[426]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[425]),
        .I4(index_reg__0[0]),
        .I5(datain[424]),
        .O(\nr_of_ones[4]_i_325_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_326 
       (.I0(datain[431]),
        .I1(datain[430]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[429]),
        .I4(index_reg__0[0]),
        .I5(datain[428]),
        .O(\nr_of_ones[4]_i_326_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_327 
       (.I0(datain[403]),
        .I1(datain[402]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[401]),
        .I4(index_reg__0[0]),
        .I5(datain[400]),
        .O(\nr_of_ones[4]_i_327_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_328 
       (.I0(datain[407]),
        .I1(datain[406]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[405]),
        .I4(index_reg__0[0]),
        .I5(datain[404]),
        .O(\nr_of_ones[4]_i_328_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_329 
       (.I0(datain[411]),
        .I1(datain[410]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[409]),
        .I4(index_reg__0[0]),
        .I5(datain[408]),
        .O(\nr_of_ones[4]_i_329_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_330 
       (.I0(datain[415]),
        .I1(datain[414]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[413]),
        .I4(index_reg__0[0]),
        .I5(datain[412]),
        .O(\nr_of_ones[4]_i_330_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_331 
       (.I0(datain[387]),
        .I1(datain[386]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[385]),
        .I4(index_reg__0[0]),
        .I5(datain[384]),
        .O(\nr_of_ones[4]_i_331_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_332 
       (.I0(datain[391]),
        .I1(datain[390]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[389]),
        .I4(index_reg__0[0]),
        .I5(datain[388]),
        .O(\nr_of_ones[4]_i_332_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_333 
       (.I0(datain[395]),
        .I1(datain[394]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[393]),
        .I4(index_reg__0[0]),
        .I5(datain[392]),
        .O(\nr_of_ones[4]_i_333_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_334 
       (.I0(datain[399]),
        .I1(datain[398]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[397]),
        .I4(index_reg__0[0]),
        .I5(datain[396]),
        .O(\nr_of_ones[4]_i_334_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_335 
       (.I0(datain[499]),
        .I1(datain[498]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[497]),
        .I4(index_reg__0[0]),
        .I5(datain[496]),
        .O(\nr_of_ones[4]_i_335_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_336 
       (.I0(datain[503]),
        .I1(datain[502]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[501]),
        .I4(index_reg__0[0]),
        .I5(datain[500]),
        .O(\nr_of_ones[4]_i_336_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_337 
       (.I0(datain[507]),
        .I1(datain[506]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[505]),
        .I4(index_reg__0[0]),
        .I5(datain[504]),
        .O(\nr_of_ones[4]_i_337_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_338 
       (.I0(datain[511]),
        .I1(datain[510]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[509]),
        .I4(index_reg__0[0]),
        .I5(datain[508]),
        .O(\nr_of_ones[4]_i_338_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_339 
       (.I0(datain[483]),
        .I1(datain[482]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[481]),
        .I4(index_reg__0[0]),
        .I5(datain[480]),
        .O(\nr_of_ones[4]_i_339_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_340 
       (.I0(datain[487]),
        .I1(datain[486]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[485]),
        .I4(index_reg__0[0]),
        .I5(datain[484]),
        .O(\nr_of_ones[4]_i_340_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_341 
       (.I0(datain[491]),
        .I1(datain[490]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[489]),
        .I4(index_reg__0[0]),
        .I5(datain[488]),
        .O(\nr_of_ones[4]_i_341_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_342 
       (.I0(datain[495]),
        .I1(datain[494]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[493]),
        .I4(index_reg__0[0]),
        .I5(datain[492]),
        .O(\nr_of_ones[4]_i_342_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_343 
       (.I0(datain[467]),
        .I1(datain[466]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[465]),
        .I4(index_reg__0[0]),
        .I5(datain[464]),
        .O(\nr_of_ones[4]_i_343_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_344 
       (.I0(datain[471]),
        .I1(datain[470]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[469]),
        .I4(index_reg__0[0]),
        .I5(datain[468]),
        .O(\nr_of_ones[4]_i_344_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_345 
       (.I0(datain[475]),
        .I1(datain[474]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[473]),
        .I4(index_reg__0[0]),
        .I5(datain[472]),
        .O(\nr_of_ones[4]_i_345_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_346 
       (.I0(datain[479]),
        .I1(datain[478]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[477]),
        .I4(index_reg__0[0]),
        .I5(datain[476]),
        .O(\nr_of_ones[4]_i_346_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_347 
       (.I0(datain[451]),
        .I1(datain[450]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[449]),
        .I4(index_reg__0[0]),
        .I5(datain[448]),
        .O(\nr_of_ones[4]_i_347_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_348 
       (.I0(datain[455]),
        .I1(datain[454]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[453]),
        .I4(index_reg__0[0]),
        .I5(datain[452]),
        .O(\nr_of_ones[4]_i_348_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_349 
       (.I0(datain[459]),
        .I1(datain[458]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[457]),
        .I4(index_reg__0[0]),
        .I5(datain[456]),
        .O(\nr_of_ones[4]_i_349_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_350 
       (.I0(datain[463]),
        .I1(datain[462]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[461]),
        .I4(index_reg__0[0]),
        .I5(datain[460]),
        .O(\nr_of_ones[4]_i_350_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_351 
       (.I0(datain[563]),
        .I1(datain[562]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[561]),
        .I4(index_reg__0[0]),
        .I5(datain[560]),
        .O(\nr_of_ones[4]_i_351_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_352 
       (.I0(datain[567]),
        .I1(datain[566]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[565]),
        .I4(index_reg__0[0]),
        .I5(datain[564]),
        .O(\nr_of_ones[4]_i_352_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_353 
       (.I0(datain[571]),
        .I1(datain[570]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[569]),
        .I4(index_reg__0[0]),
        .I5(datain[568]),
        .O(\nr_of_ones[4]_i_353_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_354 
       (.I0(datain[575]),
        .I1(datain[574]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[573]),
        .I4(index_reg__0[0]),
        .I5(datain[572]),
        .O(\nr_of_ones[4]_i_354_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_355 
       (.I0(datain[547]),
        .I1(datain[546]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[545]),
        .I4(index_reg__0[0]),
        .I5(datain[544]),
        .O(\nr_of_ones[4]_i_355_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_356 
       (.I0(datain[551]),
        .I1(datain[550]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[549]),
        .I4(index_reg__0[0]),
        .I5(datain[548]),
        .O(\nr_of_ones[4]_i_356_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_357 
       (.I0(datain[555]),
        .I1(datain[554]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[553]),
        .I4(index_reg__0[0]),
        .I5(datain[552]),
        .O(\nr_of_ones[4]_i_357_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_358 
       (.I0(datain[559]),
        .I1(datain[558]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[557]),
        .I4(index_reg__0[0]),
        .I5(datain[556]),
        .O(\nr_of_ones[4]_i_358_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_359 
       (.I0(datain[531]),
        .I1(datain[530]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[529]),
        .I4(index_reg__0[0]),
        .I5(datain[528]),
        .O(\nr_of_ones[4]_i_359_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_360 
       (.I0(datain[535]),
        .I1(datain[534]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[533]),
        .I4(index_reg__0[0]),
        .I5(datain[532]),
        .O(\nr_of_ones[4]_i_360_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_361 
       (.I0(datain[539]),
        .I1(datain[538]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[537]),
        .I4(index_reg__0[0]),
        .I5(datain[536]),
        .O(\nr_of_ones[4]_i_361_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_362 
       (.I0(datain[543]),
        .I1(datain[542]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[541]),
        .I4(index_reg__0[0]),
        .I5(datain[540]),
        .O(\nr_of_ones[4]_i_362_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_363 
       (.I0(datain[515]),
        .I1(datain[514]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[513]),
        .I4(index_reg__0[0]),
        .I5(datain[512]),
        .O(\nr_of_ones[4]_i_363_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_364 
       (.I0(datain[519]),
        .I1(datain[518]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[517]),
        .I4(index_reg__0[0]),
        .I5(datain[516]),
        .O(\nr_of_ones[4]_i_364_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_365 
       (.I0(datain[523]),
        .I1(datain[522]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[521]),
        .I4(index_reg__0[0]),
        .I5(datain[520]),
        .O(\nr_of_ones[4]_i_365_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_366 
       (.I0(datain[527]),
        .I1(datain[526]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[525]),
        .I4(index_reg__0[0]),
        .I5(datain[524]),
        .O(\nr_of_ones[4]_i_366_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_367 
       (.I0(datain[627]),
        .I1(datain[626]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[625]),
        .I4(index_reg__0[0]),
        .I5(datain[624]),
        .O(\nr_of_ones[4]_i_367_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_368 
       (.I0(datain[631]),
        .I1(datain[630]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[629]),
        .I4(index_reg__0[0]),
        .I5(datain[628]),
        .O(\nr_of_ones[4]_i_368_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_369 
       (.I0(datain[635]),
        .I1(datain[634]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[633]),
        .I4(index_reg__0[0]),
        .I5(datain[632]),
        .O(\nr_of_ones[4]_i_369_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_370 
       (.I0(datain[639]),
        .I1(datain[638]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[637]),
        .I4(index_reg__0[0]),
        .I5(datain[636]),
        .O(\nr_of_ones[4]_i_370_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_371 
       (.I0(datain[611]),
        .I1(datain[610]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[609]),
        .I4(index_reg__0[0]),
        .I5(datain[608]),
        .O(\nr_of_ones[4]_i_371_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_372 
       (.I0(datain[615]),
        .I1(datain[614]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[613]),
        .I4(index_reg__0[0]),
        .I5(datain[612]),
        .O(\nr_of_ones[4]_i_372_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_373 
       (.I0(datain[619]),
        .I1(datain[618]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[617]),
        .I4(index_reg__0[0]),
        .I5(datain[616]),
        .O(\nr_of_ones[4]_i_373_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_374 
       (.I0(datain[623]),
        .I1(datain[622]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[621]),
        .I4(index_reg__0[0]),
        .I5(datain[620]),
        .O(\nr_of_ones[4]_i_374_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_375 
       (.I0(datain[595]),
        .I1(datain[594]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[593]),
        .I4(index_reg__0[0]),
        .I5(datain[592]),
        .O(\nr_of_ones[4]_i_375_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_376 
       (.I0(datain[599]),
        .I1(datain[598]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[597]),
        .I4(index_reg__0[0]),
        .I5(datain[596]),
        .O(\nr_of_ones[4]_i_376_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_377 
       (.I0(datain[603]),
        .I1(datain[602]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[601]),
        .I4(index_reg__0[0]),
        .I5(datain[600]),
        .O(\nr_of_ones[4]_i_377_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_378 
       (.I0(datain[607]),
        .I1(datain[606]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[605]),
        .I4(index_reg__0[0]),
        .I5(datain[604]),
        .O(\nr_of_ones[4]_i_378_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_379 
       (.I0(datain[579]),
        .I1(datain[578]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[577]),
        .I4(index_reg__0[0]),
        .I5(datain[576]),
        .O(\nr_of_ones[4]_i_379_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_380 
       (.I0(datain[583]),
        .I1(datain[582]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[581]),
        .I4(index_reg__0[0]),
        .I5(datain[580]),
        .O(\nr_of_ones[4]_i_380_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_381 
       (.I0(datain[587]),
        .I1(datain[586]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[585]),
        .I4(index_reg__0[0]),
        .I5(datain[584]),
        .O(\nr_of_ones[4]_i_381_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_382 
       (.I0(datain[591]),
        .I1(datain[590]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[589]),
        .I4(index_reg__0[0]),
        .I5(datain[588]),
        .O(\nr_of_ones[4]_i_382_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_383 
       (.I0(datain[691]),
        .I1(datain[690]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[689]),
        .I4(index_reg__0[0]),
        .I5(datain[688]),
        .O(\nr_of_ones[4]_i_383_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_384 
       (.I0(datain[695]),
        .I1(datain[694]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[693]),
        .I4(index_reg__0[0]),
        .I5(datain[692]),
        .O(\nr_of_ones[4]_i_384_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_385 
       (.I0(datain[699]),
        .I1(datain[698]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[697]),
        .I4(index_reg__0[0]),
        .I5(datain[696]),
        .O(\nr_of_ones[4]_i_385_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_386 
       (.I0(datain[703]),
        .I1(datain[702]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[701]),
        .I4(index_reg__0[0]),
        .I5(datain[700]),
        .O(\nr_of_ones[4]_i_386_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_387 
       (.I0(datain[675]),
        .I1(datain[674]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[673]),
        .I4(index_reg__0[0]),
        .I5(datain[672]),
        .O(\nr_of_ones[4]_i_387_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_388 
       (.I0(datain[679]),
        .I1(datain[678]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[677]),
        .I4(index_reg__0[0]),
        .I5(datain[676]),
        .O(\nr_of_ones[4]_i_388_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_389 
       (.I0(datain[683]),
        .I1(datain[682]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[681]),
        .I4(index_reg__0[0]),
        .I5(datain[680]),
        .O(\nr_of_ones[4]_i_389_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_390 
       (.I0(datain[687]),
        .I1(datain[686]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[685]),
        .I4(index_reg__0[0]),
        .I5(datain[684]),
        .O(\nr_of_ones[4]_i_390_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_391 
       (.I0(datain[659]),
        .I1(datain[658]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[657]),
        .I4(index_reg__0[0]),
        .I5(datain[656]),
        .O(\nr_of_ones[4]_i_391_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_392 
       (.I0(datain[663]),
        .I1(datain[662]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[661]),
        .I4(index_reg__0[0]),
        .I5(datain[660]),
        .O(\nr_of_ones[4]_i_392_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_393 
       (.I0(datain[667]),
        .I1(datain[666]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[665]),
        .I4(index_reg__0[0]),
        .I5(datain[664]),
        .O(\nr_of_ones[4]_i_393_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_394 
       (.I0(datain[671]),
        .I1(datain[670]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[669]),
        .I4(index_reg__0[0]),
        .I5(datain[668]),
        .O(\nr_of_ones[4]_i_394_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_395 
       (.I0(datain[643]),
        .I1(datain[642]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[641]),
        .I4(index_reg__0[0]),
        .I5(datain[640]),
        .O(\nr_of_ones[4]_i_395_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_396 
       (.I0(datain[647]),
        .I1(datain[646]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[645]),
        .I4(index_reg__0[0]),
        .I5(datain[644]),
        .O(\nr_of_ones[4]_i_396_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_397 
       (.I0(datain[651]),
        .I1(datain[650]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[649]),
        .I4(index_reg__0[0]),
        .I5(datain[648]),
        .O(\nr_of_ones[4]_i_397_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_398 
       (.I0(datain[655]),
        .I1(datain[654]),
        .I2(\index_reg[1]_rep__0_n_0 ),
        .I3(datain[653]),
        .I4(index_reg__0[0]),
        .I5(datain[652]),
        .O(\nr_of_ones[4]_i_398_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_399 
       (.I0(datain[755]),
        .I1(datain[754]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[753]),
        .I4(index_reg__0[0]),
        .I5(datain[752]),
        .O(\nr_of_ones[4]_i_399_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_400 
       (.I0(datain[759]),
        .I1(datain[758]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[757]),
        .I4(index_reg__0[0]),
        .I5(datain[756]),
        .O(\nr_of_ones[4]_i_400_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_401 
       (.I0(datain[763]),
        .I1(datain[762]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[761]),
        .I4(index_reg__0[0]),
        .I5(datain[760]),
        .O(\nr_of_ones[4]_i_401_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_402 
       (.I0(datain[767]),
        .I1(datain[766]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[765]),
        .I4(index_reg__0[0]),
        .I5(datain[764]),
        .O(\nr_of_ones[4]_i_402_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_403 
       (.I0(datain[739]),
        .I1(datain[738]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[737]),
        .I4(index_reg__0[0]),
        .I5(datain[736]),
        .O(\nr_of_ones[4]_i_403_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_404 
       (.I0(datain[743]),
        .I1(datain[742]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[741]),
        .I4(index_reg__0[0]),
        .I5(datain[740]),
        .O(\nr_of_ones[4]_i_404_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_405 
       (.I0(datain[747]),
        .I1(datain[746]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[745]),
        .I4(index_reg__0[0]),
        .I5(datain[744]),
        .O(\nr_of_ones[4]_i_405_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_406 
       (.I0(datain[751]),
        .I1(datain[750]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[749]),
        .I4(index_reg__0[0]),
        .I5(datain[748]),
        .O(\nr_of_ones[4]_i_406_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_407 
       (.I0(datain[723]),
        .I1(datain[722]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[721]),
        .I4(index_reg__0[0]),
        .I5(datain[720]),
        .O(\nr_of_ones[4]_i_407_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_408 
       (.I0(datain[727]),
        .I1(datain[726]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[725]),
        .I4(index_reg__0[0]),
        .I5(datain[724]),
        .O(\nr_of_ones[4]_i_408_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_409 
       (.I0(datain[731]),
        .I1(datain[730]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[729]),
        .I4(index_reg__0[0]),
        .I5(datain[728]),
        .O(\nr_of_ones[4]_i_409_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_410 
       (.I0(datain[735]),
        .I1(datain[734]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[733]),
        .I4(index_reg__0[0]),
        .I5(datain[732]),
        .O(\nr_of_ones[4]_i_410_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_411 
       (.I0(datain[707]),
        .I1(datain[706]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[705]),
        .I4(index_reg__0[0]),
        .I5(datain[704]),
        .O(\nr_of_ones[4]_i_411_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_412 
       (.I0(datain[711]),
        .I1(datain[710]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[709]),
        .I4(index_reg__0[0]),
        .I5(datain[708]),
        .O(\nr_of_ones[4]_i_412_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_413 
       (.I0(datain[715]),
        .I1(datain[714]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[713]),
        .I4(index_reg__0[0]),
        .I5(datain[712]),
        .O(\nr_of_ones[4]_i_413_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_414 
       (.I0(datain[719]),
        .I1(datain[718]),
        .I2(\index_reg[1]_rep__1_n_0 ),
        .I3(datain[717]),
        .I4(index_reg__0[0]),
        .I5(datain[716]),
        .O(\nr_of_ones[4]_i_414_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_415 
       (.I0(datain[51]),
        .I1(datain[50]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[49]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[48]),
        .O(\nr_of_ones[4]_i_415_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_416 
       (.I0(datain[55]),
        .I1(datain[54]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[53]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[52]),
        .O(\nr_of_ones[4]_i_416_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_417 
       (.I0(datain[59]),
        .I1(datain[58]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[57]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[56]),
        .O(\nr_of_ones[4]_i_417_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_418 
       (.I0(datain[63]),
        .I1(datain[62]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[61]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[60]),
        .O(\nr_of_ones[4]_i_418_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_419 
       (.I0(datain[35]),
        .I1(datain[34]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[33]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[32]),
        .O(\nr_of_ones[4]_i_419_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_420 
       (.I0(datain[39]),
        .I1(datain[38]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[37]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[36]),
        .O(\nr_of_ones[4]_i_420_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_421 
       (.I0(datain[43]),
        .I1(datain[42]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[41]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[40]),
        .O(\nr_of_ones[4]_i_421_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_422 
       (.I0(datain[47]),
        .I1(datain[46]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[45]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[44]),
        .O(\nr_of_ones[4]_i_422_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_423 
       (.I0(datain[19]),
        .I1(datain[18]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[17]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[16]),
        .O(\nr_of_ones[4]_i_423_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_424 
       (.I0(datain[23]),
        .I1(datain[22]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[21]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[20]),
        .O(\nr_of_ones[4]_i_424_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_425 
       (.I0(datain[27]),
        .I1(datain[26]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[25]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[24]),
        .O(\nr_of_ones[4]_i_425_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_426 
       (.I0(datain[31]),
        .I1(datain[30]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[29]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[28]),
        .O(\nr_of_ones[4]_i_426_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_427 
       (.I0(datain[3]),
        .I1(datain[2]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[1]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[0]),
        .O(\nr_of_ones[4]_i_427_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_428 
       (.I0(datain[7]),
        .I1(datain[6]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[5]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[4]),
        .O(\nr_of_ones[4]_i_428_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_429 
       (.I0(datain[11]),
        .I1(datain[10]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[9]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[8]),
        .O(\nr_of_ones[4]_i_429_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_430 
       (.I0(datain[15]),
        .I1(datain[14]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[13]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[12]),
        .O(\nr_of_ones[4]_i_430_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_431 
       (.I0(datain[115]),
        .I1(datain[114]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[113]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[112]),
        .O(\nr_of_ones[4]_i_431_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_432 
       (.I0(datain[119]),
        .I1(datain[118]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[117]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[116]),
        .O(\nr_of_ones[4]_i_432_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_433 
       (.I0(datain[123]),
        .I1(datain[122]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[121]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[120]),
        .O(\nr_of_ones[4]_i_433_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_434 
       (.I0(datain[127]),
        .I1(datain[126]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[125]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[124]),
        .O(\nr_of_ones[4]_i_434_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_435 
       (.I0(datain[99]),
        .I1(datain[98]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[97]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[96]),
        .O(\nr_of_ones[4]_i_435_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_436 
       (.I0(datain[103]),
        .I1(datain[102]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[101]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[100]),
        .O(\nr_of_ones[4]_i_436_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_437 
       (.I0(datain[107]),
        .I1(datain[106]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[105]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[104]),
        .O(\nr_of_ones[4]_i_437_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_438 
       (.I0(datain[111]),
        .I1(datain[110]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[109]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[108]),
        .O(\nr_of_ones[4]_i_438_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_439 
       (.I0(datain[83]),
        .I1(datain[82]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[81]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[80]),
        .O(\nr_of_ones[4]_i_439_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_440 
       (.I0(datain[87]),
        .I1(datain[86]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[85]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[84]),
        .O(\nr_of_ones[4]_i_440_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_441 
       (.I0(datain[91]),
        .I1(datain[90]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[89]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[88]),
        .O(\nr_of_ones[4]_i_441_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_442 
       (.I0(datain[95]),
        .I1(datain[94]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[93]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[92]),
        .O(\nr_of_ones[4]_i_442_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_443 
       (.I0(datain[67]),
        .I1(datain[66]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[65]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[64]),
        .O(\nr_of_ones[4]_i_443_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_444 
       (.I0(datain[71]),
        .I1(datain[70]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[69]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[68]),
        .O(\nr_of_ones[4]_i_444_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_445 
       (.I0(datain[75]),
        .I1(datain[74]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[73]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[72]),
        .O(\nr_of_ones[4]_i_445_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_446 
       (.I0(datain[79]),
        .I1(datain[78]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[77]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[76]),
        .O(\nr_of_ones[4]_i_446_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_447 
       (.I0(datain[179]),
        .I1(datain[178]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[177]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[176]),
        .O(\nr_of_ones[4]_i_447_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_448 
       (.I0(datain[183]),
        .I1(datain[182]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[181]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[180]),
        .O(\nr_of_ones[4]_i_448_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_449 
       (.I0(datain[187]),
        .I1(datain[186]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[185]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[184]),
        .O(\nr_of_ones[4]_i_449_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_450 
       (.I0(datain[191]),
        .I1(datain[190]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[189]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[188]),
        .O(\nr_of_ones[4]_i_450_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_451 
       (.I0(datain[163]),
        .I1(datain[162]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[161]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[160]),
        .O(\nr_of_ones[4]_i_451_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_452 
       (.I0(datain[167]),
        .I1(datain[166]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[165]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[164]),
        .O(\nr_of_ones[4]_i_452_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_453 
       (.I0(datain[171]),
        .I1(datain[170]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[169]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[168]),
        .O(\nr_of_ones[4]_i_453_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_454 
       (.I0(datain[175]),
        .I1(datain[174]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[173]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[172]),
        .O(\nr_of_ones[4]_i_454_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_455 
       (.I0(datain[147]),
        .I1(datain[146]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[145]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[144]),
        .O(\nr_of_ones[4]_i_455_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_456 
       (.I0(datain[151]),
        .I1(datain[150]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[149]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[148]),
        .O(\nr_of_ones[4]_i_456_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_457 
       (.I0(datain[155]),
        .I1(datain[154]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[153]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[152]),
        .O(\nr_of_ones[4]_i_457_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_458 
       (.I0(datain[159]),
        .I1(datain[158]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[157]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[156]),
        .O(\nr_of_ones[4]_i_458_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_459 
       (.I0(datain[131]),
        .I1(datain[130]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[129]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[128]),
        .O(\nr_of_ones[4]_i_459_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_460 
       (.I0(datain[135]),
        .I1(datain[134]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[133]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[132]),
        .O(\nr_of_ones[4]_i_460_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_461 
       (.I0(datain[139]),
        .I1(datain[138]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[137]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[136]),
        .O(\nr_of_ones[4]_i_461_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_462 
       (.I0(datain[143]),
        .I1(datain[142]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[141]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[140]),
        .O(\nr_of_ones[4]_i_462_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_463 
       (.I0(datain[243]),
        .I1(datain[242]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[241]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[240]),
        .O(\nr_of_ones[4]_i_463_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_464 
       (.I0(datain[247]),
        .I1(datain[246]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[245]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[244]),
        .O(\nr_of_ones[4]_i_464_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_465 
       (.I0(datain[251]),
        .I1(datain[250]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[249]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[248]),
        .O(\nr_of_ones[4]_i_465_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_466 
       (.I0(datain[255]),
        .I1(datain[254]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[253]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[252]),
        .O(\nr_of_ones[4]_i_466_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_467 
       (.I0(datain[227]),
        .I1(datain[226]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[225]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[224]),
        .O(\nr_of_ones[4]_i_467_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_468 
       (.I0(datain[231]),
        .I1(datain[230]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[229]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[228]),
        .O(\nr_of_ones[4]_i_468_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_469 
       (.I0(datain[235]),
        .I1(datain[234]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[233]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[232]),
        .O(\nr_of_ones[4]_i_469_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_470 
       (.I0(datain[239]),
        .I1(datain[238]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[237]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[236]),
        .O(\nr_of_ones[4]_i_470_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_471 
       (.I0(datain[211]),
        .I1(datain[210]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[209]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[208]),
        .O(\nr_of_ones[4]_i_471_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_472 
       (.I0(datain[215]),
        .I1(datain[214]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[213]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[212]),
        .O(\nr_of_ones[4]_i_472_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_473 
       (.I0(datain[219]),
        .I1(datain[218]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[217]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[216]),
        .O(\nr_of_ones[4]_i_473_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_474 
       (.I0(datain[223]),
        .I1(datain[222]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[221]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[220]),
        .O(\nr_of_ones[4]_i_474_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_475 
       (.I0(datain[195]),
        .I1(datain[194]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[193]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[192]),
        .O(\nr_of_ones[4]_i_475_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_476 
       (.I0(datain[199]),
        .I1(datain[198]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[197]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[196]),
        .O(\nr_of_ones[4]_i_476_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_477 
       (.I0(datain[203]),
        .I1(datain[202]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[201]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[200]),
        .O(\nr_of_ones[4]_i_477_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \nr_of_ones[4]_i_478 
       (.I0(datain[207]),
        .I1(datain[206]),
        .I2(\index_reg[1]_rep_n_0 ),
        .I3(datain[205]),
        .I4(\index_reg[0]_rep__0_n_0 ),
        .I5(datain[204]),
        .O(\nr_of_ones[4]_i_478_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \nr_of_ones[5]_i_1 
       (.I0(\nr_of_ones[9]_i_2_n_0 ),
        .I1(nr_of_ones_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \nr_of_ones[6]_i_1 
       (.I0(\nr_of_ones[9]_i_2_n_0 ),
        .I1(nr_of_ones_reg__0[5]),
        .I2(nr_of_ones_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \nr_of_ones[7]_i_1 
       (.I0(nr_of_ones_reg__0[5]),
        .I1(\nr_of_ones[9]_i_2_n_0 ),
        .I2(nr_of_ones_reg__0[6]),
        .I3(nr_of_ones_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \nr_of_ones[8]_i_1 
       (.I0(nr_of_ones_reg__0[6]),
        .I1(\nr_of_ones[9]_i_2_n_0 ),
        .I2(nr_of_ones_reg__0[5]),
        .I3(nr_of_ones_reg__0[7]),
        .I4(nr_of_ones_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \nr_of_ones[9]_i_1 
       (.I0(nr_of_ones_reg__0[7]),
        .I1(nr_of_ones_reg__0[5]),
        .I2(\nr_of_ones[9]_i_2_n_0 ),
        .I3(nr_of_ones_reg__0[6]),
        .I4(nr_of_ones_reg__0[8]),
        .I5(nr_of_ones_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \nr_of_ones[9]_i_2 
       (.I0(nr_of_ones_reg__0[4]),
        .I1(nr_of_ones_reg__0[2]),
        .I2(nr_of_ones1),
        .I3(nr_of_ones_reg__0[0]),
        .I4(nr_of_ones_reg__0[1]),
        .I5(nr_of_ones_reg__0[3]),
        .O(\nr_of_ones[9]_i_2_n_0 ));
  FDRE \nr_of_ones_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(nr_of_ones_reg__0[0]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(nr_of_ones_reg__0[1]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(nr_of_ones_reg__0[2]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(nr_of_ones_reg__0[3]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(nr_of_ones_reg__0[4]),
        .R(nr_of_ones));
  MUXF7 \nr_of_ones_reg[4]_i_10 
       (.I0(\nr_of_ones[4]_i_21_n_0 ),
        .I1(\nr_of_ones[4]_i_22_n_0 ),
        .O(\nr_of_ones_reg[4]_i_10_n_0 ),
        .S(index_reg__0[6]));
  MUXF7 \nr_of_ones_reg[4]_i_100 
       (.I0(\nr_of_ones[4]_i_233_n_0 ),
        .I1(\nr_of_ones[4]_i_234_n_0 ),
        .O(\nr_of_ones_reg[4]_i_100_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_101 
       (.I0(\nr_of_ones[4]_i_235_n_0 ),
        .I1(\nr_of_ones[4]_i_236_n_0 ),
        .O(\nr_of_ones_reg[4]_i_101_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_102 
       (.I0(\nr_of_ones[4]_i_237_n_0 ),
        .I1(\nr_of_ones[4]_i_238_n_0 ),
        .O(\nr_of_ones_reg[4]_i_102_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_103 
       (.I0(\nr_of_ones[4]_i_239_n_0 ),
        .I1(\nr_of_ones[4]_i_240_n_0 ),
        .O(\nr_of_ones_reg[4]_i_103_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_104 
       (.I0(\nr_of_ones[4]_i_241_n_0 ),
        .I1(\nr_of_ones[4]_i_242_n_0 ),
        .O(\nr_of_ones_reg[4]_i_104_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_105 
       (.I0(\nr_of_ones[4]_i_243_n_0 ),
        .I1(\nr_of_ones[4]_i_244_n_0 ),
        .O(\nr_of_ones_reg[4]_i_105_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_106 
       (.I0(\nr_of_ones[4]_i_245_n_0 ),
        .I1(\nr_of_ones[4]_i_246_n_0 ),
        .O(\nr_of_ones_reg[4]_i_106_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_107 
       (.I0(\nr_of_ones[4]_i_247_n_0 ),
        .I1(\nr_of_ones[4]_i_248_n_0 ),
        .O(\nr_of_ones_reg[4]_i_107_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_108 
       (.I0(\nr_of_ones[4]_i_249_n_0 ),
        .I1(\nr_of_ones[4]_i_250_n_0 ),
        .O(\nr_of_ones_reg[4]_i_108_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_109 
       (.I0(\nr_of_ones[4]_i_251_n_0 ),
        .I1(\nr_of_ones[4]_i_252_n_0 ),
        .O(\nr_of_ones_reg[4]_i_109_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_11 
       (.I0(\nr_of_ones[4]_i_23_n_0 ),
        .I1(\nr_of_ones[4]_i_24_n_0 ),
        .O(\nr_of_ones_reg[4]_i_11_n_0 ),
        .S(index_reg__0[6]));
  MUXF7 \nr_of_ones_reg[4]_i_110 
       (.I0(\nr_of_ones[4]_i_253_n_0 ),
        .I1(\nr_of_ones[4]_i_254_n_0 ),
        .O(\nr_of_ones_reg[4]_i_110_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_111 
       (.I0(\nr_of_ones[4]_i_255_n_0 ),
        .I1(\nr_of_ones[4]_i_256_n_0 ),
        .O(\nr_of_ones_reg[4]_i_111_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_112 
       (.I0(\nr_of_ones[4]_i_257_n_0 ),
        .I1(\nr_of_ones[4]_i_258_n_0 ),
        .O(\nr_of_ones_reg[4]_i_112_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_113 
       (.I0(\nr_of_ones[4]_i_259_n_0 ),
        .I1(\nr_of_ones[4]_i_260_n_0 ),
        .O(\nr_of_ones_reg[4]_i_113_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_114 
       (.I0(\nr_of_ones[4]_i_261_n_0 ),
        .I1(\nr_of_ones[4]_i_262_n_0 ),
        .O(\nr_of_ones_reg[4]_i_114_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_115 
       (.I0(\nr_of_ones[4]_i_263_n_0 ),
        .I1(\nr_of_ones[4]_i_264_n_0 ),
        .O(\nr_of_ones_reg[4]_i_115_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_116 
       (.I0(\nr_of_ones[4]_i_265_n_0 ),
        .I1(\nr_of_ones[4]_i_266_n_0 ),
        .O(\nr_of_ones_reg[4]_i_116_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_117 
       (.I0(\nr_of_ones[4]_i_267_n_0 ),
        .I1(\nr_of_ones[4]_i_268_n_0 ),
        .O(\nr_of_ones_reg[4]_i_117_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_118 
       (.I0(\nr_of_ones[4]_i_269_n_0 ),
        .I1(\nr_of_ones[4]_i_270_n_0 ),
        .O(\nr_of_ones_reg[4]_i_118_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_119 
       (.I0(\nr_of_ones[4]_i_271_n_0 ),
        .I1(\nr_of_ones[4]_i_272_n_0 ),
        .O(\nr_of_ones_reg[4]_i_119_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_12 
       (.I0(\nr_of_ones[4]_i_25_n_0 ),
        .I1(\nr_of_ones[4]_i_26_n_0 ),
        .O(\nr_of_ones_reg[4]_i_12_n_0 ),
        .S(index_reg__0[6]));
  MUXF7 \nr_of_ones_reg[4]_i_120 
       (.I0(\nr_of_ones[4]_i_273_n_0 ),
        .I1(\nr_of_ones[4]_i_274_n_0 ),
        .O(\nr_of_ones_reg[4]_i_120_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_121 
       (.I0(\nr_of_ones[4]_i_275_n_0 ),
        .I1(\nr_of_ones[4]_i_276_n_0 ),
        .O(\nr_of_ones_reg[4]_i_121_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_122 
       (.I0(\nr_of_ones[4]_i_277_n_0 ),
        .I1(\nr_of_ones[4]_i_278_n_0 ),
        .O(\nr_of_ones_reg[4]_i_122_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_123 
       (.I0(\nr_of_ones[4]_i_279_n_0 ),
        .I1(\nr_of_ones[4]_i_280_n_0 ),
        .O(\nr_of_ones_reg[4]_i_123_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_124 
       (.I0(\nr_of_ones[4]_i_281_n_0 ),
        .I1(\nr_of_ones[4]_i_282_n_0 ),
        .O(\nr_of_ones_reg[4]_i_124_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_125 
       (.I0(\nr_of_ones[4]_i_283_n_0 ),
        .I1(\nr_of_ones[4]_i_284_n_0 ),
        .O(\nr_of_ones_reg[4]_i_125_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_126 
       (.I0(\nr_of_ones[4]_i_285_n_0 ),
        .I1(\nr_of_ones[4]_i_286_n_0 ),
        .O(\nr_of_ones_reg[4]_i_126_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_127 
       (.I0(\nr_of_ones[4]_i_287_n_0 ),
        .I1(\nr_of_ones[4]_i_288_n_0 ),
        .O(\nr_of_ones_reg[4]_i_127_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_128 
       (.I0(\nr_of_ones[4]_i_289_n_0 ),
        .I1(\nr_of_ones[4]_i_290_n_0 ),
        .O(\nr_of_ones_reg[4]_i_128_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_129 
       (.I0(\nr_of_ones[4]_i_291_n_0 ),
        .I1(\nr_of_ones[4]_i_292_n_0 ),
        .O(\nr_of_ones_reg[4]_i_129_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_13 
       (.I0(\nr_of_ones[4]_i_27_n_0 ),
        .I1(\nr_of_ones[4]_i_28_n_0 ),
        .O(\nr_of_ones_reg[4]_i_13_n_0 ),
        .S(index_reg__0[6]));
  MUXF7 \nr_of_ones_reg[4]_i_130 
       (.I0(\nr_of_ones[4]_i_293_n_0 ),
        .I1(\nr_of_ones[4]_i_294_n_0 ),
        .O(\nr_of_ones_reg[4]_i_130_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_131 
       (.I0(\nr_of_ones[4]_i_295_n_0 ),
        .I1(\nr_of_ones[4]_i_296_n_0 ),
        .O(\nr_of_ones_reg[4]_i_131_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_132 
       (.I0(\nr_of_ones[4]_i_297_n_0 ),
        .I1(\nr_of_ones[4]_i_298_n_0 ),
        .O(\nr_of_ones_reg[4]_i_132_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_133 
       (.I0(\nr_of_ones[4]_i_299_n_0 ),
        .I1(\nr_of_ones[4]_i_300_n_0 ),
        .O(\nr_of_ones_reg[4]_i_133_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_134 
       (.I0(\nr_of_ones[4]_i_301_n_0 ),
        .I1(\nr_of_ones[4]_i_302_n_0 ),
        .O(\nr_of_ones_reg[4]_i_134_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_135 
       (.I0(\nr_of_ones[4]_i_303_n_0 ),
        .I1(\nr_of_ones[4]_i_304_n_0 ),
        .O(\nr_of_ones_reg[4]_i_135_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_136 
       (.I0(\nr_of_ones[4]_i_305_n_0 ),
        .I1(\nr_of_ones[4]_i_306_n_0 ),
        .O(\nr_of_ones_reg[4]_i_136_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_137 
       (.I0(\nr_of_ones[4]_i_307_n_0 ),
        .I1(\nr_of_ones[4]_i_308_n_0 ),
        .O(\nr_of_ones_reg[4]_i_137_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_138 
       (.I0(\nr_of_ones[4]_i_309_n_0 ),
        .I1(\nr_of_ones[4]_i_310_n_0 ),
        .O(\nr_of_ones_reg[4]_i_138_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_139 
       (.I0(\nr_of_ones[4]_i_311_n_0 ),
        .I1(\nr_of_ones[4]_i_312_n_0 ),
        .O(\nr_of_ones_reg[4]_i_139_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_14 
       (.I0(\nr_of_ones[4]_i_29_n_0 ),
        .I1(\nr_of_ones[4]_i_30_n_0 ),
        .O(\nr_of_ones_reg[4]_i_14_n_0 ),
        .S(index_reg__0[6]));
  MUXF7 \nr_of_ones_reg[4]_i_140 
       (.I0(\nr_of_ones[4]_i_313_n_0 ),
        .I1(\nr_of_ones[4]_i_314_n_0 ),
        .O(\nr_of_ones_reg[4]_i_140_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_141 
       (.I0(\nr_of_ones[4]_i_315_n_0 ),
        .I1(\nr_of_ones[4]_i_316_n_0 ),
        .O(\nr_of_ones_reg[4]_i_141_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_142 
       (.I0(\nr_of_ones[4]_i_317_n_0 ),
        .I1(\nr_of_ones[4]_i_318_n_0 ),
        .O(\nr_of_ones_reg[4]_i_142_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_143 
       (.I0(\nr_of_ones[4]_i_319_n_0 ),
        .I1(\nr_of_ones[4]_i_320_n_0 ),
        .O(\nr_of_ones_reg[4]_i_143_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_144 
       (.I0(\nr_of_ones[4]_i_321_n_0 ),
        .I1(\nr_of_ones[4]_i_322_n_0 ),
        .O(\nr_of_ones_reg[4]_i_144_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_145 
       (.I0(\nr_of_ones[4]_i_323_n_0 ),
        .I1(\nr_of_ones[4]_i_324_n_0 ),
        .O(\nr_of_ones_reg[4]_i_145_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_146 
       (.I0(\nr_of_ones[4]_i_325_n_0 ),
        .I1(\nr_of_ones[4]_i_326_n_0 ),
        .O(\nr_of_ones_reg[4]_i_146_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_147 
       (.I0(\nr_of_ones[4]_i_327_n_0 ),
        .I1(\nr_of_ones[4]_i_328_n_0 ),
        .O(\nr_of_ones_reg[4]_i_147_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_148 
       (.I0(\nr_of_ones[4]_i_329_n_0 ),
        .I1(\nr_of_ones[4]_i_330_n_0 ),
        .O(\nr_of_ones_reg[4]_i_148_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_149 
       (.I0(\nr_of_ones[4]_i_331_n_0 ),
        .I1(\nr_of_ones[4]_i_332_n_0 ),
        .O(\nr_of_ones_reg[4]_i_149_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_150 
       (.I0(\nr_of_ones[4]_i_333_n_0 ),
        .I1(\nr_of_ones[4]_i_334_n_0 ),
        .O(\nr_of_ones_reg[4]_i_150_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_151 
       (.I0(\nr_of_ones[4]_i_335_n_0 ),
        .I1(\nr_of_ones[4]_i_336_n_0 ),
        .O(\nr_of_ones_reg[4]_i_151_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_152 
       (.I0(\nr_of_ones[4]_i_337_n_0 ),
        .I1(\nr_of_ones[4]_i_338_n_0 ),
        .O(\nr_of_ones_reg[4]_i_152_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_153 
       (.I0(\nr_of_ones[4]_i_339_n_0 ),
        .I1(\nr_of_ones[4]_i_340_n_0 ),
        .O(\nr_of_ones_reg[4]_i_153_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_154 
       (.I0(\nr_of_ones[4]_i_341_n_0 ),
        .I1(\nr_of_ones[4]_i_342_n_0 ),
        .O(\nr_of_ones_reg[4]_i_154_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_155 
       (.I0(\nr_of_ones[4]_i_343_n_0 ),
        .I1(\nr_of_ones[4]_i_344_n_0 ),
        .O(\nr_of_ones_reg[4]_i_155_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_156 
       (.I0(\nr_of_ones[4]_i_345_n_0 ),
        .I1(\nr_of_ones[4]_i_346_n_0 ),
        .O(\nr_of_ones_reg[4]_i_156_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_157 
       (.I0(\nr_of_ones[4]_i_347_n_0 ),
        .I1(\nr_of_ones[4]_i_348_n_0 ),
        .O(\nr_of_ones_reg[4]_i_157_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_158 
       (.I0(\nr_of_ones[4]_i_349_n_0 ),
        .I1(\nr_of_ones[4]_i_350_n_0 ),
        .O(\nr_of_ones_reg[4]_i_158_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_159 
       (.I0(\nr_of_ones[4]_i_351_n_0 ),
        .I1(\nr_of_ones[4]_i_352_n_0 ),
        .O(\nr_of_ones_reg[4]_i_159_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_160 
       (.I0(\nr_of_ones[4]_i_353_n_0 ),
        .I1(\nr_of_ones[4]_i_354_n_0 ),
        .O(\nr_of_ones_reg[4]_i_160_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_161 
       (.I0(\nr_of_ones[4]_i_355_n_0 ),
        .I1(\nr_of_ones[4]_i_356_n_0 ),
        .O(\nr_of_ones_reg[4]_i_161_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_162 
       (.I0(\nr_of_ones[4]_i_357_n_0 ),
        .I1(\nr_of_ones[4]_i_358_n_0 ),
        .O(\nr_of_ones_reg[4]_i_162_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_163 
       (.I0(\nr_of_ones[4]_i_359_n_0 ),
        .I1(\nr_of_ones[4]_i_360_n_0 ),
        .O(\nr_of_ones_reg[4]_i_163_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_164 
       (.I0(\nr_of_ones[4]_i_361_n_0 ),
        .I1(\nr_of_ones[4]_i_362_n_0 ),
        .O(\nr_of_ones_reg[4]_i_164_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_165 
       (.I0(\nr_of_ones[4]_i_363_n_0 ),
        .I1(\nr_of_ones[4]_i_364_n_0 ),
        .O(\nr_of_ones_reg[4]_i_165_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_166 
       (.I0(\nr_of_ones[4]_i_365_n_0 ),
        .I1(\nr_of_ones[4]_i_366_n_0 ),
        .O(\nr_of_ones_reg[4]_i_166_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_167 
       (.I0(\nr_of_ones[4]_i_367_n_0 ),
        .I1(\nr_of_ones[4]_i_368_n_0 ),
        .O(\nr_of_ones_reg[4]_i_167_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_168 
       (.I0(\nr_of_ones[4]_i_369_n_0 ),
        .I1(\nr_of_ones[4]_i_370_n_0 ),
        .O(\nr_of_ones_reg[4]_i_168_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_169 
       (.I0(\nr_of_ones[4]_i_371_n_0 ),
        .I1(\nr_of_ones[4]_i_372_n_0 ),
        .O(\nr_of_ones_reg[4]_i_169_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_170 
       (.I0(\nr_of_ones[4]_i_373_n_0 ),
        .I1(\nr_of_ones[4]_i_374_n_0 ),
        .O(\nr_of_ones_reg[4]_i_170_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_171 
       (.I0(\nr_of_ones[4]_i_375_n_0 ),
        .I1(\nr_of_ones[4]_i_376_n_0 ),
        .O(\nr_of_ones_reg[4]_i_171_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_172 
       (.I0(\nr_of_ones[4]_i_377_n_0 ),
        .I1(\nr_of_ones[4]_i_378_n_0 ),
        .O(\nr_of_ones_reg[4]_i_172_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_173 
       (.I0(\nr_of_ones[4]_i_379_n_0 ),
        .I1(\nr_of_ones[4]_i_380_n_0 ),
        .O(\nr_of_ones_reg[4]_i_173_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_174 
       (.I0(\nr_of_ones[4]_i_381_n_0 ),
        .I1(\nr_of_ones[4]_i_382_n_0 ),
        .O(\nr_of_ones_reg[4]_i_174_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_175 
       (.I0(\nr_of_ones[4]_i_383_n_0 ),
        .I1(\nr_of_ones[4]_i_384_n_0 ),
        .O(\nr_of_ones_reg[4]_i_175_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_176 
       (.I0(\nr_of_ones[4]_i_385_n_0 ),
        .I1(\nr_of_ones[4]_i_386_n_0 ),
        .O(\nr_of_ones_reg[4]_i_176_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_177 
       (.I0(\nr_of_ones[4]_i_387_n_0 ),
        .I1(\nr_of_ones[4]_i_388_n_0 ),
        .O(\nr_of_ones_reg[4]_i_177_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_178 
       (.I0(\nr_of_ones[4]_i_389_n_0 ),
        .I1(\nr_of_ones[4]_i_390_n_0 ),
        .O(\nr_of_ones_reg[4]_i_178_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_179 
       (.I0(\nr_of_ones[4]_i_391_n_0 ),
        .I1(\nr_of_ones[4]_i_392_n_0 ),
        .O(\nr_of_ones_reg[4]_i_179_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_180 
       (.I0(\nr_of_ones[4]_i_393_n_0 ),
        .I1(\nr_of_ones[4]_i_394_n_0 ),
        .O(\nr_of_ones_reg[4]_i_180_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_181 
       (.I0(\nr_of_ones[4]_i_395_n_0 ),
        .I1(\nr_of_ones[4]_i_396_n_0 ),
        .O(\nr_of_ones_reg[4]_i_181_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_182 
       (.I0(\nr_of_ones[4]_i_397_n_0 ),
        .I1(\nr_of_ones[4]_i_398_n_0 ),
        .O(\nr_of_ones_reg[4]_i_182_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_183 
       (.I0(\nr_of_ones[4]_i_399_n_0 ),
        .I1(\nr_of_ones[4]_i_400_n_0 ),
        .O(\nr_of_ones_reg[4]_i_183_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_184 
       (.I0(\nr_of_ones[4]_i_401_n_0 ),
        .I1(\nr_of_ones[4]_i_402_n_0 ),
        .O(\nr_of_ones_reg[4]_i_184_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_185 
       (.I0(\nr_of_ones[4]_i_403_n_0 ),
        .I1(\nr_of_ones[4]_i_404_n_0 ),
        .O(\nr_of_ones_reg[4]_i_185_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_186 
       (.I0(\nr_of_ones[4]_i_405_n_0 ),
        .I1(\nr_of_ones[4]_i_406_n_0 ),
        .O(\nr_of_ones_reg[4]_i_186_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_187 
       (.I0(\nr_of_ones[4]_i_407_n_0 ),
        .I1(\nr_of_ones[4]_i_408_n_0 ),
        .O(\nr_of_ones_reg[4]_i_187_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_188 
       (.I0(\nr_of_ones[4]_i_409_n_0 ),
        .I1(\nr_of_ones[4]_i_410_n_0 ),
        .O(\nr_of_ones_reg[4]_i_188_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_189 
       (.I0(\nr_of_ones[4]_i_411_n_0 ),
        .I1(\nr_of_ones[4]_i_412_n_0 ),
        .O(\nr_of_ones_reg[4]_i_189_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_190 
       (.I0(\nr_of_ones[4]_i_413_n_0 ),
        .I1(\nr_of_ones[4]_i_414_n_0 ),
        .O(\nr_of_ones_reg[4]_i_190_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_191 
       (.I0(\nr_of_ones[4]_i_415_n_0 ),
        .I1(\nr_of_ones[4]_i_416_n_0 ),
        .O(\nr_of_ones_reg[4]_i_191_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_192 
       (.I0(\nr_of_ones[4]_i_417_n_0 ),
        .I1(\nr_of_ones[4]_i_418_n_0 ),
        .O(\nr_of_ones_reg[4]_i_192_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_193 
       (.I0(\nr_of_ones[4]_i_419_n_0 ),
        .I1(\nr_of_ones[4]_i_420_n_0 ),
        .O(\nr_of_ones_reg[4]_i_193_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_194 
       (.I0(\nr_of_ones[4]_i_421_n_0 ),
        .I1(\nr_of_ones[4]_i_422_n_0 ),
        .O(\nr_of_ones_reg[4]_i_194_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_195 
       (.I0(\nr_of_ones[4]_i_423_n_0 ),
        .I1(\nr_of_ones[4]_i_424_n_0 ),
        .O(\nr_of_ones_reg[4]_i_195_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_196 
       (.I0(\nr_of_ones[4]_i_425_n_0 ),
        .I1(\nr_of_ones[4]_i_426_n_0 ),
        .O(\nr_of_ones_reg[4]_i_196_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_197 
       (.I0(\nr_of_ones[4]_i_427_n_0 ),
        .I1(\nr_of_ones[4]_i_428_n_0 ),
        .O(\nr_of_ones_reg[4]_i_197_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_198 
       (.I0(\nr_of_ones[4]_i_429_n_0 ),
        .I1(\nr_of_ones[4]_i_430_n_0 ),
        .O(\nr_of_ones_reg[4]_i_198_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_199 
       (.I0(\nr_of_ones[4]_i_431_n_0 ),
        .I1(\nr_of_ones[4]_i_432_n_0 ),
        .O(\nr_of_ones_reg[4]_i_199_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_200 
       (.I0(\nr_of_ones[4]_i_433_n_0 ),
        .I1(\nr_of_ones[4]_i_434_n_0 ),
        .O(\nr_of_ones_reg[4]_i_200_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_201 
       (.I0(\nr_of_ones[4]_i_435_n_0 ),
        .I1(\nr_of_ones[4]_i_436_n_0 ),
        .O(\nr_of_ones_reg[4]_i_201_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_202 
       (.I0(\nr_of_ones[4]_i_437_n_0 ),
        .I1(\nr_of_ones[4]_i_438_n_0 ),
        .O(\nr_of_ones_reg[4]_i_202_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_203 
       (.I0(\nr_of_ones[4]_i_439_n_0 ),
        .I1(\nr_of_ones[4]_i_440_n_0 ),
        .O(\nr_of_ones_reg[4]_i_203_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_204 
       (.I0(\nr_of_ones[4]_i_441_n_0 ),
        .I1(\nr_of_ones[4]_i_442_n_0 ),
        .O(\nr_of_ones_reg[4]_i_204_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_205 
       (.I0(\nr_of_ones[4]_i_443_n_0 ),
        .I1(\nr_of_ones[4]_i_444_n_0 ),
        .O(\nr_of_ones_reg[4]_i_205_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_206 
       (.I0(\nr_of_ones[4]_i_445_n_0 ),
        .I1(\nr_of_ones[4]_i_446_n_0 ),
        .O(\nr_of_ones_reg[4]_i_206_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_207 
       (.I0(\nr_of_ones[4]_i_447_n_0 ),
        .I1(\nr_of_ones[4]_i_448_n_0 ),
        .O(\nr_of_ones_reg[4]_i_207_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_208 
       (.I0(\nr_of_ones[4]_i_449_n_0 ),
        .I1(\nr_of_ones[4]_i_450_n_0 ),
        .O(\nr_of_ones_reg[4]_i_208_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_209 
       (.I0(\nr_of_ones[4]_i_451_n_0 ),
        .I1(\nr_of_ones[4]_i_452_n_0 ),
        .O(\nr_of_ones_reg[4]_i_209_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_210 
       (.I0(\nr_of_ones[4]_i_453_n_0 ),
        .I1(\nr_of_ones[4]_i_454_n_0 ),
        .O(\nr_of_ones_reg[4]_i_210_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_211 
       (.I0(\nr_of_ones[4]_i_455_n_0 ),
        .I1(\nr_of_ones[4]_i_456_n_0 ),
        .O(\nr_of_ones_reg[4]_i_211_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_212 
       (.I0(\nr_of_ones[4]_i_457_n_0 ),
        .I1(\nr_of_ones[4]_i_458_n_0 ),
        .O(\nr_of_ones_reg[4]_i_212_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_213 
       (.I0(\nr_of_ones[4]_i_459_n_0 ),
        .I1(\nr_of_ones[4]_i_460_n_0 ),
        .O(\nr_of_ones_reg[4]_i_213_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_214 
       (.I0(\nr_of_ones[4]_i_461_n_0 ),
        .I1(\nr_of_ones[4]_i_462_n_0 ),
        .O(\nr_of_ones_reg[4]_i_214_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_215 
       (.I0(\nr_of_ones[4]_i_463_n_0 ),
        .I1(\nr_of_ones[4]_i_464_n_0 ),
        .O(\nr_of_ones_reg[4]_i_215_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_216 
       (.I0(\nr_of_ones[4]_i_465_n_0 ),
        .I1(\nr_of_ones[4]_i_466_n_0 ),
        .O(\nr_of_ones_reg[4]_i_216_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_217 
       (.I0(\nr_of_ones[4]_i_467_n_0 ),
        .I1(\nr_of_ones[4]_i_468_n_0 ),
        .O(\nr_of_ones_reg[4]_i_217_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_218 
       (.I0(\nr_of_ones[4]_i_469_n_0 ),
        .I1(\nr_of_ones[4]_i_470_n_0 ),
        .O(\nr_of_ones_reg[4]_i_218_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_219 
       (.I0(\nr_of_ones[4]_i_471_n_0 ),
        .I1(\nr_of_ones[4]_i_472_n_0 ),
        .O(\nr_of_ones_reg[4]_i_219_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_220 
       (.I0(\nr_of_ones[4]_i_473_n_0 ),
        .I1(\nr_of_ones[4]_i_474_n_0 ),
        .O(\nr_of_ones_reg[4]_i_220_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_221 
       (.I0(\nr_of_ones[4]_i_475_n_0 ),
        .I1(\nr_of_ones[4]_i_476_n_0 ),
        .O(\nr_of_ones_reg[4]_i_221_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_222 
       (.I0(\nr_of_ones[4]_i_477_n_0 ),
        .I1(\nr_of_ones[4]_i_478_n_0 ),
        .O(\nr_of_ones_reg[4]_i_222_n_0 ),
        .S(index_reg__0[2]));
  MUXF8 \nr_of_ones_reg[4]_i_3 
       (.I0(\nr_of_ones_reg[4]_i_7_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_8_n_0 ),
        .O(\nr_of_ones_reg[4]_i_3_n_0 ),
        .S(index_reg__0[7]));
  MUXF8 \nr_of_ones_reg[4]_i_31 
       (.I0(\nr_of_ones_reg[4]_i_95_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_96_n_0 ),
        .O(\nr_of_ones_reg[4]_i_31_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_32 
       (.I0(\nr_of_ones_reg[4]_i_97_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_98_n_0 ),
        .O(\nr_of_ones_reg[4]_i_32_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_33 
       (.I0(\nr_of_ones_reg[4]_i_99_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_100_n_0 ),
        .O(\nr_of_ones_reg[4]_i_33_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_34 
       (.I0(\nr_of_ones_reg[4]_i_101_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_102_n_0 ),
        .O(\nr_of_ones_reg[4]_i_34_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_35 
       (.I0(\nr_of_ones_reg[4]_i_103_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_104_n_0 ),
        .O(\nr_of_ones_reg[4]_i_35_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_36 
       (.I0(\nr_of_ones_reg[4]_i_105_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_106_n_0 ),
        .O(\nr_of_ones_reg[4]_i_36_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_37 
       (.I0(\nr_of_ones_reg[4]_i_107_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_108_n_0 ),
        .O(\nr_of_ones_reg[4]_i_37_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_38 
       (.I0(\nr_of_ones_reg[4]_i_109_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_110_n_0 ),
        .O(\nr_of_ones_reg[4]_i_38_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_39 
       (.I0(\nr_of_ones_reg[4]_i_111_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_112_n_0 ),
        .O(\nr_of_ones_reg[4]_i_39_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_4 
       (.I0(\nr_of_ones_reg[4]_i_9_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_10_n_0 ),
        .O(\nr_of_ones_reg[4]_i_4_n_0 ),
        .S(index_reg__0[7]));
  MUXF8 \nr_of_ones_reg[4]_i_40 
       (.I0(\nr_of_ones_reg[4]_i_113_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_114_n_0 ),
        .O(\nr_of_ones_reg[4]_i_40_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_41 
       (.I0(\nr_of_ones_reg[4]_i_115_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_116_n_0 ),
        .O(\nr_of_ones_reg[4]_i_41_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_42 
       (.I0(\nr_of_ones_reg[4]_i_117_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_118_n_0 ),
        .O(\nr_of_ones_reg[4]_i_42_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_43 
       (.I0(\nr_of_ones_reg[4]_i_119_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_120_n_0 ),
        .O(\nr_of_ones_reg[4]_i_43_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_44 
       (.I0(\nr_of_ones_reg[4]_i_121_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_122_n_0 ),
        .O(\nr_of_ones_reg[4]_i_44_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_45 
       (.I0(\nr_of_ones_reg[4]_i_123_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_124_n_0 ),
        .O(\nr_of_ones_reg[4]_i_45_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_46 
       (.I0(\nr_of_ones_reg[4]_i_125_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_126_n_0 ),
        .O(\nr_of_ones_reg[4]_i_46_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_47 
       (.I0(\nr_of_ones_reg[4]_i_127_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_128_n_0 ),
        .O(\nr_of_ones_reg[4]_i_47_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_48 
       (.I0(\nr_of_ones_reg[4]_i_129_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_130_n_0 ),
        .O(\nr_of_ones_reg[4]_i_48_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_49 
       (.I0(\nr_of_ones_reg[4]_i_131_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_132_n_0 ),
        .O(\nr_of_ones_reg[4]_i_49_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_5 
       (.I0(\nr_of_ones_reg[4]_i_11_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_12_n_0 ),
        .O(\nr_of_ones_reg[4]_i_5_n_0 ),
        .S(index_reg__0[7]));
  MUXF8 \nr_of_ones_reg[4]_i_50 
       (.I0(\nr_of_ones_reg[4]_i_133_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_134_n_0 ),
        .O(\nr_of_ones_reg[4]_i_50_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_51 
       (.I0(\nr_of_ones_reg[4]_i_135_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_136_n_0 ),
        .O(\nr_of_ones_reg[4]_i_51_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_52 
       (.I0(\nr_of_ones_reg[4]_i_137_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_138_n_0 ),
        .O(\nr_of_ones_reg[4]_i_52_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_53 
       (.I0(\nr_of_ones_reg[4]_i_139_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_140_n_0 ),
        .O(\nr_of_ones_reg[4]_i_53_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_54 
       (.I0(\nr_of_ones_reg[4]_i_141_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_142_n_0 ),
        .O(\nr_of_ones_reg[4]_i_54_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_55 
       (.I0(\nr_of_ones_reg[4]_i_143_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_144_n_0 ),
        .O(\nr_of_ones_reg[4]_i_55_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_56 
       (.I0(\nr_of_ones_reg[4]_i_145_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_146_n_0 ),
        .O(\nr_of_ones_reg[4]_i_56_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_57 
       (.I0(\nr_of_ones_reg[4]_i_147_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_148_n_0 ),
        .O(\nr_of_ones_reg[4]_i_57_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_58 
       (.I0(\nr_of_ones_reg[4]_i_149_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_150_n_0 ),
        .O(\nr_of_ones_reg[4]_i_58_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_59 
       (.I0(\nr_of_ones_reg[4]_i_151_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_152_n_0 ),
        .O(\nr_of_ones_reg[4]_i_59_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_6 
       (.I0(\nr_of_ones_reg[4]_i_13_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_14_n_0 ),
        .O(\nr_of_ones_reg[4]_i_6_n_0 ),
        .S(index_reg__0[7]));
  MUXF8 \nr_of_ones_reg[4]_i_60 
       (.I0(\nr_of_ones_reg[4]_i_153_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_154_n_0 ),
        .O(\nr_of_ones_reg[4]_i_60_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_61 
       (.I0(\nr_of_ones_reg[4]_i_155_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_156_n_0 ),
        .O(\nr_of_ones_reg[4]_i_61_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_62 
       (.I0(\nr_of_ones_reg[4]_i_157_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_158_n_0 ),
        .O(\nr_of_ones_reg[4]_i_62_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_63 
       (.I0(\nr_of_ones_reg[4]_i_159_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_160_n_0 ),
        .O(\nr_of_ones_reg[4]_i_63_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_64 
       (.I0(\nr_of_ones_reg[4]_i_161_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_162_n_0 ),
        .O(\nr_of_ones_reg[4]_i_64_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_65 
       (.I0(\nr_of_ones_reg[4]_i_163_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_164_n_0 ),
        .O(\nr_of_ones_reg[4]_i_65_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_66 
       (.I0(\nr_of_ones_reg[4]_i_165_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_166_n_0 ),
        .O(\nr_of_ones_reg[4]_i_66_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_67 
       (.I0(\nr_of_ones_reg[4]_i_167_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_168_n_0 ),
        .O(\nr_of_ones_reg[4]_i_67_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_68 
       (.I0(\nr_of_ones_reg[4]_i_169_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_170_n_0 ),
        .O(\nr_of_ones_reg[4]_i_68_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_69 
       (.I0(\nr_of_ones_reg[4]_i_171_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_172_n_0 ),
        .O(\nr_of_ones_reg[4]_i_69_n_0 ),
        .S(index_reg__0[3]));
  MUXF7 \nr_of_ones_reg[4]_i_7 
       (.I0(\nr_of_ones[4]_i_15_n_0 ),
        .I1(\nr_of_ones[4]_i_16_n_0 ),
        .O(\nr_of_ones_reg[4]_i_7_n_0 ),
        .S(index_reg__0[6]));
  MUXF8 \nr_of_ones_reg[4]_i_70 
       (.I0(\nr_of_ones_reg[4]_i_173_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_174_n_0 ),
        .O(\nr_of_ones_reg[4]_i_70_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_71 
       (.I0(\nr_of_ones_reg[4]_i_175_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_176_n_0 ),
        .O(\nr_of_ones_reg[4]_i_71_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_72 
       (.I0(\nr_of_ones_reg[4]_i_177_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_178_n_0 ),
        .O(\nr_of_ones_reg[4]_i_72_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_73 
       (.I0(\nr_of_ones_reg[4]_i_179_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_180_n_0 ),
        .O(\nr_of_ones_reg[4]_i_73_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_74 
       (.I0(\nr_of_ones_reg[4]_i_181_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_182_n_0 ),
        .O(\nr_of_ones_reg[4]_i_74_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_75 
       (.I0(\nr_of_ones_reg[4]_i_183_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_184_n_0 ),
        .O(\nr_of_ones_reg[4]_i_75_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_76 
       (.I0(\nr_of_ones_reg[4]_i_185_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_186_n_0 ),
        .O(\nr_of_ones_reg[4]_i_76_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_77 
       (.I0(\nr_of_ones_reg[4]_i_187_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_188_n_0 ),
        .O(\nr_of_ones_reg[4]_i_77_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_78 
       (.I0(\nr_of_ones_reg[4]_i_189_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_190_n_0 ),
        .O(\nr_of_ones_reg[4]_i_78_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_79 
       (.I0(\nr_of_ones_reg[4]_i_191_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_192_n_0 ),
        .O(\nr_of_ones_reg[4]_i_79_n_0 ),
        .S(index_reg__0[3]));
  MUXF7 \nr_of_ones_reg[4]_i_8 
       (.I0(\nr_of_ones[4]_i_17_n_0 ),
        .I1(\nr_of_ones[4]_i_18_n_0 ),
        .O(\nr_of_ones_reg[4]_i_8_n_0 ),
        .S(index_reg__0[6]));
  MUXF8 \nr_of_ones_reg[4]_i_80 
       (.I0(\nr_of_ones_reg[4]_i_193_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_194_n_0 ),
        .O(\nr_of_ones_reg[4]_i_80_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_81 
       (.I0(\nr_of_ones_reg[4]_i_195_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_196_n_0 ),
        .O(\nr_of_ones_reg[4]_i_81_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_82 
       (.I0(\nr_of_ones_reg[4]_i_197_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_198_n_0 ),
        .O(\nr_of_ones_reg[4]_i_82_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_83 
       (.I0(\nr_of_ones_reg[4]_i_199_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_200_n_0 ),
        .O(\nr_of_ones_reg[4]_i_83_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_84 
       (.I0(\nr_of_ones_reg[4]_i_201_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_202_n_0 ),
        .O(\nr_of_ones_reg[4]_i_84_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_85 
       (.I0(\nr_of_ones_reg[4]_i_203_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_204_n_0 ),
        .O(\nr_of_ones_reg[4]_i_85_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_86 
       (.I0(\nr_of_ones_reg[4]_i_205_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_206_n_0 ),
        .O(\nr_of_ones_reg[4]_i_86_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_87 
       (.I0(\nr_of_ones_reg[4]_i_207_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_208_n_0 ),
        .O(\nr_of_ones_reg[4]_i_87_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_88 
       (.I0(\nr_of_ones_reg[4]_i_209_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_210_n_0 ),
        .O(\nr_of_ones_reg[4]_i_88_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_89 
       (.I0(\nr_of_ones_reg[4]_i_211_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_212_n_0 ),
        .O(\nr_of_ones_reg[4]_i_89_n_0 ),
        .S(index_reg__0[3]));
  MUXF7 \nr_of_ones_reg[4]_i_9 
       (.I0(\nr_of_ones[4]_i_19_n_0 ),
        .I1(\nr_of_ones[4]_i_20_n_0 ),
        .O(\nr_of_ones_reg[4]_i_9_n_0 ),
        .S(index_reg__0[6]));
  MUXF8 \nr_of_ones_reg[4]_i_90 
       (.I0(\nr_of_ones_reg[4]_i_213_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_214_n_0 ),
        .O(\nr_of_ones_reg[4]_i_90_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_91 
       (.I0(\nr_of_ones_reg[4]_i_215_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_216_n_0 ),
        .O(\nr_of_ones_reg[4]_i_91_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_92 
       (.I0(\nr_of_ones_reg[4]_i_217_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_218_n_0 ),
        .O(\nr_of_ones_reg[4]_i_92_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_93 
       (.I0(\nr_of_ones_reg[4]_i_219_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_220_n_0 ),
        .O(\nr_of_ones_reg[4]_i_93_n_0 ),
        .S(index_reg__0[3]));
  MUXF8 \nr_of_ones_reg[4]_i_94 
       (.I0(\nr_of_ones_reg[4]_i_221_n_0 ),
        .I1(\nr_of_ones_reg[4]_i_222_n_0 ),
        .O(\nr_of_ones_reg[4]_i_94_n_0 ),
        .S(index_reg__0[3]));
  MUXF7 \nr_of_ones_reg[4]_i_95 
       (.I0(\nr_of_ones[4]_i_223_n_0 ),
        .I1(\nr_of_ones[4]_i_224_n_0 ),
        .O(\nr_of_ones_reg[4]_i_95_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_96 
       (.I0(\nr_of_ones[4]_i_225_n_0 ),
        .I1(\nr_of_ones[4]_i_226_n_0 ),
        .O(\nr_of_ones_reg[4]_i_96_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_97 
       (.I0(\nr_of_ones[4]_i_227_n_0 ),
        .I1(\nr_of_ones[4]_i_228_n_0 ),
        .O(\nr_of_ones_reg[4]_i_97_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_98 
       (.I0(\nr_of_ones[4]_i_229_n_0 ),
        .I1(\nr_of_ones[4]_i_230_n_0 ),
        .O(\nr_of_ones_reg[4]_i_98_n_0 ),
        .S(index_reg__0[2]));
  MUXF7 \nr_of_ones_reg[4]_i_99 
       (.I0(\nr_of_ones[4]_i_231_n_0 ),
        .I1(\nr_of_ones[4]_i_232_n_0 ),
        .O(\nr_of_ones_reg[4]_i_99_n_0 ),
        .S(index_reg__0[2]));
  FDRE \nr_of_ones_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(nr_of_ones_reg__0[5]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(nr_of_ones_reg__0[6]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(nr_of_ones_reg__0[7]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(nr_of_ones_reg__0[8]),
        .R(nr_of_ones));
  FDRE \nr_of_ones_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(nr_of_ones_reg__0[9]),
        .R(nr_of_ones));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
