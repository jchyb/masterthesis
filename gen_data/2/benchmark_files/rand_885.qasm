OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[1],q[3];
crz(1.5797804) q[4],q[0];
cx q[5],q[7];
cx q[6],q[2];
h q[9];
ccx q[8],q[7],q[0];
id q[9];
cy q[5],q[2];
ccx q[1],q[4],q[6];
u3(4.5364748,0.74977971,4.0691242) q[3];
cswap q[1],q[7],q[2];
ch q[5],q[6];
rx(6.0207259) q[0];
cswap q[3],q[8],q[9];
z q[4];
ccx q[8],q[1],q[9];
ccx q[5],q[7],q[0];
cy q[3],q[2];
cy q[4],q[6];
ry(3.9242263) q[4];
ry(2.0375657) q[9];
ccx q[7],q[6],q[3];
ccx q[0],q[1],q[2];
u3(3.3286823,1.330767,5.7911054) q[8];
t q[5];
ry(5.3954678) q[4];
id q[8];
h q[3];
sdg q[7];
cswap q[5],q[1],q[0];
cx q[2],q[9];
t q[6];
cswap q[9],q[6],q[1];
cswap q[8],q[7],q[0];
t q[2];
s q[4];
cu3(1.4967857,1.6889721,5.0885246) q[5],q[3];
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