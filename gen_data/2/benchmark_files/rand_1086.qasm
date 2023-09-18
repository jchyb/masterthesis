OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[5],q[8],q[6];
ccx q[3],q[2],q[1];
u2(4.7617294,2.2210572) q[7];
cswap q[9],q[0],q[4];
cx q[0],q[2];
cswap q[1],q[7],q[9];
cswap q[4],q[5],q[8];
swap q[3],q[6];
tdg q[9];
cu3(5.0513436,1.5518231,4.4190868) q[2],q[5];
crz(0.14551267) q[3],q[0];
tdg q[4];
rzz(5.1752582) q[1],q[6];
sdg q[7];
u2(4.1910152,3.5544285) q[8];
crz(5.0241033) q[6],q[0];
u2(0.057134561,5.6271336) q[9];
rzz(2.8539613) q[5],q[3];
cu1(1.2543367) q[2],q[7];
t q[8];
ch q[1],q[4];
ccx q[8],q[6],q[1];
y q[2];
crz(3.6311136) q[3],q[7];
ch q[4],q[0];
u2(0.91010628,4.6659419) q[5];
z q[9];
cy q[8],q[0];
cswap q[4],q[7],q[1];
cu3(4.5889781,0.56267073,2.7379044) q[9],q[5];
u3(3.8469935,2.6985372,1.6021692) q[6];
u2(1.1778163,0.45857532) q[2];
id q[3];
cx q[1],q[8];
cswap q[9],q[3],q[5];
ccx q[7],q[2],q[4];
cy q[6],q[0];
t q[2];
ccx q[0],q[6],q[5];
ch q[8],q[9];
z q[3];
ccx q[1],q[7],q[4];
id q[7];
cz q[1],q[5];
ccx q[2],q[6],q[0];
cx q[8],q[4];
swap q[3],q[9];
rz(3.3793164) q[6];
cswap q[2],q[4],q[1];
u1(2.9360118) q[5];
cswap q[0],q[7],q[8];
y q[3];
u3(4.9625127,2.0029955,1.5054312) q[9];
crz(2.8896662) q[7],q[2];
ccx q[0],q[3],q[4];
ccx q[8],q[5],q[1];
s q[6];
sdg q[9];
cu1(4.1011056) q[9],q[4];
rzz(4.9224748) q[6],q[2];
h q[5];
cswap q[0],q[7],q[3];
ch q[8],q[1];
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