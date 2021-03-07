module vat_buzzer_behavior ( output buzzer,
 input above_25_0, above_30_0, low_level_0,
 input above_25_1, above_30_1, low_level_1,
 input select_vat_1 );
 assign buzzer = select_vat_1 ? low_level_1 | (above_30_1 | ~above_25_1)
 : low_level_0 | (above_30_0 | ~above_25_0);
endmodule