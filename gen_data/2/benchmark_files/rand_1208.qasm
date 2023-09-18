OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[0];
cy q[1],q[2];
u3(1.0878124,2.0541272,4.0236858) q[7];
ccx q[9],q[3],q[4];
h q[6];
cz q[5],q[8];
rzz(4.1979633) q[0],q[9];
cswap q[2],q[7],q[5];
rx(1.1342328) q[1];
ccx q[8],q[3],q[4];
h q[6];
cz q[7],q[8];
rzz(1.3829542) q[2],q[9];
sdg q[5];
ccx q[0],q[3],q[4];
cu1(1.8243658) q[6],q[1];
cy q[2],q[1];
ccx q[3],q[9],q[6];
ch q[5],q[7];
cz q[4],q[0];
u2(1.8911128,1.1618774) q[8];
cswap q[8],q[5],q[0];
cswap q[2],q[9],q[6];
id q[3];
ccx q[4],q[7],q[1];
cswap q[8],q[5],q[1];
cx q[2],q[4];
ccx q[6],q[0],q[3];
cz q[7],q[9];
s q[5];
crz(4.3637921) q[6],q[0];
h q[8];
t q[9];
cswap q[4],q[1],q[2];
cx q[3],q[7];
s q[0];
cy q[2],q[8];
swap q[9],q[1];
swap q[6],q[7];
sdg q[3];
swap q[5],q[4];
ccx q[3],q[8],q[4];
ch q[0],q[2];
crz(5.0393072) q[6],q[5];
u2(5.9425453,0.47162908) q[7];
s q[9];
s q[1];
x q[9];
cx q[2],q[4];
rz(2.7822315) q[5];
u1(0.86384893) q[8];
swap q[6],q[3];
z q[1];
t q[0];
u1(1.1543597) q[7];
crz(0.50156109) q[5],q[6];
ccx q[7],q[8],q[3];
u1(1.1965918) q[0];
crz(2.7304679) q[1],q[2];
swap q[9],q[4];
ry(3.5588131) q[6];
sdg q[2];
cswap q[4],q[8],q[9];
cswap q[0],q[3],q[5];
cu1(1.8239701) q[7],q[1];
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