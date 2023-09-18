OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[5];
cy q[9],q[1];
cu1(4.3792109) q[6],q[0];
cy q[8],q[7];
cu3(3.0700419,4.6369292,3.2357998) q[3],q[2];
rx(4.9911818) q[4];
ch q[5],q[8];
cswap q[7],q[2],q[1];
s q[3];
cu3(3.0164367,0.244338,6.0601994) q[0],q[9];
rx(5.3686332) q[6];
tdg q[4];
cz q[0],q[2];
cu3(4.6147989,5.3464724,5.3476185) q[7],q[6];
u3(4.633599,2.7300654,5.6742982) q[9];
h q[5];
ccx q[1],q[8],q[3];
y q[4];
h q[3];
ccx q[8],q[1],q[5];
cu3(4.8140034,3.3444041,3.756439) q[2],q[6];
cswap q[0],q[4],q[9];
rx(5.5879549) q[7];
ccx q[2],q[8],q[5];
ccx q[7],q[9],q[4];
cswap q[0],q[1],q[3];
u2(1.2106974,0.74106024) q[6];
cswap q[6],q[0],q[9];
id q[2];
crz(2.6587148) q[5],q[1];
ccx q[4],q[8],q[3];
s q[7];
swap q[1],q[2];
sdg q[7];
cu1(0.13227805) q[0],q[3];
ccx q[4],q[9],q[5];
rzz(1.5543221) q[8],q[6];
cz q[1],q[7];
cswap q[0],q[9],q[2];
sdg q[6];
ccx q[3],q[8],q[5];
id q[4];
ccx q[9],q[2],q[1];
ccx q[6],q[7],q[4];
cswap q[5],q[3],q[0];
ry(5.7537806) q[8];
swap q[5],q[3];
cswap q[8],q[6],q[2];
y q[7];
cswap q[0],q[4],q[9];
u2(2.5839349,5.2221319) q[1];
ccx q[3],q[5],q[1];
rzz(1.2869559) q[4],q[6];
cswap q[8],q[0],q[2];
rzz(0.43703806) q[9],q[7];
cy q[7],q[2];
ccx q[1],q[9],q[0];
swap q[5],q[6];
swap q[3],q[4];
h q[8];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];