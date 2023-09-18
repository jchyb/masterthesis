OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[0],q[6];
u3(5.8684888,5.2093553,0.61792942) q[9];
rx(3.5970817) q[1];
cswap q[2],q[5],q[3];
sdg q[8];
u1(5.3277059) q[7];
rx(3.3564772) q[2];
cu1(2.4271516) q[3],q[5];
s q[6];
u3(2.6779043,0.65238514,3.1848014) q[7];
cswap q[8],q[4],q[1];
h q[0];
tdg q[9];
u1(4.0536979) q[7];
rz(5.0263807) q[0];
cu3(4.3111017,2.2747962,0.94369898) q[9],q[5];
rzz(0.84050222) q[4],q[2];
u3(1.5642437,2.1105894,1.7985984) q[6];
cu3(0.73623603,1.1900654,5.3134924) q[3],q[1];
s q[8];
u2(5.9946096,1.497272) q[0];
h q[1];
u2(5.4150906,5.2839494) q[8];
cu1(0.79168923) q[9],q[5];
swap q[2],q[7];
cswap q[6],q[4],q[3];
x q[5];
u2(5.9131267,5.0860617) q[2];
swap q[9],q[1];
cu1(4.5070655) q[4],q[3];
cswap q[7],q[0],q[8];
id q[6];
ccx q[7],q[9],q[8];
rz(2.7044955) q[4];
ccx q[6],q[5],q[0];
t q[2];
swap q[1],q[3];
ccx q[5],q[9],q[7];
crz(4.0289684) q[0],q[1];
cswap q[8],q[2],q[6];
tdg q[3];
x q[4];
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