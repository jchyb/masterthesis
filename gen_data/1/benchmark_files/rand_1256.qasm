OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[5];
cswap q[8],q[2],q[0];
ccx q[7],q[1],q[4];
cswap q[9],q[3],q[6];
u2(2.8161024,1.9256457) q[4];
cu3(4.5775738,1.3362035,5.0955559) q[3],q[2];
cswap q[6],q[7],q[0];
rz(2.1642383) q[5];
u3(5.7354333,5.5476206,1.7386567) q[1];
s q[8];
ry(1.6298105) q[9];
cswap q[1],q[3],q[8];
ccx q[7],q[0],q[9];
rx(2.8358613) q[5];
cy q[6],q[4];
id q[2];
cswap q[7],q[3],q[8];
cswap q[4],q[1],q[6];
cswap q[5],q[9],q[2];
z q[0];
cu3(5.7698682,4.2513963,2.7461328) q[1],q[2];
ccx q[3],q[4],q[8];
s q[5];
cswap q[6],q[7],q[0];
u2(5.705504,5.5159617) q[9];
ccx q[1],q[0],q[4];
cu3(5.2162945,5.6074404,1.6253866) q[6],q[2];
cswap q[9],q[3],q[5];
ch q[7],q[8];
u3(2.9947109,6.2715206,3.2784521) q[2];
id q[9];
t q[7];
x q[3];
ccx q[1],q[4],q[5];
sdg q[8];
cu3(0.52416678,1.6245486,6.0666781) q[6],q[0];
ccx q[9],q[7],q[0];
rzz(2.647016) q[2],q[3];
cu3(4.4533714,4.8632305,2.2866666) q[1],q[6];
cx q[4],q[8];
s q[5];
cx q[3],q[4];
cswap q[2],q[0],q[9];
cswap q[1],q[5],q[8];
swap q[6],q[7];
s q[2];
rzz(5.0341163) q[4],q[1];
id q[9];
crz(6.1869729) q[8],q[6];
rx(5.8568802) q[7];
sdg q[5];
rzz(1.711106) q[0],q[3];
cx q[0],q[7];
cu3(2.2446715,3.0353417,4.3634851) q[9],q[6];
ccx q[1],q[8],q[2];
u1(1.7547086) q[4];
rzz(2.3443147) q[5],q[3];
t q[9];
cx q[8],q[6];
t q[0];
ccx q[4],q[7],q[3];
y q[5];
cu1(2.1827212) q[1],q[2];
crz(2.9212388) q[5],q[8];
z q[2];
ccx q[3],q[9],q[7];
cz q[0],q[4];
cu3(5.059859,2.2385966,1.4743309) q[6],q[1];
cswap q[6],q[3],q[8];
u1(3.5743506) q[5];
id q[0];
ch q[4],q[7];
ccx q[1],q[2],q[9];
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