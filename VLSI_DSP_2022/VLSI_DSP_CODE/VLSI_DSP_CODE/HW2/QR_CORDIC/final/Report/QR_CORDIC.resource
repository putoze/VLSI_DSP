 
****************************************
Report : resources
Design : QR_CORDIC
Version: N-2017.09-SP2
Date   : Tue Nov 29 11:36:44 2022
****************************************


Resource Report for this hierarchy in file /home/rain/QR_CORDIC/QR_CORDIC.v
=============================================================================
| Cell           | Module         | Parameters | Contained Operations       |
=============================================================================
| mult_x_1       | DW_mult_tc     | a_width=13 | mult_117 (QR_CORDIC.v:117) |
|                |                | b_width=11 |                            |
| mult_x_2       | DW_mult_tc     | a_width=13 | mult_118 (QR_CORDIC.v:118) |
|                |                | b_width=11 |                            |
| mult_x_3       | DW_mult_tc     | a_width=13 | mult_119 (QR_CORDIC.v:119) |
|                |                | b_width=11 |                            |
| mult_x_4       | DW_mult_tc     | a_width=13 | mult_120 (QR_CORDIC.v:120) |
|                |                | b_width=11 |                            |
| sub_x_5        | DW01_dec       | width=3    | sub_122 (QR_CORDIC.v:122)  |
| sub_x_6        | DW01_dec       | width=3    | sub_123 (QR_CORDIC.v:123)  |
| sub_x_7        | DW01_dec       | width=3    | sub_124 (QR_CORDIC.v:124)  |
| sub_x_8        | DW01_dec       | width=3    | sub_125 (QR_CORDIC.v:125)  |
| add_x_9        | DW01_add       | width=3    | add_127 (QR_CORDIC.v:127)  |
| add_x_10       | DW01_add       | width=3    | add_128 (QR_CORDIC.v:128)  |
| add_x_11       | DW01_add       | width=3    | add_129 (QR_CORDIC.v:129)  |
| add_x_12       | DW01_add       | width=3    | add_130 (QR_CORDIC.v:130)  |
| add_x_351      | DW01_inc       | width=3    | inst_GG1/add_16 (VECTOR_MODE.v:16) |
| add_x_356      | DW01_inc       | width=3    | inst_GR1/add_16 (ROTATION_MODE.v:16) |
| add_x_361      | DW01_inc       | width=3    | inst_GG4/add_16 (VECTOR_MODE.v:16) |
| add_x_366      | DW01_inc       | width=3    | inst_GG3/add_16 (VECTOR_MODE.v:16) |
| add_x_371      | DW01_inc       | width=3    | inst_GG2/add_16 (VECTOR_MODE.v:16) |
| add_x_376      | DW01_inc       | width=3    | inst_GR6/add_16 (ROTATION_MODE.v:16) |
| add_x_381      | DW01_inc       | width=3    | inst_GR5/add_16 (ROTATION_MODE.v:16) |
| add_x_386      | DW01_inc       | width=3    | inst_GR4/add_16 (ROTATION_MODE.v:16) |
| add_x_391      | DW01_inc       | width=3    | inst_GR3/add_16 (ROTATION_MODE.v:16) |
| add_x_396      | DW01_inc       | width=3    | inst_GR2/add_16 (ROTATION_MODE.v:16) |
| ashr_352       | DW_rightsh     | A_width=13 | inst_GG1/sra_19 (VECTOR_MODE.v:19) |
         |                | SH_width=3 | inst_GG1/sra_19_2 (VECTOR_MODE.v:19) |
| ashr_353       | DW_rightsh     | A_width=13 | inst_GG1/sra_20 (VECTOR_MODE.v:20) |
         |                | SH_width=3 | inst_GG1/sra_20_2 (VECTOR_MODE.v:20) |
| ashr_354       | DW_rightsh     | A_width=13 | inst_GG1/sra_25 (VECTOR_MODE.v:25) |
         |                | SH_width=3 | inst_GG1/sra_25_2 (VECTOR_MODE.v:25) |
| ashr_355       | DW_rightsh     | A_width=13 | inst_GG1/sra_26 (VECTOR_MODE.v:26) |
         |                | SH_width=3 | inst_GG1/sra_26_2 (VECTOR_MODE.v:26) |
| ashr_357       | DW_rightsh     | A_width=13 | inst_GR1/sra_18 (ROTATION_MODE.v:18) |
       |                | SH_width=3 | inst_GR1/sra_18_2 (ROTATION_MODE.v:18) |
