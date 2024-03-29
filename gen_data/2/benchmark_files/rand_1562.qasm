OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(5.3566516) q[5];
tdg q[3];
cy q[1],q[4];
ccx q[6],q[8],q[9];
ccx q[2],q[0],q[7];
cu1(4.8529463) q[9],q[3];
ccx q[5],q[8],q[6];
sdg q[1];
cswap q[0],q[4],q[7];
t q[2];
ccx q[2],q[3],q[8];
cswap q[6],q[5],q[1];
ccx q[0],q[4],q[9];
rx(1.1997127) q[7];
cswap q[8],q[3],q[9];
cy q[7],q[6];
u1(5.6345559) q[2];
ch q[4],q[0];
swap q[5],q[1];
cswap q[3],q[0],q[6];
tdg q[9];
cswap q[7],q[1],q[2];
ccx q[5],q[8],q[4];
s q[7];
cswap q[0],q[2],q[6];
cswap q[8],q[1],q[4];
cswap q[3],q[9],q[5];
sdg q[4];
u3(3.3791996,0.80347186,4.7284739) q[1];
cx q[2],q[0];
cswap q[6],q[9],q[8];
ccx q[5],q[7],q[3];
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
