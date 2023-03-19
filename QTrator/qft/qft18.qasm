OPENQASM 2.0;
include "qelib1.inc";
qreg q[18];
creg c16[18];
 h q[17];
 cp(pi/2) q[17],q[16];
 cp(pi/4) q[17],q[15];
 cp(pi/8) q[17],q[14];
 cp(pi/16) q[17],q[13];
 cp(pi/32) q[17],q[12];
 cp(pi/64) q[17],q[11];
 cp(pi/128) q[17],q[10];
 cp(pi/256) q[17],q[9];
 cp(pi/512) q[17],q[8];
 cp(pi/1024) q[17],q[7];
 cp(pi/2048) q[17],q[6];
 cp(pi/4096) q[17],q[5];
 cp(pi/8192) q[17],q[4];
 cp(pi/16384) q[17],q[3];
 cp(pi/32768) q[17],q[2];
 cp(pi/65536) q[17],q[1];
 cp(pi/131072) q[17],q[0];
 h q[16];
 cp(pi/2) q[16],q[15];
 cp(pi/4) q[16],q[14];
 cp(pi/8) q[16],q[13];
 cp(pi/16) q[16],q[12];
 cp(pi/32) q[16],q[11];
 cp(pi/64) q[16],q[10];
 cp(pi/128) q[16],q[9];
 cp(pi/256) q[16],q[8];
 cp(pi/512) q[16],q[7];
 cp(pi/1024) q[16],q[6];
 cp(pi/2048) q[16],q[5];
 cp(pi/4096) q[16],q[4];
 cp(pi/8192) q[16],q[3];
 cp(pi/16384) q[16],q[2];
 cp(pi/32768) q[16],q[1];
 cp(pi/65536) q[16],q[0];
 h q[15];
 cp(pi/2) q[15],q[14];
 cp(pi/4) q[15],q[13];
 cp(pi/8) q[15],q[12];
 cp(pi/16) q[15],q[11];
 cp(pi/32) q[15],q[10];
 cp(pi/64) q[15],q[9];
 cp(pi/128) q[15],q[8];
 cp(pi/256) q[15],q[7];
 cp(pi/512) q[15],q[6];
 cp(pi/1024) q[15],q[5];
 cp(pi/2048) q[15],q[4];
 cp(pi/4096) q[15],q[3];
 cp(pi/8192) q[15],q[2];
 cp(pi/16384) q[15],q[1];
 cp(pi/32768) q[15],q[0];
 h q[14];
 cp(pi/2) q[14],q[13];
 cp(pi/4) q[14],q[12];
 cp(pi/8) q[14],q[11];
 cp(pi/16) q[14],q[10];
 cp(pi/32) q[14],q[9];
 cp(pi/64) q[14],q[8];
 cp(pi/128) q[14],q[7];
 cp(pi/256) q[14],q[6];
 cp(pi/512) q[14],q[5];
 cp(pi/1024) q[14],q[4];
 cp(pi/2048) q[14],q[3];
 cp(pi/4096) q[14],q[2];
 cp(pi/8192) q[14],q[1];
 cp(pi/16384) q[14],q[0];
 h q[13];
 cp(pi/2) q[13],q[12];
 cp(pi/4) q[13],q[11];
 cp(pi/8) q[13],q[10];
 cp(pi/16) q[13],q[9];
 cp(pi/32) q[13],q[8];
 cp(pi/64) q[13],q[7];
 cp(pi/128) q[13],q[6];
 cp(pi/256) q[13],q[5];
 cp(pi/512) q[13],q[4];
 cp(pi/1024) q[13],q[3];
 cp(pi/2048) q[13],q[2];
 cp(pi/4096) q[13],q[1];
 cp(pi/8192) q[13],q[0];
 h q[12];
 cp(pi/2) q[12],q[11];
 cp(pi/4) q[12],q[10];
 cp(pi/8) q[12],q[9];
 cp(pi/16) q[12],q[8];
 cp(pi/32) q[12],q[7];
 cp(pi/64) q[12],q[6];
 cp(pi/128) q[12],q[5];
 cp(pi/256) q[12],q[4];
 cp(pi/512) q[12],q[3];
 cp(pi/1024) q[12],q[2];
 cp(pi/2048) q[12],q[1];
 cp(pi/4096) q[12],q[0];
 h q[11];
 cp(pi/2) q[11],q[10];
 cp(pi/4) q[11],q[9];
 cp(pi/8) q[11],q[8];
 cp(pi/16) q[11],q[7];
 cp(pi/32) q[11],q[6];
 cp(pi/64) q[11],q[5];
 cp(pi/128) q[11],q[4];
 cp(pi/256) q[11],q[3];
 cp(pi/512) q[11],q[2];
 cp(pi/1024) q[11],q[1];
 cp(pi/2048) q[11],q[0];
 h q[10];
 cp(pi/2) q[10],q[9];
 cp(pi/4) q[10],q[8];
 cp(pi/8) q[10],q[7];
 cp(pi/16) q[10],q[6];
 cp(pi/32) q[10],q[5];
 cp(pi/64) q[10],q[4];
 cp(pi/128) q[10],q[3];
 cp(pi/256) q[10],q[2];
 cp(pi/512) q[10],q[1];
 cp(pi/1024) q[10],q[0];
 h q[9];
 cp(pi/2) q[9],q[8];
 cp(pi/4) q[9],q[7];
 cp(pi/8) q[9],q[6];
 cp(pi/16) q[9],q[5];
 cp(pi/32) q[9],q[4];
 cp(pi/64) q[9],q[3];
 cp(pi/128) q[9],q[2];
 cp(pi/256) q[9],q[1];
 cp(pi/512) q[9],q[0];
 h q[8];
 cp(pi/2) q[8],q[7];
 cp(pi/4) q[8],q[6];
 cp(pi/8) q[8],q[5];
 cp(pi/16) q[8],q[4];
 cp(pi/32) q[8],q[3];
 cp(pi/64) q[8],q[2];
 cp(pi/128) q[8],q[1];
 cp(pi/256) q[8],q[0];
 h q[7];
 cp(pi/2) q[7],q[6];
 cp(pi/4) q[7],q[5];
 cp(pi/8) q[7],q[4];
 cp(pi/16) q[7],q[3];
 cp(pi/32) q[7],q[2];
 cp(pi/64) q[7],q[1];
 cp(pi/128) q[7],q[0];
 h q[6];
 cp(pi/2) q[6],q[5];
 cp(pi/4) q[6],q[4];
 cp(pi/8) q[6],q[3];
 cp(pi/16) q[6],q[2];
 cp(pi/32) q[6],q[1];
 cp(pi/64) q[6],q[0];
 h q[5];
 cp(pi/2) q[5],q[4];
 cp(pi/4) q[5],q[3];
 cp(pi/8) q[5],q[2];
 cp(pi/16) q[5],q[1];
 cp(pi/32) q[5],q[0];
 h q[4];
 cp(pi/2) q[4],q[3];
 cp(pi/4) q[4],q[2];
 cp(pi/8) q[4],q[1];
 cp(pi/16) q[4],q[0];
 h q[3];
 cp(pi/2) q[3],q[2];
 cp(pi/4) q[3],q[1];
 cp(pi/8) q[3],q[0];
 h q[2];
 cp(pi/2) q[2],q[1];
 cp(pi/4) q[2],q[0];
 h q[1];
 cp(pi/2) q[1],q[0];
 h q[0];
 swap q[0],q[17];
 swap q[1],q[16];
 swap q[2],q[15];
 swap q[3],q[14];
 swap q[4],q[13];
 swap q[5],q[12];
 swap q[6],q[11];
 swap q[7],q[10];
 swap q[8],q[9];
 
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17];
measure q[0] -> c16[0];
measure q[1] -> c16[1];
measure q[2] -> c16[2];
measure q[3] -> c16[3];
measure q[4] -> c16[4];
measure q[5] -> c16[5];
measure q[6] -> c16[6];
measure q[7] -> c16[7];
measure q[8] -> c16[8];
measure q[9] -> c16[9];
measure q[10] -> c16[10];
measure q[11] -> c16[11];
measure q[12] -> c16[12];
measure q[13] -> c16[13];
measure q[14] -> c16[14];
measure q[15] -> c16[15];
measure q[16] -> c16[16];
measure q[17] -> c16[17];

