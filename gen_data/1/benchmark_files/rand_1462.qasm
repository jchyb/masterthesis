OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[4],q[7],q[6];
rzz(1.7891681) q[0],q[8];
h q[2];
cy q[3],q[9];
rzz(2.1832906) q[5],q[1];
id q[7];
cu3(4.0647687,0.78066832,2.046103) q[4],q[8];
cu1(3.1012066) q[0],q[1];
sdg q[2];
cswap q[9],q[5],q[3];
ry(0.99084076) q[6];
cu1(5.3171503) q[4],q[5];
u2(4.9402793,4.5986153) q[1];
cswap q[0],q[8],q[7];
u3(0.14962264,5.7895628,4.8339219) q[9];
y q[6];
rz(1.6341284) q[3];
sdg q[2];
ccx q[6],q[8],q[9];
crz(3.7037488) q[1],q[0];
rzz(5.3460706) q[2],q[3];
cswap q[5],q[4],q[7];
ch q[8],q[9];
u3(3.9611417,0.071521238,0.78913544) q[7];
cu3(6.2829576,2.0017554,6.1573094) q[3],q[6];
rz(3.5308391) q[5];
ccx q[4],q[0],q[2];
h q[1];
cswap q[1],q[0],q[6];
x q[7];
tdg q[3];
cz q[4],q[2];
ccx q[9],q[8],q[5];
rzz(4.9851359) q[6],q[4];
sdg q[0];
crz(1.7315512) q[2],q[1];
cswap q[5],q[8],q[7];
u1(3.7342488) q[3];
sdg q[9];
ccx q[4],q[2],q[0];
u3(0.50781243,1.2299272,1.625224) q[5];
cz q[6],q[3];
tdg q[8];
rx(4.0928032) q[7];
cy q[9],q[1];
ch q[2],q[7];
rzz(3.2777485) q[3],q[5];
t q[8];
h q[0];
s q[6];
rzz(2.8628315) q[4],q[9];
rx(0.5451921) q[1];
id q[1];
id q[8];
cswap q[9],q[3],q[6];
u3(2.6074365,1.8941237,3.6907387) q[5];
s q[2];
id q[7];
cy q[0],q[4];
sdg q[7];
ccx q[2],q[6],q[3];
ccx q[8],q[4],q[9];
ccx q[0],q[1],q[5];
cy q[2],q[9];
ch q[0],q[3];
ccx q[5],q[1],q[8];
rzz(1.604162) q[7],q[6];
u1(4.284528) q[4];
cswap q[9],q[8],q[0];
ccx q[6],q[5],q[2];
cswap q[1],q[4],q[3];
ry(4.2646742) q[7];
x q[3];
cu3(2.7957707,1.7246281,2.8540628) q[2],q[8];
z q[4];
tdg q[9];
sdg q[1];
cswap q[6],q[0],q[5];
u1(0.151343) q[7];
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