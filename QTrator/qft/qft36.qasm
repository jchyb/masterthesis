OPENQASM 2.0;
include "qelib1.inc";
qreg q[36];
creg c34[36];
 h q[35];
 cp(pi/2) q[35],q[34];
 cp(pi/4) q[35],q[33];
 cp(pi/8) q[35],q[32];
 cp(pi/16) q[35],q[31];
 cp(pi/32) q[35],q[30];
 cp(pi/64) q[35],q[29];
 cp(pi/128) q[35],q[28];
 cp(pi/256) q[35],q[27];
 cp(pi/512) q[35],q[26];
 cp(pi/1024) q[35],q[25];
 cp(pi/2048) q[35],q[24];
 cp(pi/4096) q[35],q[23];
 cp(pi/8192) q[35],q[22];
 cp(pi/16384) q[35],q[21];
 cp(pi/32768) q[35],q[20];
 cp(pi/65536) q[35],q[19];
 cp(pi/131072) q[35],q[18];
 cp(pi/262144) q[35],q[17];
 cp(pi/524288) q[35],q[16];
 cp(pi/1048576) q[35],q[15];
 cp(pi/2097152) q[35],q[14];
 cp(pi/4194304) q[35],q[13];
 cp(pi/8388608) q[35],q[12];
 cp(pi/16777216) q[35],q[11];
 cp(pi/33554432) q[35],q[10];
 cp(pi/67108864) q[35],q[9];
 cp(pi/134217728) q[35],q[8];
 cp(pi/268435456) q[35],q[7];
 cp(pi/536870912) q[35],q[6];
 cp(pi/1073741824) q[35],q[5];
 cp(pi/2147483648) q[35],q[4];
 cp(pi/4294967296) q[35],q[3];
 cp(pi/8589934592) q[35],q[2];
 cp(pi/17179869184) q[35],q[1];
 cp(pi/34359738368) q[35],q[0];
 h q[34];
 cp(pi/2) q[34],q[33];
 cp(pi/4) q[34],q[32];
 cp(pi/8) q[34],q[31];
 cp(pi/16) q[34],q[30];
 cp(pi/32) q[34],q[29];
 cp(pi/64) q[34],q[28];
 cp(pi/128) q[34],q[27];
 cp(pi/256) q[34],q[26];
 cp(pi/512) q[34],q[25];
 cp(pi/1024) q[34],q[24];
 cp(pi/2048) q[34],q[23];
 cp(pi/4096) q[34],q[22];
 cp(pi/8192) q[34],q[21];
 cp(pi/16384) q[34],q[20];
 cp(pi/32768) q[34],q[19];
 cp(pi/65536) q[34],q[18];
 cp(pi/131072) q[34],q[17];
 cp(pi/262144) q[34],q[16];
 cp(pi/524288) q[34],q[15];
 cp(pi/1048576) q[34],q[14];
 cp(pi/2097152) q[34],q[13];
 cp(pi/4194304) q[34],q[12];
 cp(pi/8388608) q[34],q[11];
 cp(pi/16777216) q[34],q[10];
 cp(pi/33554432) q[34],q[9];
 cp(pi/67108864) q[34],q[8];
 cp(pi/134217728) q[34],q[7];
 cp(pi/268435456) q[34],q[6];
 cp(pi/536870912) q[34],q[5];
 cp(pi/1073741824) q[34],q[4];
 cp(pi/2147483648) q[34],q[3];
 cp(pi/4294967296) q[34],q[2];
 cp(pi/8589934592) q[34],q[1];
 cp(pi/17179869184) q[34],q[0];
 h q[33];
 cp(pi/2) q[33],q[32];
 cp(pi/4) q[33],q[31];
 cp(pi/8) q[33],q[30];
 cp(pi/16) q[33],q[29];
 cp(pi/32) q[33],q[28];
 cp(pi/64) q[33],q[27];
 cp(pi/128) q[33],q[26];
 cp(pi/256) q[33],q[25];
 cp(pi/512) q[33],q[24];
 cp(pi/1024) q[33],q[23];
 cp(pi/2048) q[33],q[22];
 cp(pi/4096) q[33],q[21];
 cp(pi/8192) q[33],q[20];
 cp(pi/16384) q[33],q[19];
 cp(pi/32768) q[33],q[18];
 cp(pi/65536) q[33],q[17];
 cp(pi/131072) q[33],q[16];
 cp(pi/262144) q[33],q[15];
 cp(pi/524288) q[33],q[14];
 cp(pi/1048576) q[33],q[13];
 cp(pi/2097152) q[33],q[12];
 cp(pi/4194304) q[33],q[11];
 cp(pi/8388608) q[33],q[10];
 cp(pi/16777216) q[33],q[9];
 cp(pi/33554432) q[33],q[8];
 cp(pi/67108864) q[33],q[7];
 cp(pi/134217728) q[33],q[6];
 cp(pi/268435456) q[33],q[5];
 cp(pi/536870912) q[33],q[4];
 cp(pi/1073741824) q[33],q[3];
 cp(pi/2147483648) q[33],q[2];
 cp(pi/4294967296) q[33],q[1];
 cp(pi/8589934592) q[33],q[0];
 h q[32];
 cp(pi/2) q[32],q[31];
 cp(pi/4) q[32],q[30];
 cp(pi/8) q[32],q[29];
 cp(pi/16) q[32],q[28];
 cp(pi/32) q[32],q[27];
 cp(pi/64) q[32],q[26];
 cp(pi/128) q[32],q[25];
 cp(pi/256) q[32],q[24];
 cp(pi/512) q[32],q[23];
 cp(pi/1024) q[32],q[22];
 cp(pi/2048) q[32],q[21];
 cp(pi/4096) q[32],q[20];
 cp(pi/8192) q[32],q[19];
 cp(pi/16384) q[32],q[18];
 cp(pi/32768) q[32],q[17];
 cp(pi/65536) q[32],q[16];
 cp(pi/131072) q[32],q[15];
 cp(pi/262144) q[32],q[14];
 cp(pi/524288) q[32],q[13];
 cp(pi/1048576) q[32],q[12];
 cp(pi/2097152) q[32],q[11];
 cp(pi/4194304) q[32],q[10];
 cp(pi/8388608) q[32],q[9];
 cp(pi/16777216) q[32],q[8];
 cp(pi/33554432) q[32],q[7];
 cp(pi/67108864) q[32],q[6];
 cp(pi/134217728) q[32],q[5];
 cp(pi/268435456) q[32],q[4];
 cp(pi/536870912) q[32],q[3];
 cp(pi/1073741824) q[32],q[2];
 cp(pi/2147483648) q[32],q[1];
 cp(pi/4294967296) q[32],q[0];
 h q[31];
 cp(pi/2) q[31],q[30];
 cp(pi/4) q[31],q[29];
 cp(pi/8) q[31],q[28];
 cp(pi/16) q[31],q[27];
 cp(pi/32) q[31],q[26];
 cp(pi/64) q[31],q[25];
 cp(pi/128) q[31],q[24];
 cp(pi/256) q[31],q[23];
 cp(pi/512) q[31],q[22];
 cp(pi/1024) q[31],q[21];
 cp(pi/2048) q[31],q[20];
 cp(pi/4096) q[31],q[19];
 cp(pi/8192) q[31],q[18];
 cp(pi/16384) q[31],q[17];
 cp(pi/32768) q[31],q[16];
 cp(pi/65536) q[31],q[15];
 cp(pi/131072) q[31],q[14];
 cp(pi/262144) q[31],q[13];
 cp(pi/524288) q[31],q[12];
 cp(pi/1048576) q[31],q[11];
 cp(pi/2097152) q[31],q[10];
 cp(pi/4194304) q[31],q[9];
 cp(pi/8388608) q[31],q[8];
 cp(pi/16777216) q[31],q[7];
 cp(pi/33554432) q[31],q[6];
 cp(pi/67108864) q[31],q[5];
 cp(pi/134217728) q[31],q[4];
 cp(pi/268435456) q[31],q[3];
 cp(pi/536870912) q[31],q[2];
 cp(pi/1073741824) q[31],q[1];
 cp(pi/2147483648) q[31],q[0];
 h q[30];
 cp(pi/2) q[30],q[29];
 cp(pi/4) q[30],q[28];
 cp(pi/8) q[30],q[27];
 cp(pi/16) q[30],q[26];
 cp(pi/32) q[30],q[25];
 cp(pi/64) q[30],q[24];
 cp(pi/128) q[30],q[23];
 cp(pi/256) q[30],q[22];
 cp(pi/512) q[30],q[21];
 cp(pi/1024) q[30],q[20];
 cp(pi/2048) q[30],q[19];
 cp(pi/4096) q[30],q[18];
 cp(pi/8192) q[30],q[17];
 cp(pi/16384) q[30],q[16];
 cp(pi/32768) q[30],q[15];
 cp(pi/65536) q[30],q[14];
 cp(pi/131072) q[30],q[13];
 cp(pi/262144) q[30],q[12];
 cp(pi/524288) q[30],q[11];
 cp(pi/1048576) q[30],q[10];
 cp(pi/2097152) q[30],q[9];
 cp(pi/4194304) q[30],q[8];
 cp(pi/8388608) q[30],q[7];
 cp(pi/16777216) q[30],q[6];
 cp(pi/33554432) q[30],q[5];
 cp(pi/67108864) q[30],q[4];
 cp(pi/134217728) q[30],q[3];
 cp(pi/268435456) q[30],q[2];
 cp(pi/536870912) q[30],q[1];
 cp(pi/1073741824) q[30],q[0];
 h q[29];
 cp(pi/2) q[29],q[28];
 cp(pi/4) q[29],q[27];
 cp(pi/8) q[29],q[26];
 cp(pi/16) q[29],q[25];
 cp(pi/32) q[29],q[24];
 cp(pi/64) q[29],q[23];
 cp(pi/128) q[29],q[22];
 cp(pi/256) q[29],q[21];
 cp(pi/512) q[29],q[20];
 cp(pi/1024) q[29],q[19];
 cp(pi/2048) q[29],q[18];
 cp(pi/4096) q[29],q[17];
 cp(pi/8192) q[29],q[16];
 cp(pi/16384) q[29],q[15];
 cp(pi/32768) q[29],q[14];
 cp(pi/65536) q[29],q[13];
 cp(pi/131072) q[29],q[12];
 cp(pi/262144) q[29],q[11];
 cp(pi/524288) q[29],q[10];
 cp(pi/1048576) q[29],q[9];
 cp(pi/2097152) q[29],q[8];
 cp(pi/4194304) q[29],q[7];
 cp(pi/8388608) q[29],q[6];
 cp(pi/16777216) q[29],q[5];
 cp(pi/33554432) q[29],q[4];
 cp(pi/67108864) q[29],q[3];
 cp(pi/134217728) q[29],q[2];
 cp(pi/268435456) q[29],q[1];
 cp(pi/536870912) q[29],q[0];
 h q[28];
 cp(pi/2) q[28],q[27];
 cp(pi/4) q[28],q[26];
 cp(pi/8) q[28],q[25];
 cp(pi/16) q[28],q[24];
 cp(pi/32) q[28],q[23];
 cp(pi/64) q[28],q[22];
 cp(pi/128) q[28],q[21];
 cp(pi/256) q[28],q[20];
 cp(pi/512) q[28],q[19];
 cp(pi/1024) q[28],q[18];
 cp(pi/2048) q[28],q[17];
 cp(pi/4096) q[28],q[16];
 cp(pi/8192) q[28],q[15];
 cp(pi/16384) q[28],q[14];
 cp(pi/32768) q[28],q[13];
 cp(pi/65536) q[28],q[12];
 cp(pi/131072) q[28],q[11];
 cp(pi/262144) q[28],q[10];
 cp(pi/524288) q[28],q[9];
 cp(pi/1048576) q[28],q[8];
 cp(pi/2097152) q[28],q[7];
 cp(pi/4194304) q[28],q[6];
 cp(pi/8388608) q[28],q[5];
 cp(pi/16777216) q[28],q[4];
 cp(pi/33554432) q[28],q[3];
 cp(pi/67108864) q[28],q[2];
 cp(pi/134217728) q[28],q[1];
 cp(pi/268435456) q[28],q[0];
 h q[27];
 cp(pi/2) q[27],q[26];
 cp(pi/4) q[27],q[25];
 cp(pi/8) q[27],q[24];
 cp(pi/16) q[27],q[23];
 cp(pi/32) q[27],q[22];
 cp(pi/64) q[27],q[21];
 cp(pi/128) q[27],q[20];
 cp(pi/256) q[27],q[19];
 cp(pi/512) q[27],q[18];
 cp(pi/1024) q[27],q[17];
 cp(pi/2048) q[27],q[16];
 cp(pi/4096) q[27],q[15];
 cp(pi/8192) q[27],q[14];
 cp(pi/16384) q[27],q[13];
 cp(pi/32768) q[27],q[12];
 cp(pi/65536) q[27],q[11];
 cp(pi/131072) q[27],q[10];
 cp(pi/262144) q[27],q[9];
 cp(pi/524288) q[27],q[8];
 cp(pi/1048576) q[27],q[7];
 cp(pi/2097152) q[27],q[6];
 cp(pi/4194304) q[27],q[5];
 cp(pi/8388608) q[27],q[4];
 cp(pi/16777216) q[27],q[3];
 cp(pi/33554432) q[27],q[2];
 cp(pi/67108864) q[27],q[1];
 cp(pi/134217728) q[27],q[0];
 h q[26];
 cp(pi/2) q[26],q[25];
 cp(pi/4) q[26],q[24];
 cp(pi/8) q[26],q[23];
 cp(pi/16) q[26],q[22];
 cp(pi/32) q[26],q[21];
 cp(pi/64) q[26],q[20];
 cp(pi/128) q[26],q[19];
 cp(pi/256) q[26],q[18];
 cp(pi/512) q[26],q[17];
 cp(pi/1024) q[26],q[16];
 cp(pi/2048) q[26],q[15];
 cp(pi/4096) q[26],q[14];
 cp(pi/8192) q[26],q[13];
 cp(pi/16384) q[26],q[12];
 cp(pi/32768) q[26],q[11];
 cp(pi/65536) q[26],q[10];
 cp(pi/131072) q[26],q[9];
 cp(pi/262144) q[26],q[8];
 cp(pi/524288) q[26],q[7];
 cp(pi/1048576) q[26],q[6];
 cp(pi/2097152) q[26],q[5];
 cp(pi/4194304) q[26],q[4];
 cp(pi/8388608) q[26],q[3];
 cp(pi/16777216) q[26],q[2];
 cp(pi/33554432) q[26],q[1];
 cp(pi/67108864) q[26],q[0];
 h q[25];
 cp(pi/2) q[25],q[24];
 cp(pi/4) q[25],q[23];
 cp(pi/8) q[25],q[22];
 cp(pi/16) q[25],q[21];
 cp(pi/32) q[25],q[20];
 cp(pi/64) q[25],q[19];
 cp(pi/128) q[25],q[18];
 cp(pi/256) q[25],q[17];
 cp(pi/512) q[25],q[16];
 cp(pi/1024) q[25],q[15];
 cp(pi/2048) q[25],q[14];
 cp(pi/4096) q[25],q[13];
 cp(pi/8192) q[25],q[12];
 cp(pi/16384) q[25],q[11];
 cp(pi/32768) q[25],q[10];
 cp(pi/65536) q[25],q[9];
 cp(pi/131072) q[25],q[8];
 cp(pi/262144) q[25],q[7];
 cp(pi/524288) q[25],q[6];
 cp(pi/1048576) q[25],q[5];
 cp(pi/2097152) q[25],q[4];
 cp(pi/4194304) q[25],q[3];
 cp(pi/8388608) q[25],q[2];
 cp(pi/16777216) q[25],q[1];
 cp(pi/33554432) q[25],q[0];
 h q[24];
 cp(pi/2) q[24],q[23];
 cp(pi/4) q[24],q[22];
 cp(pi/8) q[24],q[21];
 cp(pi/16) q[24],q[20];
 cp(pi/32) q[24],q[19];
 cp(pi/64) q[24],q[18];
 cp(pi/128) q[24],q[17];
 cp(pi/256) q[24],q[16];
 cp(pi/512) q[24],q[15];
 cp(pi/1024) q[24],q[14];
 cp(pi/2048) q[24],q[13];
 cp(pi/4096) q[24],q[12];
 cp(pi/8192) q[24],q[11];
 cp(pi/16384) q[24],q[10];
 cp(pi/32768) q[24],q[9];
 cp(pi/65536) q[24],q[8];
 cp(pi/131072) q[24],q[7];
 cp(pi/262144) q[24],q[6];
 cp(pi/524288) q[24],q[5];
 cp(pi/1048576) q[24],q[4];
 cp(pi/2097152) q[24],q[3];
 cp(pi/4194304) q[24],q[2];
 cp(pi/8388608) q[24],q[1];
 cp(pi/16777216) q[24],q[0];
 h q[23];
 cp(pi/2) q[23],q[22];
 cp(pi/4) q[23],q[21];
 cp(pi/8) q[23],q[20];
 cp(pi/16) q[23],q[19];
 cp(pi/32) q[23],q[18];
 cp(pi/64) q[23],q[17];
 cp(pi/128) q[23],q[16];
 cp(pi/256) q[23],q[15];
 cp(pi/512) q[23],q[14];
 cp(pi/1024) q[23],q[13];
 cp(pi/2048) q[23],q[12];
 cp(pi/4096) q[23],q[11];
 cp(pi/8192) q[23],q[10];
 cp(pi/16384) q[23],q[9];
 cp(pi/32768) q[23],q[8];
 cp(pi/65536) q[23],q[7];
 cp(pi/131072) q[23],q[6];
 cp(pi/262144) q[23],q[5];
 cp(pi/524288) q[23],q[4];
 cp(pi/1048576) q[23],q[3];
 cp(pi/2097152) q[23],q[2];
 cp(pi/4194304) q[23],q[1];
 cp(pi/8388608) q[23],q[0];
 h q[22];
 cp(pi/2) q[22],q[21];
 cp(pi/4) q[22],q[20];
 cp(pi/8) q[22],q[19];
 cp(pi/16) q[22],q[18];
 cp(pi/32) q[22],q[17];
 cp(pi/64) q[22],q[16];
 cp(pi/128) q[22],q[15];
 cp(pi/256) q[22],q[14];
 cp(pi/512) q[22],q[13];
 cp(pi/1024) q[22],q[12];
 cp(pi/2048) q[22],q[11];
 cp(pi/4096) q[22],q[10];
 cp(pi/8192) q[22],q[9];
 cp(pi/16384) q[22],q[8];
 cp(pi/32768) q[22],q[7];
 cp(pi/65536) q[22],q[6];
 cp(pi/131072) q[22],q[5];
 cp(pi/262144) q[22],q[4];
 cp(pi/524288) q[22],q[3];
 cp(pi/1048576) q[22],q[2];
 cp(pi/2097152) q[22],q[1];
 cp(pi/4194304) q[22],q[0];
 h q[21];
 cp(pi/2) q[21],q[20];
 cp(pi/4) q[21],q[19];
 cp(pi/8) q[21],q[18];
 cp(pi/16) q[21],q[17];
 cp(pi/32) q[21],q[16];
 cp(pi/64) q[21],q[15];
 cp(pi/128) q[21],q[14];
 cp(pi/256) q[21],q[13];
 cp(pi/512) q[21],q[12];
 cp(pi/1024) q[21],q[11];
 cp(pi/2048) q[21],q[10];
 cp(pi/4096) q[21],q[9];
 cp(pi/8192) q[21],q[8];
 cp(pi/16384) q[21],q[7];
 cp(pi/32768) q[21],q[6];
 cp(pi/65536) q[21],q[5];
 cp(pi/131072) q[21],q[4];
 cp(pi/262144) q[21],q[3];
 cp(pi/524288) q[21],q[2];
 cp(pi/1048576) q[21],q[1];
 cp(pi/2097152) q[21],q[0];
 h q[20];
 cp(pi/2) q[20],q[19];
 cp(pi/4) q[20],q[18];
 cp(pi/8) q[20],q[17];
 cp(pi/16) q[20],q[16];
 cp(pi/32) q[20],q[15];
 cp(pi/64) q[20],q[14];
 cp(pi/128) q[20],q[13];
 cp(pi/256) q[20],q[12];
 cp(pi/512) q[20],q[11];
 cp(pi/1024) q[20],q[10];
 cp(pi/2048) q[20],q[9];
 cp(pi/4096) q[20],q[8];
 cp(pi/8192) q[20],q[7];
 cp(pi/16384) q[20],q[6];
 cp(pi/32768) q[20],q[5];
 cp(pi/65536) q[20],q[4];
 cp(pi/131072) q[20],q[3];
 cp(pi/262144) q[20],q[2];
 cp(pi/524288) q[20],q[1];
 cp(pi/1048576) q[20],q[0];
 h q[19];
 cp(pi/2) q[19],q[18];
 cp(pi/4) q[19],q[17];
 cp(pi/8) q[19],q[16];
 cp(pi/16) q[19],q[15];
 cp(pi/32) q[19],q[14];
 cp(pi/64) q[19],q[13];
 cp(pi/128) q[19],q[12];
 cp(pi/256) q[19],q[11];
 cp(pi/512) q[19],q[10];
 cp(pi/1024) q[19],q[9];
 cp(pi/2048) q[19],q[8];
 cp(pi/4096) q[19],q[7];
 cp(pi/8192) q[19],q[6];
 cp(pi/16384) q[19],q[5];
 cp(pi/32768) q[19],q[4];
 cp(pi/65536) q[19],q[3];
 cp(pi/131072) q[19],q[2];
 cp(pi/262144) q[19],q[1];
 cp(pi/524288) q[19],q[0];
 h q[18];
 cp(pi/2) q[18],q[17];
 cp(pi/4) q[18],q[16];
 cp(pi/8) q[18],q[15];
 cp(pi/16) q[18],q[14];
 cp(pi/32) q[18],q[13];
 cp(pi/64) q[18],q[12];
 cp(pi/128) q[18],q[11];
 cp(pi/256) q[18],q[10];
 cp(pi/512) q[18],q[9];
 cp(pi/1024) q[18],q[8];
 cp(pi/2048) q[18],q[7];
 cp(pi/4096) q[18],q[6];
 cp(pi/8192) q[18],q[5];
 cp(pi/16384) q[18],q[4];
 cp(pi/32768) q[18],q[3];
 cp(pi/65536) q[18],q[2];
 cp(pi/131072) q[18],q[1];
 cp(pi/262144) q[18],q[0];
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
 swap q[0],q[35];
 swap q[1],q[34];
 swap q[2],q[33];
 swap q[3],q[32];
 swap q[4],q[31];
 swap q[5],q[30];
 swap q[6],q[29];
 swap q[7],q[28];
 swap q[8],q[27];
 swap q[9],q[26];
 swap q[10],q[25];
 swap q[11],q[24];
 swap q[12],q[23];
 swap q[13],q[22];
 swap q[14],q[21];
 swap q[15],q[20];
 swap q[16],q[19];
 swap q[17],q[18];
 
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35];
measure q[0] -> c34[0];
measure q[1] -> c34[1];
measure q[2] -> c34[2];
measure q[3] -> c34[3];
measure q[4] -> c34[4];
measure q[5] -> c34[5];
measure q[6] -> c34[6];
measure q[7] -> c34[7];
measure q[8] -> c34[8];
measure q[9] -> c34[9];
measure q[10] -> c34[10];
measure q[11] -> c34[11];
measure q[12] -> c34[12];
measure q[13] -> c34[13];
measure q[14] -> c34[14];
measure q[15] -> c34[15];
measure q[16] -> c34[16];
measure q[17] -> c34[17];
measure q[18] -> c34[18];
measure q[19] -> c34[19];
measure q[20] -> c34[20];
measure q[21] -> c34[21];
measure q[22] -> c34[22];
measure q[23] -> c34[23];
measure q[24] -> c34[24];
measure q[25] -> c34[25];
measure q[26] -> c34[26];
measure q[27] -> c34[27];
measure q[28] -> c34[28];
measure q[29] -> c34[29];
measure q[30] -> c34[30];
measure q[31] -> c34[31];
measure q[32] -> c34[32];
measure q[33] -> c34[33];
measure q[34] -> c34[34];
measure q[35] -> c34[35];
