OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[3],q[7],q[1];
ry(2.9817505) q[2];
cswap q[4],q[9],q[5];
ccx q[8],q[6],q[0];
ccx q[1],q[8],q[2];
swap q[5],q[6];
h q[4];
u2(4.3964817,5.1424274) q[7];
id q[3];
swap q[0],q[9];
crz(6.2396506) q[2],q[3];
rx(1.463699) q[4];
sdg q[0];
rzz(5.223648) q[5],q[7];
ch q[8],q[9];
id q[1];
sdg q[6];
ccx q[9],q[2],q[1];
tdg q[8];
cswap q[0],q[6],q[5];
y q[7];
cu1(1.2765954) q[3],q[4];
crz(0.55492237) q[1],q[8];
cz q[5],q[2];
ccx q[6],q[3],q[4];
ch q[0],q[9];
u3(2.8397658,2.1021997,4.5110527) q[7];
ccx q[4],q[9],q[3];
ch q[5],q[0];
ccx q[6],q[7],q[1];
cy q[8],q[2];
ccx q[7],q[1],q[0];
ccx q[3],q[5],q[4];
cu1(3.0014131) q[8],q[2];
rz(4.5903253) q[9];
u2(4.1117184,2.6872602) q[6];
ccx q[6],q[8],q[7];
ccx q[4],q[9],q[3];
rz(3.7302548) q[1];
cswap q[0],q[2],q[5];
ccx q[9],q[1],q[5];
id q[2];
ry(1.6562575) q[6];
cswap q[0],q[7],q[4];
crz(0.89642168) q[3],q[8];
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