| ashr_358       | DW_rightsh     | A_width=13 | inst_GR1/sra_19 (ROTATION_MODE.v:19) |
       |                | SH_width=3 | inst_GR1/sra_19_2 (ROTATION_MODE.v:19) |
| ashr_359       | DW_rightsh     | A_width=13 | inst_GR1/sra_21 (ROTATION_MODE.v:21) |
       |                | SH_width=3 | inst_GR1/sra_21_2 (ROTATION_MODE.v:21) |
| ashr_360       | DW_rightsh     | A_width=13 | inst_GR1/sra_22 (ROTATION_MODE.v:22) |
       |                | SH_width=3 | inst_GR1/sra_22_2 (ROTATION_MODE.v:22) |
| ashr_362       | DW_rightsh     | A_width=13 | inst_GG4/sra_19 (VECTOR_MODE.v:19) |
         |                | SH_width=3 | inst_GG4/sra_19_2 (VECTOR_MODE.v:19) |
| ashr_363       | DW_rightsh     | A_width=13 | inst_GG4/sra_20 (VECTOR_MODE.v:20) |
         |                | SH_width=3 | inst_GG4/sra_20_2 (VECTOR_MODE.v:20) |
| ashr_364       | DW_rightsh     | A_width=13 | inst_GG4/sra_25 (VECTOR_MODE.v:25) |
         |                | SH_width=3 | inst_GG4/sra_25_2 (VECTOR_MODE.v:25) |
| ashr_365       | DW_rightsh     | A_width=13 | inst_GG4/sra_26 (VECTOR_MODE.v:26) |
         |                | SH_width=3 | inst_GG4/sra_26_2 (VECTOR_MODE.v:26) |
| ashr_367       | DW_rightsh     | A_width=13 | inst_GG3/sra_19 (VECTOR_MODE.v:19) |
         |                | SH_width=3 | inst_GG3/sra_19_2 (VECTOR_MODE.v:19) |
| ashr_368       | DW_rightsh     | A_width=13 | inst_GG3/sra_20 (VECTOR_MODE.v:20) |
         |                | SH_width=3 | inst_GG3/sra_20_2 (VECTOR_MODE.v:20) |
| ashr_369       | DW_rightsh     | A_width=13 | inst_GG3/sra_25 (VECTOR_MODE.v:25) |
         |                | SH_width=3 | inst_GG3/sra_25_2 (VECTOR_MODE.v:25) |
| ashr_370       | DW_rightsh     | A_width=13 | inst_GG3/sra_26 (VECTOR_MODE.v:26) |
         |                | SH_width=3 | inst_GG3/sra_26_2 (VECTOR_MODE.v:26) |
| ashr_372       | DW_rightsh     | A_width=13 | inst_GG2/sra_19 (VECTOR_MODE.v:19) |
         |                | SH_width=3 | inst_GG2/sra_19_2 (VECTOR_MODE.v:19) |
| ashr_373       | DW_rightsh     | A_width=13 | inst_GG2/sra_20 (VECTOR_MODE.v:20) |
         |                | SH_width=3 | inst_GG2/sra_20_2 (VECTOR_MODE.v:20) |
| ashr_374       | DW_rightsh     | A_width=13 | inst_GG2/sra_25 (VECTOR_MODE.v:25) |
         |                | SH_width=3 | inst_GG2/sra_25_2 (VECTOR_MODE.v:25) |
| ashr_375       | DW_rightsh     | A_width=13 | inst_GG2/sra_26 (VECTOR_MODE.v:26) |
         |                | SH_width=3 | inst_GG2/sra_26_2 (VECTOR_MODE.v:26) |
| ashr_377       | DW_rightsh     | A_width=13 | inst_GR6/sra_18 (ROTATION_MODE.v:18) |
       |                | SH_width=3 | inst_GR6/sra_18_2 (ROTATION_MODE.v:18) |
| ashr_378       | DW_rightsh     | A_width=13 | inst_GR6/sra_19 (ROTATION_MODE.v:19) |
       |                | SH_width=3 | inst_GR6/sra_19_2 (ROTATION_MODE.v:19) |
| ashr_379       | DW_rightsh     | A_width=13 | inst_GR6/sra_21 (ROTATION_MODE.v:21) |
       |                | SH_width=3 | inst_GR6/sra_21_2 (ROTATION_MODE.v:21) |
| ashr_380       | DW_rightsh     | A_width=13 | inst_GR6/sra_22 (ROTATION_MODE.v:22) |
       |                | SH_width=3 | inst_GR6/sra_22_2 (ROTATION_MODE.v:22) |
| ashr_382       | DW_rightsh     | A_width=13 | inst_GR5/sra_18 (ROTATION_MODE.v:18) |
       |                | SH_width=3 | inst_GR5/sra_18_2 (ROTATION_MODE.v:18) |
