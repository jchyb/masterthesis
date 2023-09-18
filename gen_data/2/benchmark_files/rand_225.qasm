OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[9],q[4];
rz(4.0888366) q[6];
u2(1.3974274,0.32766289) q[3];
cx q[2],q[8];
x q[5];
x q[7];
h q[1];
cz q[2],q[7];
ccx q[1],q[6],q[4];
rz(2.2951636) q[0];
rx(4.8897217) q[8];
x q[5];
swap q[3],q[9];
rzz(5.0978814) q[8],q[9];
y q[7];
crz(2.5824974) q[5],q[0];
cswap q[4],q[6],q[2];
h q[1];
rx(3.2943969) q[3];
cswap q[2],q[9],q[4];
cz q[3],q[5];
cu3(1.5968637,4.0445761,1.1565917) q[6],q[1];
ccx q[8],q[7],q[0];
crz(4.812844) q[6],q[7];
cswap q[4],q[5],q[2];
id q[8];
ccx q[3],q[9],q[0];
ry(1.0220029) q[1];
ccx q[9],q[7],q[6];
u3(5.8297262,0.51071316,5.3914803) q[3];
rz(3.2491252) q[8];
cswap q[1],q[2],q[0];
cx q[5],q[4];
s q[9];
rzz(4.9137151) q[8],q[4];
rz(1.410406) q[6];
ccx q[5],q[0],q[2];
cx q[1],q[3];
rx(3.2774301) q[7];
ry(4.3523025) q[0];
cx q[5],q[1];
ccx q[2],q[7],q[8];
sdg q[4];
tdg q[9];
x q[6];
tdg q[3];
cswap q[1],q[5],q[4];
crz(2.8552631) q[9],q[0];
swap q[6],q[7];
cswap q[3],q[8],q[2];
ccx q[3],q[9],q[7];
u1(0.3601655) q[6];
tdg q[2];
s q[1];
sdg q[5];
cswap q[4],q[0],q[8];
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