OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cswap q[3],q[4],q[2];
cswap q[9],q[12],q[11];
cswap q[5],q[0],q[6];
cu1(4.2994619) q[8],q[7];
h q[10];
u3(0.27069163,2.5979345,6.1277116) q[1];
rz(1.2807207) q[2];
ccx q[0],q[6],q[4];
ccx q[9],q[3],q[12];
cswap q[1],q[5],q[7];
ccx q[11],q[8],q[10];
cz q[8],q[6];
u1(0.45373742) q[1];
u3(1.260636,2.322594,1.6383274) q[11];
cy q[12],q[5];
ccx q[3],q[4],q[7];
ry(5.8221785) q[0];
cu3(1.3664203,4.7569447,6.0891616) q[10],q[2];
u3(0.48599416,2.084127,3.3968657) q[9];
ccx q[11],q[8],q[2];
ch q[7],q[4];
cswap q[12],q[6],q[9];
crz(2.2201726) q[1],q[10];
swap q[5],q[0];
tdg q[3];
ccx q[8],q[3],q[9];
y q[2];
cx q[6],q[0];
cy q[11],q[5];
cx q[1],q[7];
cu3(1.0064498,4.4275794,2.4466493) q[10],q[4];
s q[12];
ccx q[7],q[2],q[4];
cz q[12],q[1];
cswap q[8],q[11],q[9];
cswap q[6],q[0],q[5];
z q[3];
x q[10];
ccx q[0],q[12],q[2];
cy q[10],q[4];
ccx q[1],q[11],q[7];
crz(5.7871498) q[5],q[6];
cy q[3],q[8];
t q[9];
u2(4.1465327,2.181957) q[0];
crz(3.5213734) q[2],q[9];
sdg q[11];
z q[12];
rz(2.9027036) q[10];
cu3(2.1893359,2.2358779,6.1427075) q[4],q[7];
rzz(1.9440728) q[6],q[1];
z q[8];
h q[3];
tdg q[5];
t q[7];
u3(4.224721,0.6480676,2.7546212) q[3];
u1(5.762691) q[5];
cu1(1.1323947) q[4],q[2];
cswap q[0],q[12],q[9];
cz q[6],q[11];
tdg q[10];
cy q[8],q[1];
ccx q[10],q[5],q[6];
u1(5.425346) q[9];
cswap q[0],q[4],q[7];
cswap q[1],q[2],q[8];
cswap q[12],q[3],q[11];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