| ashr_383       | DW_rightsh     | A_width=13 | inst_GR5/sra_19 (ROTATION_MODE.v:19) |
       |                | SH_width=3 | inst_GR5/sra_19_2 (ROTATION_MODE.v:19) |
| ashr_384       | DW_rightsh     | A_width=13 | inst_GR5/sra_21 (ROTATION_MODE.v:21) |
       |                | SH_width=3 | inst_GR5/sra_21_2 (ROTATION_MODE.v:21) |
| ashr_385       | DW_rightsh     | A_width=13 | inst_GR5/sra_22 (ROTATION_MODE.v:22) |
       |                | SH_width=3 | inst_GR5/sra_22_2 (ROTATION_MODE.v:22) |
| ashr_387       | DW_rightsh     | A_width=13 | inst_GR4/sra_18 (ROTATION_MODE.v:18) |
       |                | SH_width=3 | inst_GR4/sra_18_2 (ROTATION_MODE.v:18) |
| ashr_388       | DW_rightsh     | A_width=13 | inst_GR4/sra_19 (ROTATION_MODE.v:19) |
       |                | SH_width=3 | inst_GR4/sra_19_2 (ROTATION_MODE.v:19) |
| ashr_389       | DW_rightsh     | A_width=13 | inst_GR4/sra_21 (ROTATION_MODE.v:21) |
       |                | SH_width=3 | inst_GR4/sra_21_2 (ROTATION_MODE.v:21) |
| ashr_390       | DW_rightsh     | A_width=13 | inst_GR4/sra_22 (ROTATION_MODE.v:22) |
       |                | SH_width=3 | inst_GR4/sra_22_2 (ROTATION_MODE.v:22) |
| ashr_392       | DW_rightsh     | A_width=13 | inst_GR3/sra_18 (ROTATION_MODE.v:18) |
       |                | SH_width=3 | inst_GR3/sra_18_2 (ROTATION_MODE.v:18) |
| ashr_393       | DW_rightsh     | A_width=13 | inst_GR3/sra_19 (ROTATION_MODE.v:19) |
       |                | SH_width=3 | inst_GR3/sra_19_2 (ROTATION_MODE.v:19) |
| ashr_394       | DW_rightsh     | A_width=13 | inst_GR3/sra_21 (ROTATION_MODE.v:21) |
       |                | SH_width=3 | inst_GR3/sra_21_2 (ROTATION_MODE.v:21) |
| ashr_395       | DW_rightsh     | A_width=13 | inst_GR3/sra_22 (ROTATION_MODE.v:22) |
       |                | SH_width=3 | inst_GR3/sra_22_2 (ROTATION_MODE.v:22) |
| ashr_397       | DW_rightsh     | A_width=13 | inst_GR2/sra_18 (ROTATION_MODE.v:18) |
       |                | SH_width=3 | inst_GR2/sra_18_2 (ROTATION_MODE.v:18) |
| ashr_398       | DW_rightsh     | A_width=13 | inst_GR2/sra_19 (ROTATION_MODE.v:19) |
       |                | SH_width=3 | inst_GR2/sra_19_2 (ROTATION_MODE.v:19) |
| ashr_399       | DW_rightsh     | A_width=13 | inst_GR2/sra_21 (ROTATION_MODE.v:21) |
       |                | SH_width=3 | inst_GR2/sra_21_2 (ROTATION_MODE.v:21) |
| ashr_400       | DW_rightsh     | A_width=13 | inst_GR2/sra_22 (ROTATION_MODE.v:22) |
       |                | SH_width=3 | inst_GR2/sra_22_2 (ROTATION_MODE.v:22) |
