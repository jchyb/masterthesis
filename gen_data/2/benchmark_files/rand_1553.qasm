OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[4],q[9];
ch q[6],q[0];
ccx q[7],q[8],q[5];
cswap q[1],q[3],q[2];
tdg q[1];
tdg q[9];
cswap q[0],q[5],q[7];
rzz(5.2744165) q[4],q[2];
ry(5.3862355) q[6];
x q[8];
ry(0.4960659) q[3];
cx q[5],q[4];
cswap q[1],q[6],q[8];
ccx q[9],q[0],q[2];
u3(4.0096636,1.9976676,5.6358813) q[3];
sdg q[7];
crz(1.5657362) q[1],q[5];
s q[8];
h q[0];
tdg q[2];
cy q[4],q[3];
u2(2.9424037,1.5191498) q[9];
h q[6];
u1(4.3834928) q[7];
cy q[5],q[8];
rz(5.6542849) q[7];
tdg q[9];
ry(0.7096704) q[4];
cswap q[0],q[1],q[3];
u3(1.1985666,0.87304345,2.5897356) q[2];
s q[6];
crz(5.1061597) q[2],q[5];
cx q[9],q[4];
ccx q[6],q[8],q[1];
rz(6.0167086) q[3];
u3(2.2008205,4.3515553,3.1451856) q[7];
z q[0];
cswap q[0],q[9],q[6];
cswap q[7],q[1],q[3];
x q[4];
u1(4.6451047) q[8];
u3(3.6893721,4.4938359,2.2368197) q[2];
sdg q[5];
cz q[5],q[3];
y q[1];
cswap q[8],q[4],q[7];
rz(1.9281994) q[6];
ry(1.1937521) q[2];
swap q[9],q[0];
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
