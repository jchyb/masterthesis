OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(4.5538145) q[1],q[2];
sdg q[5];
ccx q[9],q[8],q[6];
cswap q[0],q[4],q[3];
u1(0.21299369) q[7];
cx q[2],q[6];
swap q[0],q[4];
ccx q[5],q[1],q[7];
cswap q[9],q[8],q[3];
cu3(5.4439299,4.7283051,2.8115511) q[8],q[2];
cswap q[6],q[1],q[7];
cswap q[0],q[4],q[9];
t q[3];
t q[5];
cx q[3],q[7];
rzz(2.7813041) q[1],q[4];
swap q[6],q[9];
cu3(1.0193359,0.11939255,3.0789427) q[8],q[2];
u3(4.7478873,2.1253977,0.77118979) q[0];
ry(0.42012177) q[5];
rz(5.0064924) q[5];
cswap q[7],q[2],q[6];
rzz(0.70749803) q[8],q[0];
ccx q[1],q[9],q[3];
u2(1.0719185,4.7742048) q[4];
rx(2.4046507) q[9];
ccx q[5],q[4],q[3];
cx q[1],q[8];
id q[6];
cx q[0],q[2];
rx(2.8700667) q[7];
ry(5.5687468) q[8];
ccx q[1],q[9],q[4];
cswap q[7],q[6],q[3];
u3(4.6994918,6.0450724,0.62894903) q[0];
cz q[5],q[2];
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