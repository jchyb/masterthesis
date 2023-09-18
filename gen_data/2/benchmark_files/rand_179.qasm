OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(5.4634407) q[2];
ccx q[6],q[4],q[1];
ccx q[7],q[3],q[9];
cswap q[0],q[8],q[5];
x q[6];
cx q[1],q[3];
cswap q[9],q[7],q[4];
ccx q[8],q[2],q[5];
s q[0];
crz(2.7478999) q[0],q[6];
swap q[9],q[7];
u3(3.2679443,3.6613566,4.1508059) q[1];
cx q[4],q[2];
ccx q[5],q[3],q[8];
ry(5.2276064) q[1];
rx(2.2103762) q[7];
swap q[9],q[6];
ccx q[8],q[5],q[3];
tdg q[0];
cy q[2],q[4];
h q[1];
cswap q[2],q[4],q[3];
z q[9];
cswap q[5],q[8],q[7];
s q[0];
sdg q[6];
rz(1.3061065) q[4];
cx q[0],q[5];
cu1(5.922772) q[9],q[3];
cu3(0.80171297,0.072650026,0.34687837) q[8],q[2];
u1(3.4713634) q[6];
cu1(3.6391224) q[1],q[7];
cy q[0],q[3];
cz q[6],q[8];
cu3(0.96303309,0.68222825,2.2927966) q[4],q[2];
ch q[9],q[1];
rz(3.4641384) q[5];
u3(3.2847771,5.0938725,2.6465988) q[7];
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