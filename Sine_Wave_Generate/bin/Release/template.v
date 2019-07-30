/*
By whik
*/
module ROM(clk,nreset,addr,data);

input clk,nreset;
input [7:0] addr;
output reg [15:0]data;    

always @ (posedge clk)
begin 
    if(!nreset)
        begin 
            data <= 800;
        end     
    else case(addr)
//////////////////////////////////
         0 :   data <= 800 ;
         1 :   data <= 831 ; 
         2 :   data <= 863 ; 
         3 :   data <= 894 ; 
         4 :   data <= 925 ; 
         5 :   data <= 956 ; 
         6 :   data <= 986 ; 
         7 :   data <= 1016 ; 
         8 :   data <= 1045 ; 
         9 :   data <= 1074 ; 
         10 :  data <= 1102 ; 
         11 :  data <= 1129 ; 
         12 :  data <= 1156 ; 
         13 :  data <= 1181 ; 
         14 :  data <= 1206 ; 
         15 :  data <= 1230 ; 
         16 :  data <= 1253 ;
         17 :  data <= 1274 ; 
         18 :  data <= 1295 ; 
         19 :  data <= 1314 ; 
         20 :  data <= 1332 ; 
         21 :  data <= 1349 ; 
         22 :  data <= 1364 ; 
         23 :  data <= 1379 ; 
         24 :  data <= 1391 ; 
         25 :  data <= 1403 ; 
         26 :  data <= 1412 ; 
         27 :  data <= 1421 ; 
         28 :  data <= 1428 ; 
         29 :  data <= 1433 ; 
         30 :  data <= 1437 ; 
         31 :  data <= 1439 ; 
         32 :  data <= 1440 ; 
         33 :  data <= 1439 ; 
         34 :  data <= 1437 ; 
         35 :  data <= 1433 ; 
         36 :  data <= 1428 ; 
         37 :  data <= 1421 ; 
         38 :  data <= 1412 ; 
         39 :  data <= 1403 ; 
         40 :  data <= 1391 ; 
         41 :  data <= 1379 ; 
         42 :  data <= 1364 ; 
         43 :  data <= 1349 ; 
         44 :  data <= 1332 ; 
         45 :  data <= 1314 ; 
         46 :  data <= 1295 ; 
         47 :  data <= 1274 ;
         48 :  data <= 1253 ;
         49 :  data <= 1230 ; 
         50 :  data <= 1206 ; 
         51 :  data <= 1181 ; 
         52 :  data <= 1156 ; 
         53 :  data <= 1129 ; 
         54 :  data <= 1102 ; 
         55 :  data <= 1074 ; 
         56 :  data <= 1045 ; 
         57 :  data <= 1016 ; 
         58 :  data <= 986 ; 
         59 :  data <= 956 ; 
         60 :  data <= 925 ; 
         61 :  data <= 894 ; 
         62 :  data <= 863 ; 
         63 :  data <= 831 ; 
         64 :  data <= 800 ; 
         65 :  data <= 769 ; 
         66 :  data <= 737 ; 
         67 :  data <= 706 ; 
         68 :  data <= 675 ; 
         69 :  data <= 644 ; 
         70 :  data <= 614 ; 
         71 :  data <= 584 ; 
         72 :  data <= 555 ; 
         73 :  data <= 526 ; 
         74 :  data <= 498 ; 
         75 :  data <= 471 ; 
         76 :  data <= 444 ;
         77 :  data <= 419 ; 
         78 :  data <= 394 ; 
         79 :  data <= 370 ; 
         80 :  data <= 347 ; 
         81 :  data <= 326 ; 
         82 :  data <= 305 ; 
         83 :  data <= 286 ; 
         84 :  data <= 268 ; 
         85 :  data <= 251 ; 
         86 :  data <= 236 ; 
         87 :  data <= 221 ; 
         88 :  data <= 209 ; 
         89 :  data <= 197 ;
         90 :  data <= 188 ;
         91 :  data <= 179 ;
         92 :  data <= 172 ;
         93 :  data <= 167 ;
         94 :  data <= 163 ;
         95 :  data <= 161 ;
         96 :  data <= 160 ;
         97 :  data <= 161 ;
         98 :  data <= 163 ;
         99 :  data <= 167 ;
         100 :  data <= 172 ;
         101 :  data <= 179 ;
         102 :  data <= 188 ;
         103 :  data <= 197 ;
         104 :  data <= 209 ;
         105 :  data <= 221 ; 
         106 :  data <= 236 ; 
         107 :  data <= 251 ;
         108 :  data <= 268 ;
         109 :  data <= 286 ; 
         110 :  data <= 305 ; 
         111 :  data <= 326 ; 
         112 :  data <= 347 ; 
         113 :  data <= 370 ; 
         114 :  data <= 394 ; 
         115 :  data <= 419 ; 
         116 :  data <= 444 ; 
         117 :  data <= 471 ; 
         118 :  data <= 498 ; 
         119 :  data <= 526 ; 
         120 :  data <= 555 ; 
         121 :  data <= 584 ; 
         122 :  data <= 614 ; 
         123 :  data <= 644 ; 
         124 :  data <= 675 ; 
         125 :  data <= 706 ; 
         126 :  data <= 737 ; 
         127 :  data <= 769 ; 
        default : data <= 800;       
    endcase 
end 

endmodule


