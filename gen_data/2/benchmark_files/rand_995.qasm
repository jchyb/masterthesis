OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[8],q[0];
rz(2.9748007) q[9];
crz(1.3208783) q[6],q[4];
t q[3];
ccx q[5],q[2],q[1];
cswap q[7],q[6],q[2];
cswap q[0],q[8],q[5];
s q[1];
ccx q[4],q[9],q[3];
cswap q[8],q[6],q[3];
t q[2];
cswap q[1],q[0],q[4];
x q[7];
cu3(1.2715996,3.0627363,0.10929373) q[5],q[9];
cswap q[3],q[5],q[1];
cx q[6],q[0];
tdg q[8];
t q[4];
z q[9];
rx(3.810276) q[7];
y q[2];
tdg q[1];
cswap q[3],q[8],q[7];
u3(2.5528718,5.04017,2.968373) q[4];
sdg q[0];
u3(5.9032485,5.7003795,5.9688523) q[9];
cz q[6],q[5];
u1(3.2669166) q[2];
cswap q[9],q[4],q[2];
cu1(4.7178882) q[7],q[8];
ch q[0],q[1];
ccx q[5],q[3],q[6];
t q[5];
cswap q[9],q[3],q[2];
cu1(1.7179664) q[0],q[4];
crz(4.3473606) q[1],q[6];
u1(4.4556196) q[8];
rz(1.7717918) q[7];
u3(0.69199307,5.05168,3.2338128) q[8];
ccx q[4],q[7],q[0];
cx q[1],q[5];
ccx q[3],q[9],q[2];
u2(5.1148162,4.5757166) q[6];
u3(5.7414035,2.599816,3.2434207) q[0];
rx(4.6359506) q[7];
crz(3.1028925) q[1],q[3];
cswap q[8],q[4],q[2];
cz q[9],q[5];
s q[6];
cz q[7],q[5];
ccx q[4],q[3],q[1];
u1(6.1184936) q[0];
u2(1.1414235,4.6690931) q[6];
cswap q[2],q[8],q[9];
cswap q[6],q[9],q[0];
x q[5];
ccx q[1],q[2],q[8];
cy q[7],q[3];
rz(5.5608044) q[4];
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