| sub_x_16       | DW01_dec       | width=3    | sub_155 (QR_CORDIC.v:155)  |
|                |                |            | sub_158 (QR_CORDIC.v:158)  |
| DP_OP_569_274_8451              |            |                            |
|                | DP_OP_569_274_8451 |        |                            |
| DP_OP_564_276_9641              |            |                            |
|                | DP_OP_564_276_9641 |        |                            |
| DP_OP_559_277_7600              |            |                            |
|                | DP_OP_559_277_7600 |        |                            |
| DP_OP_554_275_5559              |            |                            |
|                | DP_OP_554_275_5559 |        |                            |
| DP_OP_548_264_3518              |            |                            |
|                | DP_OP_548_264_3518 |        |                            |
| DP_OP_543_263_1477              |            |                            |
|                | DP_OP_543_263_1477 |        |                            |
| DP_OP_538_269_9403              |            |                            |
|                | DP_OP_538_269_9403 |        |                            |
| DP_OP_533_268_7362              |            |                            |
|                | DP_OP_533_268_7362 |        |                            |
| DP_OP_527_271_5970              |            |                            |
|                | DP_OP_527_271_5970 |        |                            |
| DP_OP_522_270_3280              |            |                            |
|                | DP_OP_522_270_3280 |        |                            |
| DP_OP_517_273_1239              |            |                            |
|                | DP_OP_517_273_1239 |        |                            |
| DP_OP_512_272_323               |            |                            |
|                | DP_OP_512_272_323 |         |                            |
| DP_OP_506_262_8249              |            |                            |
|                | DP_OP_506_262_8249 |        |                            |
| DP_OP_501_261_6208              |            |                            |
|                | DP_OP_501_261_6208 |        |                            |
| DP_OP_496_267_4167              |            |                            |
|                | DP_OP_496_267_4167 |        |                            |
| DP_OP_491_266_2126              |            |                            |
|                | DP_OP_491_266_2126 |        |                            |
| DP_OP_485_260_85                |            |                            |
|                | DP_OP_485_260_85 |          |                            |
| DP_OP_480_258_8011              |            |                            |
|                | DP_OP_480_258_8011 |        |                            |
| DP_OP_475_259_8725              |            |                            |
|                | DP_OP_475_259_8725 |        |                            |
| DP_OP_470_265_3929              |            |                            |
|                | DP_OP_470_265_3929 |        |                            |
| DP_OP_464_255_1888              |            |                            |
|                | DP_OP_464_255_1888 |        |                            |
| DP_OP_459_248_7535              |            |                            |
|                | DP_OP_459_248_7535 |        |                            |
| DP_OP_454_254_9690              |            |                            |
|                | DP_OP_454_254_9690 |        |                            |
| DP_OP_449_249_7649              |            |                            |
|                | DP_OP_449_249_7649 |        |                            |
| DP_OP_443_246_5608              |            |                            |
|                | DP_OP_443_246_5608 |        |                            |
| DP_OP_438_242_3567              |            |                            |
|                | DP_OP_438_242_3567 |        |                            |
| DP_OP_433_247_1526              |            |                            |
|                | DP_OP_433_247_1526 |        |                            |
| DP_OP_428_243_9452              |            |                            |
|                | DP_OP_428_243_9452 |        |                            |
| DP_OP_422_253_8060              |            |                            |
|                | DP_OP_422_253_8060 |        |                            |
| DP_OP_417_244_5370              |            |                            |
|                | DP_OP_417_244_5370 |        |                            |
| DP_OP_412_252_3329              |            |                            |
|                | DP_OP_412_252_3329 |        |                            |
| DP_OP_407_245_2413              |            |                            |
|                | DP_OP_407_245_2413 |        |                            |
| DP_OP_401_278_372               |            |                            |
|                | DP_OP_401_278_372 |         |                            |
| DP_OP_396_280_8298              |            |                            |
|                | DP_OP_396_280_8298 |        |                            |
| DP_OP_391_281_6257              |            |                            |
|                | DP_OP_391_281_6257 |        |                            |
| DP_OP_386_279_4216              |            |                            |
|                | DP_OP_386_279_4216 |        |                            |
| DP_OP_380_256_2175              |            |                            |
|                | DP_OP_380_256_2175 |        |                            |
| DP_OP_375_250_134               |            |                            |
|                | DP_OP_375_250_134 |         |                            |
| DP_OP_370_257_848               |            |                            |
|                | DP_OP_370_257_848 |         |                            |
| DP_OP_365_251_6019              |            |                            |
|                | DP_OP_365_251_6019 |        |                            |
=============================================================================

Datapath Report for DP_OP_569_274_8451
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_569_274_8451   | inst_GR2/sub_22 (ROTATION_MODE.v:22)                |
|                      | inst_GR2/add_22 (ROTATION_MODE.v:22)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:22)    |
==============================================================================

Datapath Report for DP_OP_564_276_9641
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_564_276_9641   | inst_GR2/add_21 (ROTATION_MODE.v:21)                |
|                      | inst_GR2/sub_21 (ROTATION_MODE.v:21)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:21)    |
==============================================================================

Datapath Report for DP_OP_559_277_7600
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_559_277_7600   | inst_GR2/sub_19 (ROTATION_MODE.v:19)                |
|                      | inst_GR2/add_19 (ROTATION_MODE.v:19)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:19)    |
==============================================================================

