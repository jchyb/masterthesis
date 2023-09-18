OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(1.0363591) q[8];
ccx q[0],q[4],q[3];
t q[1];
cx q[6],q[2];
ccx q[5],q[7],q[9];
ccx q[4],q[2],q[1];
cx q[0],q[7];
cswap q[9],q[3],q[6];
cu3(4.2701241,5.7061868,5.1868561) q[5],q[8];
cz q[5],q[9];
cy q[6],q[2];
cswap q[3],q[8],q[7];
sdg q[1];
z q[0];
sdg q[4];
y q[8];
crz(5.7888888) q[3],q[1];
cswap q[7],q[9],q[2];
cswap q[4],q[0],q[6];
rx(3.4733199) q[5];
rzz(3.2084621) q[6],q[3];
ccx q[0],q[1],q[9];
crz(4.3251959) q[5],q[8];
sdg q[2];
cu1(5.1750271) q[4],q[7];
sdg q[3];
cx q[2],q[4];
u2(0.62299611,2.0666928) q[0];
t q[8];
ccx q[7],q[1],q[6];
cu1(2.4446183) q[9],q[5];
z q[6];
swap q[0],q[1];
cswap q[3],q[8],q[5];
ry(1.4581313) q[2];
ry(3.8369315) q[7];
crz(2.3231895) q[9],q[4];
cswap q[8],q[4],q[6];
ch q[5],q[9];
u3(2.0759935,1.7088494,3.2472262) q[3];
cz q[1],q[2];
h q[7];
ry(2.8402905) q[0];
cu3(4.1806446,0.9601274,0.56171642) q[3],q[7];
cswap q[9],q[5],q[6];
z q[8];
s q[0];
cx q[1],q[2];
sdg q[4];
ccx q[5],q[3],q[0];
cswap q[6],q[8],q[7];
ccx q[1],q[2],q[9];
t q[4];
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