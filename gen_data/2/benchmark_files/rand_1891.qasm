OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[3],q[2];
ccx q[5],q[9],q[4];
cswap q[8],q[0],q[6];
u1(0.71970673) q[7];
z q[1];
ccx q[1],q[6],q[9];
cswap q[8],q[5],q[3];
h q[7];
id q[4];
swap q[2],q[0];
ccx q[9],q[1],q[7];
cswap q[2],q[0],q[6];
cy q[4],q[5];
ch q[8],q[3];
cswap q[1],q[2],q[8];
rx(4.4568031) q[0];
ccx q[4],q[7],q[5];
ccx q[6],q[3],q[9];
ccx q[9],q[6],q[3];
sdg q[8];
cu1(4.7501271) q[5],q[1];
u3(0.30325515,2.8896708,0.43795386) q[0];
ccx q[7],q[2],q[4];
rzz(5.4421889) q[0],q[6];
u2(6.1863334,2.7143108) q[3];
rz(0.28181316) q[1];
sdg q[9];
cswap q[7],q[5],q[2];
cu1(5.5038234) q[8],q[4];
tdg q[0];
cy q[1],q[6];
z q[5];
cz q[9],q[4];
x q[2];
u1(5.1368388) q[8];
u2(6.2081643,6.095284) q[3];
u1(5.0101449) q[7];
ccx q[0],q[2],q[8];
ccx q[4],q[6],q[5];
crz(5.0020813) q[7],q[1];
u3(0.64835193,6.1794439,1.6313734) q[9];
tdg q[3];
u2(0.17337065,5.0866584) q[9];
ch q[4],q[6];
ry(1.1247136) q[1];
cswap q[2],q[7],q[5];
ccx q[0],q[8],q[3];
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