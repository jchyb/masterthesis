OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[8];
swap q[4],q[0];
u3(5.2347808,0.88248475,2.7236731) q[1];
s q[2];
swap q[6],q[5];
h q[7];
cx q[3],q[9];
ry(5.8437452) q[1];
ch q[3],q[6];
z q[8];
ccx q[0],q[2],q[9];
ccx q[5],q[7],q[4];
cswap q[9],q[3],q[6];
cswap q[4],q[7],q[5];
cu3(3.5352357,4.5043104,3.2580774) q[2],q[1];
u1(5.0933256) q[8];
y q[0];
h q[1];
ccx q[7],q[2],q[4];
cy q[9],q[5];
ccx q[3],q[8],q[0];
sdg q[6];
cswap q[0],q[7],q[3];
rz(3.0617696) q[4];
sdg q[6];
ccx q[5],q[8],q[1];
rzz(1.1157361) q[9],q[2];
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