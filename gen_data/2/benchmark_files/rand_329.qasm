OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[3],q[9],q[8];
ccx q[6],q[5],q[2];
rz(2.1159011) q[1];
rzz(0.24143645) q[0],q[7];
u3(2.5414566,2.8765762,6.2521088) q[4];
y q[6];
ccx q[8],q[5],q[0];
cswap q[3],q[4],q[1];
cz q[2],q[7];
z q[9];
ccx q[9],q[1],q[3];
h q[5];
ch q[4],q[7];
rzz(0.71965171) q[6],q[0];
cx q[8],q[2];
cswap q[5],q[7],q[2];
ccx q[6],q[3],q[0];
tdg q[4];
crz(0.67689978) q[1],q[8];
u3(0.87928665,1.6400854,4.8561621) q[9];
ch q[0],q[1];
ccx q[9],q[5],q[2];
h q[3];
cu3(1.4814239,1.8003602,3.9263863) q[4],q[6];
rzz(1.387118) q[8],q[7];
ccx q[6],q[9],q[1];
ccx q[3],q[0],q[4];
swap q[8],q[2];
swap q[7],q[5];
ccx q[0],q[4],q[1];
sdg q[8];
s q[9];
cx q[5],q[3];
swap q[7],q[2];
rx(3.6196639) q[6];
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