Datapath Report for DP_OP_554_275_5559
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_554_275_5559   | inst_GR2/add_18 (ROTATION_MODE.v:18)                |
|                      | inst_GR2/sub_18 (ROTATION_MODE.v:18)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:18)    |
==============================================================================

Datapath Report for DP_OP_548_264_3518
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_548_264_3518   | inst_GR3/sub_22 (ROTATION_MODE.v:22)                |
|                      | inst_GR3/add_22 (ROTATION_MODE.v:22)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:22)    |
==============================================================================

Datapath Report for DP_OP_543_263_1477
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_543_263_1477   | inst_GR3/add_21 (ROTATION_MODE.v:21)                |
|                      | inst_GR3/sub_21 (ROTATION_MODE.v:21)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:21)    |
==============================================================================

Datapath Report for DP_OP_538_269_9403
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_538_269_9403   | inst_GR3/sub_19 (ROTATION_MODE.v:19)                |
|                      | inst_GR3/add_19 (ROTATION_MODE.v:19)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:19)    |
==============================================================================

Datapath Report for DP_OP_533_268_7362
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_533_268_7362   | inst_GR3/add_18 (ROTATION_MODE.v:18)                |
|                      | inst_GR3/sub_18 (ROTATION_MODE.v:18)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:18)    |
==============================================================================

Datapath Report for DP_OP_527_271_5970
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_527_271_5970   | inst_GR4/sub_22 (ROTATION_MODE.v:22)                |
|                      | inst_GR4/add_22 (ROTATION_MODE.v:22)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:22)    |
==============================================================================

Datapath Report for DP_OP_522_270_3280
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_522_270_3280   | inst_GR4/add_21 (ROTATION_MODE.v:21)                |
|                      | inst_GR4/sub_21 (ROTATION_MODE.v:21)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:21)    |
==============================================================================

Datapath Report for DP_OP_517_273_1239
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_517_273_1239   | inst_GR4/sub_19 (ROTATION_MODE.v:19)                |
|                      | inst_GR4/add_19 (ROTATION_MODE.v:19)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:19)    |
==============================================================================

Datapath Report for DP_OP_512_272_323
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_512_272_323    | inst_GR4/add_18 (ROTATION_MODE.v:18)                |
|                      | inst_GR4/sub_18 (ROTATION_MODE.v:18)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:18)    |
==============================================================================

Datapath Report for DP_OP_506_262_8249
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_506_262_8249   | inst_GR5/sub_22 (ROTATION_MODE.v:22)                |
|                      | inst_GR5/add_22 (ROTATION_MODE.v:22)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:22)    |
==============================================================================

Datapath Report for DP_OP_501_261_6208
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_501_261_6208   | inst_GR5/add_21 (ROTATION_MODE.v:21)                |
|                      | inst_GR5/sub_21 (ROTATION_MODE.v:21)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:21)    |
==============================================================================

Datapath Report for DP_OP_496_267_4167
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_496_267_4167   | inst_GR5/sub_19 (ROTATION_MODE.v:19)                |
|                      | inst_GR5/add_19 (ROTATION_MODE.v:19)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:19)    |
==============================================================================

Datapath Report for DP_OP_491_266_2126
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_491_266_2126   | inst_GR5/add_18 (ROTATION_MODE.v:18)                |
|                      | inst_GR5/sub_18 (ROTATION_MODE.v:18)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:18)    |
==============================================================================

Datapath Report for DP_OP_485_260_85
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_485_260_85     | inst_GR6/sub_22 (ROTATION_MODE.v:22)                |
|                      | inst_GR6/add_22 (ROTATION_MODE.v:22)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:22)    |
==============================================================================

Datapath Report for DP_OP_480_258_8011
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_480_258_8011   | inst_GR6/add_21 (ROTATION_MODE.v:21)                |
|                      | inst_GR6/sub_21 (ROTATION_MODE.v:21)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:21)    |
==============================================================================

Datapath Report for DP_OP_475_259_8725
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_475_259_8725   | inst_GR6/sub_19 (ROTATION_MODE.v:19)                |
|                      | inst_GR6/add_19 (ROTATION_MODE.v:19)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:19)    |
==============================================================================

Datapath Report for DP_OP_470_265_3929
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_470_265_3929   | inst_GR6/add_18 (ROTATION_MODE.v:18)                |
|                      | inst_GR6/sub_18 (ROTATION_MODE.v:18)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:18)    |
==============================================================================

Datapath Report for DP_OP_464_255_1888
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_464_255_1888   | inst_GG2/sub_26 (VECTOR_MODE.v:26)                  |
|                      | inst_GG2/add_26 (VECTOR_MODE.v:26)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:26)      |
==============================================================================

