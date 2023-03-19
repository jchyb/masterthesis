OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
ry(2.9122881) q[2];
cy q[0],q[4];
cu1(5.9413103) q[5],q[3];
h q[6];
x q[1];
x q[1];
z q[3];
rzz(4.0833196) q[2],q[5];
cswap q[6],q[0],q[4];
ccx q[5],q[0],q[3];
cz q[6],q[2];
s q[1];
u3(5.7488175,5.1440204,0.7975699) q[4];
y q[3];
cu1(0.54157564) q[5],q[1];
ccx q[4],q[0],q[6];
rx(4.5990818) q[2];
cz q[4],q[5];
ccx q[2],q[6],q[3];
ch q[0],q[1];
cz q[2],q[1];
ccx q[6],q[5],q[0];
ch q[4],q[3];
x q[2];
cswap q[0],q[5],q[6];
cswap q[3],q[1],q[4];
ry(5.7219584) q[2];
cy q[4],q[5];
cu1(4.3817888) q[0],q[1];
crz(3.7792453) q[6],q[3];
u1(2.2718655) q[4];
ccx q[2],q[0],q[3];
ccx q[6],q[1],q[5];
crz(3.0324816) q[3],q[2];
cu1(4.45961) q[4],q[1];
ch q[5],q[6];
s q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
