OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[9];
ch q[7],q[0];
rzz(3.0648908) q[5],q[3];
cswap q[4],q[8],q[6];
s q[2];
y q[1];
u1(4.1123174) q[8];
cy q[4],q[0];
ch q[2],q[5];
rzz(1.0963237) q[1],q[7];
t q[3];
cu1(5.0794786) q[9],q[6];
cswap q[7],q[0],q[1];
swap q[3],q[8];
u1(4.1208324) q[5];
sdg q[4];
s q[6];
ry(1.3200045) q[9];
u2(5.7637108,4.9956639) q[2];
sdg q[3];
cswap q[0],q[8],q[7];
z q[9];
cswap q[6],q[4],q[5];
y q[1];
z q[2];
swap q[1],q[2];
rzz(5.3765639) q[9],q[5];
ccx q[3],q[6],q[4];
cy q[0],q[7];
ry(5.4164639) q[8];
ccx q[2],q[9],q[8];
cx q[1],q[0];
cswap q[6],q[5],q[4];
u2(0.77058124,4.0157062) q[3];
y q[7];
cswap q[4],q[9],q[1];
cswap q[3],q[6],q[7];
crz(5.2629567) q[0],q[8];
cx q[5],q[2];
u1(5.462479) q[7];
ccx q[3],q[6],q[2];
cswap q[9],q[8],q[4];
ccx q[0],q[1],q[5];
ccx q[1],q[8],q[2];
ccx q[4],q[7],q[5];
cy q[0],q[6];
u3(3.2193889,0.11208893,1.0027231) q[9];
id q[3];
ry(3.4796786) q[0];
cz q[1],q[9];
ccx q[5],q[3],q[2];
ccx q[6],q[8],q[4];
u1(2.7308988) q[7];
ccx q[9],q[5],q[7];
cswap q[2],q[0],q[8];
rx(2.5381271) q[1];
ccx q[3],q[6],q[4];
ccx q[8],q[7],q[5];
cswap q[2],q[3],q[1];
crz(4.6290537) q[9],q[6];
id q[4];
y q[0];
ccx q[0],q[9],q[4];
cu1(1.5220363) q[3],q[1];
x q[2];
cu3(3.0762521,5.4348252,3.5007687) q[5],q[6];
cy q[7],q[8];
cz q[3],q[6];
ch q[4],q[8];
crz(1.5555884) q[1],q[2];
cu3(3.1919147,1.4516526,4.0747239) q[0],q[9];
swap q[7],q[5];
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