Datapath Report for DP_OP_459_248_7535
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_459_248_7535   | inst_GG2/add_25 (VECTOR_MODE.v:25)                  |
|                      | inst_GG2/sub_25 (VECTOR_MODE.v:25)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:25)      |
==============================================================================

Datapath Report for DP_OP_454_254_9690
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_454_254_9690   | inst_GG2/sub_20 (VECTOR_MODE.v:20)                  |
|                      | inst_GG2/add_20 (VECTOR_MODE.v:20)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:20)      |
==============================================================================

Datapath Report for DP_OP_449_249_7649
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_449_249_7649   | inst_GG2/add_19 (VECTOR_MODE.v:19)                  |
|                      | inst_GG2/sub_19 (VECTOR_MODE.v:19)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:19)      |
==============================================================================

Datapath Report for DP_OP_443_246_5608
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_443_246_5608   | inst_GG3/sub_26 (VECTOR_MODE.v:26)                  |
|                      | inst_GG3/add_26 (VECTOR_MODE.v:26)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:26)      |
==============================================================================

Datapath Report for DP_OP_438_242_3567
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_438_242_3567   | inst_GG3/add_25 (VECTOR_MODE.v:25)                  |
|                      | inst_GG3/sub_25 (VECTOR_MODE.v:25)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:25)      |
==============================================================================

Datapath Report for DP_OP_433_247_1526
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_433_247_1526   | inst_GG3/sub_20 (VECTOR_MODE.v:20)                  |
|                      | inst_GG3/add_20 (VECTOR_MODE.v:20)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:20)      |
==============================================================================

Datapath Report for DP_OP_428_243_9452
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_428_243_9452   | inst_GG3/add_19 (VECTOR_MODE.v:19)                  |
|                      | inst_GG3/sub_19 (VECTOR_MODE.v:19)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:19)      |
==============================================================================

Datapath Report for DP_OP_422_253_8060
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_422_253_8060   | inst_GG4/sub_26 (VECTOR_MODE.v:26)                  |
|                      | inst_GG4/add_26 (VECTOR_MODE.v:26)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:26)      |
==============================================================================

Datapath Report for DP_OP_417_244_5370
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_417_244_5370   | inst_GG4/add_25 (VECTOR_MODE.v:25)                  |
|                      | inst_GG4/sub_25 (VECTOR_MODE.v:25)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:25)      |
==============================================================================

Datapath Report for DP_OP_412_252_3329
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_412_252_3329   | inst_GG4/sub_20 (VECTOR_MODE.v:20)                  |
|                      | inst_GG4/add_20 (VECTOR_MODE.v:20)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:20)      |
==============================================================================

Datapath Report for DP_OP_407_245_2413
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_407_245_2413   | inst_GG4/add_19 (VECTOR_MODE.v:19)                  |
|                      | inst_GG4/sub_19 (VECTOR_MODE.v:19)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:19)      |
==============================================================================

Datapath Report for DP_OP_401_278_372
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_401_278_372    | inst_GR1/sub_22 (ROTATION_MODE.v:22)                |
|                      | inst_GR1/add_22 (ROTATION_MODE.v:22)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:22)    |
==============================================================================

Datapath Report for DP_OP_396_280_8298
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_396_280_8298   | inst_GR1/add_21 (ROTATION_MODE.v:21)                |
|                      | inst_GR1/sub_21 (ROTATION_MODE.v:21)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:21)    |
==============================================================================

Datapath Report for DP_OP_391_281_6257
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_391_281_6257   | inst_GR1/sub_19 (ROTATION_MODE.v:19)                |
|                      | inst_GR1/add_19 (ROTATION_MODE.v:19)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:19)    |
==============================================================================

Datapath Report for DP_OP_386_279_4216
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_386_279_4216   | inst_GR1/add_18 (ROTATION_MODE.v:18)                |
|                      | inst_GR1/sub_18 (ROTATION_MODE.v:18)                |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (ROTATION_MODE.v:18)    |
==============================================================================

Datapath Report for DP_OP_380_256_2175
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_380_256_2175   | inst_GG1/sub_26 (VECTOR_MODE.v:26)                  |
|                      | inst_GG1/add_26 (VECTOR_MODE.v:26)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:26)      |
==============================================================================

Datapath Report for DP_OP_375_250_134
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_375_250_134    | inst_GG1/add_25 (VECTOR_MODE.v:25)                  |
|                      | inst_GG1/sub_25 (VECTOR_MODE.v:25)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:25)      |
==============================================================================

Datapath Report for DP_OP_370_257_848
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_370_257_848    | inst_GG1/sub_20 (VECTOR_MODE.v:20)                  |
|                      | inst_GG1/add_20 (VECTOR_MODE.v:20)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:20)      |
==============================================================================

