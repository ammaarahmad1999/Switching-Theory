module alarm_priority ( output [2:0] intruder_zone,
 output valid,
 input [1:8] zone );
 wire [1:8] winner;
 assign winner[1] = zone[1];
 assign winner[2] = zone[2] & ~zone[1];
 assign winner[3] = zone[3] & ~(zone[2] | zone[1]);
 assign winner[4] = zone[4] & ~(zone[3] | zone[2] | zone[1]);
 assign winner[5] = zone[5] & ~(zone[4] | zone[3] | zone[2] |
 zone[1]);
 assign winner[6] = zone[6] & ~(zone[5] | zone[4] | zone[3] |
 zone[2] | zone[1]);
 assign winner[7] = zone[7] & ~(zone[6] | zone[5] | zone[4] |
 zone[3] | zone[2] | zone[1]);
 assign winner[8] = zone[8] & ~(zone[7] | zone[6] | zone[5] |
 zone[4] | zone[3] | zone[2] |
 zone[1]);
 assign intruder_zone[2] = winner[5] | winner[6] |
 winner[7] | winner[8];
 assign intruder_zone[1] = winner[3] | winner[4] |
 winner[7] | winner[8];
 assign intruder_zone[0] = winner[2] | winner[4] |
 winner[6] | winner[8];
 assign valid = zone[1] | zone[2] | zone[3] | zone[4] |
 zone[5] | zone[6] | zone[7] | zone[8];
endmodule
