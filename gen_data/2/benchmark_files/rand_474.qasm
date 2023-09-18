OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[3],q[2],q[4];
y q[0];
ccx q[5],q[8],q[1];
cx q[7],q[6];
s q[9];
ccx q[7],q[1],q[2];
x q[3];
cx q[5],q[4];
ccx q[6],q[0],q[8];
z q[9];
u2(5.4275484,0.36699625) q[6];
ch q[7],q[8];
y q[9];
swap q[3],q[5];
rzz(3.1488595) q[1],q[4];
rz(5.4514727) q[2];
t q[0];
cswap q[1],q[4],q[6];
z q[5];
ccx q[0],q[3],q[9];
cu1(5.6486367) q[7],q[8];
ry(1.4603765) q[2];
cy q[0],q[5];
cswap q[3],q[2],q[4];
crz(1.2794638) q[6],q[7];
ccx q[8],q[1],q[9];
ccx q[6],q[3],q[9];
y q[8];
ch q[7],q[1];
cswap q[5],q[0],q[4];
u3(5.4489339,3.667139,5.8622147) q[2];
cswap q[6],q[4],q[8];
ccx q[0],q[3],q[2];
h q[7];
h q[9];
u3(5.4504057,3.1821176,3.7686221) q[1];
h q[5];
cswap q[7],q[3],q[6];
tdg q[8];
u2(2.9818084,2.2706692) q[2];
cswap q[5],q[0],q[4];
ry(0.17703061) q[9];
u2(5.096306,3.0588069) q[1];
cswap q[3],q[8],q[6];
rzz(3.3551735) q[0],q[7];
t q[5];
crz(3.9073367) q[9],q[4];
rzz(5.9455356) q[1],q[2];
cswap q[7],q[8],q[1];
cu3(4.6302588,2.6725846,4.5393921) q[4],q[6];
z q[2];
rz(4.332807) q[0];
crz(3.8773346) q[5],q[3];
id q[9];
ccx q[8],q[4],q[6];
ch q[7],q[0];
ccx q[1],q[2],q[5];
y q[9];
ry(6.0455874) q[3];
cswap q[0],q[1],q[8];
sdg q[4];
ccx q[9],q[2],q[3];
ccx q[6],q[5],q[7];
ccx q[7],q[6],q[8];
cswap q[9],q[2],q[4];
ch q[0],q[1];
cy q[3],q[5];
x q[1];
sdg q[0];
z q[5];
rz(4.7466807) q[8];
ccx q[3],q[7],q[6];
cswap q[9],q[4],q[2];
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