OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(6.1719927) q[2],q[1];
rz(5.4250196) q[9];
cu1(3.5990573) q[4],q[7];
ccx q[5],q[3],q[8];
sdg q[6];
id q[0];
ccx q[9],q[5],q[2];
ccx q[1],q[7],q[0];
ccx q[8],q[3],q[6];
rz(5.6340966) q[4];
tdg q[0];
u3(0.24068663,5.8844935,0.0025614218) q[4];
h q[5];
ch q[1],q[7];
cswap q[6],q[3],q[9];
rz(2.2206315) q[2];
u2(0.56166936,2.3961423) q[8];
cu1(4.1480963) q[4],q[0];
ch q[6],q[7];
id q[1];
crz(3.5976126) q[9],q[2];
ccx q[8],q[5],q[3];
t q[7];
ch q[4],q[2];
crz(5.4981479) q[0],q[8];
ccx q[9],q[1],q[6];
x q[5];
rx(3.8012595) q[3];
ch q[4],q[2];
s q[1];
h q[7];
cz q[0],q[3];
cx q[6],q[9];
tdg q[5];
u3(2.9224515,3.0473602,5.6888988) q[8];
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