Datapath Report for DP_OP_365_251_6019
==============================================================================
| Cell                 | Contained Operations                                |
==============================================================================
| DP_OP_365_251_6019   | inst_GG1/add_19 (VECTOR_MODE.v:19)                  |
|                      | inst_GG1/sub_19 (VECTOR_MODE.v:19)                  |
==============================================================================

==============================================================================
|       |      | Data     |       |                                          |
| Var   | Type | Class    | Width | Expression                               |
==============================================================================
| I1    | PI   | Signed   | 13    |                                          |
| I2    | PI   | Signed   | 13    |                                          |
| I3    | PI   | Unsigned | 1     |                                          |
| O1    | PO   | Signed   | 13    | addsub(I1,I2,I3) (VECTOR_MODE.v:19)      |
==============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| mult_x_1           | DW_mult_tc       | apparch (area)     |                |
| mult_x_2           | DW_mult_tc       | apparch (area)     |                |
| mult_x_3           | DW_mult_tc       | apparch (area)     |                |
| mult_x_4           | DW_mult_tc       | apparch (area)     |                |
| sub_x_5            | DW01_dec         | apparch (area)     |                |
| sub_x_6            | DW01_dec         | apparch (area)     |                |
| sub_x_7            | DW01_dec         | apparch (area)     |                |
| sub_x_8            | DW01_dec         | apparch (area)     |                |
| add_x_9            | DW01_add         | apparch (area)     |                |
| add_x_10           | DW01_add         | apparch (area)     |                |
| add_x_11           | DW01_add         | apparch (area)     |                |
| add_x_12           | DW01_add         | apparch (area)     |                |
| add_x_351          | DW01_inc         | apparch (area)     |                |
| add_x_356          | DW01_inc         | apparch (area)     |                |
| add_x_361          | DW01_inc         | apparch (area)     |                |
| add_x_366          | DW01_inc         | apparch (area)     |                |
| add_x_371          | DW01_inc         | apparch (area)     |                |
| add_x_376          | DW01_inc         | apparch (area)     |                |
| add_x_381          | DW01_inc         | apparch (area)     |                |
| add_x_386          | DW01_inc         | apparch (area)     |                |
| add_x_391          | DW01_inc         | apparch (area)     |                |
| add_x_396          | DW01_inc         | apparch (area)     |                |
| ashr_352           | DW_rightsh       | astr (area)        |                |
| ashr_353           | DW_rightsh       | astr (area)        |                |
| ashr_354           | DW_rightsh       | astr (area)        |                |
| ashr_355           | DW_rightsh       | astr (area)        |                |
| ashr_357           | DW_rightsh       | astr (area)        |                |
| ashr_358           | DW_rightsh       | astr (area)        |                |
| ashr_359           | DW_rightsh       | astr (area)        |                |
| ashr_360           | DW_rightsh       | astr (area)        |                |
| ashr_362           | DW_rightsh       | astr (area)        |                |
| ashr_363           | DW_rightsh       | astr (area)        |                |
| ashr_364           | DW_rightsh       | astr (area)        |                |
| ashr_365           | DW_rightsh       | astr (area)        |                |
| ashr_367           | DW_rightsh       | astr (area)        |                |
| ashr_368           | DW_rightsh       | astr (area)        |                |
| ashr_369           | DW_rightsh       | astr (area)        |                |
| ashr_370           | DW_rightsh       | astr (area)        |                |
| ashr_372           | DW_rightsh       | astr (area)        |                |
| ashr_373           | DW_rightsh       | astr (area)        |                |
| ashr_374           | DW_rightsh       | astr (area)        |                |
| ashr_375           | DW_rightsh       | astr (area)        |                |
| ashr_377           | DW_rightsh       | astr (area)        |                |
| ashr_378           | DW_rightsh       | astr (area)        |                |
| ashr_379           | DW_rightsh       | astr (area)        |                |
| ashr_380           | DW_rightsh       | astr (area)        |                |
| ashr_382           | DW_rightsh       | astr (area)        |                |
| ashr_383           | DW_rightsh       | astr (area)        |                |
| ashr_384           | DW_rightsh       | astr (area)        |                |
| ashr_385           | DW_rightsh       | astr (area)        |                |
| ashr_387           | DW_rightsh       | astr (area)        |                |
| ashr_388           | DW_rightsh       | astr (area)        |                |
| ashr_389           | DW_rightsh       | astr (area)        |                |
| ashr_390           | DW_rightsh       | astr (area)        |                |
| ashr_392           | DW_rightsh       | astr (area)        |                |
| ashr_393           | DW_rightsh       | astr (area)        |                |
| ashr_394           | DW_rightsh       | astr (area)        |                |
| ashr_395           | DW_rightsh       | astr (area)        |                |
| ashr_397           | DW_rightsh       | astr (area)        |                |
| ashr_398           | DW_rightsh       | astr (area)        |                |
| ashr_399           | DW_rightsh       | astr (area)        |                |
| ashr_400           | DW_rightsh       | astr (area)        |                |
| sub_x_16           | DW01_dec         | apparch (area)     |                |
| DP_OP_569_274_8451 | DP_OP_569_274_8451 | str (area,speed) |                |
| DP_OP_564_276_9641 | DP_OP_564_276_9641 | str (area,speed) |                |
| DP_OP_559_277_7600 | DP_OP_559_277_7600 | str (area,speed) |                |
| DP_OP_554_275_5559 | DP_OP_554_275_5559 | str (area,speed) |                |
| DP_OP_548_264_3518 | DP_OP_548_264_3518 | str (area,speed) |                |
| DP_OP_543_263_1477 | DP_OP_543_263_1477 | str (area,speed) |                |
| DP_OP_538_269_9403 | DP_OP_538_269_9403 | str (area,speed) |                |
| DP_OP_533_268_7362 | DP_OP_533_268_7362 | str (area,speed) |                |
| DP_OP_527_271_5970 | DP_OP_527_271_5970 | str (area,speed) |                |
| DP_OP_522_270_3280 | DP_OP_522_270_3280 | str (area,speed) |                |
| DP_OP_517_273_1239 | DP_OP_517_273_1239 | str (area,speed) |                |
| DP_OP_512_272_323  | DP_OP_512_272_323 | str (area,speed)  |                |
| DP_OP_506_262_8249 | DP_OP_506_262_8249 | str (area,speed) |                |
| DP_OP_501_261_6208 | DP_OP_501_261_6208 | str (area,speed) |                |
| DP_OP_496_267_4167 | DP_OP_496_267_4167 | str (area,speed) |                |
| DP_OP_491_266_2126 | DP_OP_491_266_2126 | str (area,speed) |                |
| DP_OP_485_260_85   | DP_OP_485_260_85 | str (area,speed)   |                |
| DP_OP_480_258_8011 | DP_OP_480_258_8011 | str (area,speed) |                |
| DP_OP_475_259_8725 | DP_OP_475_259_8725 | str (area,speed) |                |
| DP_OP_470_265_3929 | DP_OP_470_265_3929 | str (area,speed) |                |
| DP_OP_464_255_1888 | DP_OP_464_255_1888 | str (area,speed) |                |
| DP_OP_459_248_7535 | DP_OP_459_248_7535 | str (area,speed) |                |
| DP_OP_454_254_9690 | DP_OP_454_254_9690 | str (area,speed) |                |
| DP_OP_449_249_7649 | DP_OP_449_249_7649 | str (area,speed) |                |
| DP_OP_443_246_5608 | DP_OP_443_246_5608 | str (area,speed) |                |
| DP_OP_438_242_3567 | DP_OP_438_242_3567 | str (area,speed) |                |
| DP_OP_433_247_1526 | DP_OP_433_247_1526 | str (area,speed) |                |
| DP_OP_428_243_9452 | DP_OP_428_243_9452 | str (area,speed) |                |
| DP_OP_422_253_8060 | DP_OP_422_253_8060 | str (area,speed) |                |
| DP_OP_417_244_5370 | DP_OP_417_244_5370 | str (area,speed) |                |
| DP_OP_412_252_3329 | DP_OP_412_252_3329 | str (area,speed) |                |
| DP_OP_407_245_2413 | DP_OP_407_245_2413 | str (area,speed) |                |
| DP_OP_401_278_372  | DP_OP_401_278_372 | str (area,speed)  |                |
| DP_OP_396_280_8298 | DP_OP_396_280_8298 | str (area,speed) |                |
| DP_OP_391_281_6257 | DP_OP_391_281_6257 | str (area,speed) |                |
| DP_OP_386_279_4216 | DP_OP_386_279_4216 | str (area,speed) |                |
| DP_OP_380_256_2175 | DP_OP_380_256_2175 | str (area,speed) |                |
| DP_OP_375_250_134  | DP_OP_375_250_134 | str (area,speed)  |                |
| DP_OP_370_257_848  | DP_OP_370_257_848 | str (area,speed)  |                |
| DP_OP_365_251_6019 | DP_OP_365_251_6019 | str (area,speed) |                |
===============================================================================

1
