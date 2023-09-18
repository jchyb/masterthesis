OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[9],q[0];
cswap q[4],q[2],q[8];
x q[5];
ccx q[7],q[1],q[3];
y q[6];
cswap q[3],q[1],q[9];
ch q[8],q[2];
ccx q[4],q[0],q[7];
s q[5];
u1(3.7211876) q[6];
cx q[7],q[5];
ccx q[1],q[9],q[3];
t q[6];
ch q[2],q[8];
rx(2.3052677) q[4];
sdg q[0];
cx q[9],q[2];
rzz(0.76536336) q[7],q[1];
cu1(4.7393727) q[6],q[5];
ccx q[0],q[3],q[4];
u3(5.9392409,1.8298217,0.95846788) q[8];
x q[4];
ccx q[1],q[8],q[3];
cu1(2.561756) q[7],q[5];
cu1(4.1088991) q[9],q[2];
crz(1.2598517) q[6],q[0];
u1(6.1089319) q[2];
s q[9];
cu1(4.0134407) q[8],q[4];
swap q[6],q[1];
ch q[5],q[7];
rx(3.5616056) q[0];
x q[3];
cswap q[5],q[4],q[3];
u3(4.8086199,3.9420249,5.6615155) q[2];
ccx q[0],q[9],q[1];
cu1(6.2559382) q[6],q[8];
id q[7];
ccx q[2],q[1],q[8];
cswap q[7],q[3],q[0];
ccx q[5],q[4],q[6];
y q[9];
h q[5];
z q[8];
ry(5.1613255) q[3];
rx(4.8535737) q[0];
cswap q[7],q[6],q[1];
y q[4];
s q[2];
y q[9];
cswap q[7],q[4],q[8];
t q[5];
cz q[2],q[6];
cu1(6.1041825) q[3],q[1];
u1(0.57802506) q[0];
u1(4.1139981) q[9];
rz(5.6991987) q[8];
ccx q[7],q[9],q[1];
cu3(1.4659517,5.5561903,5.9015137) q[0],q[5];
cswap q[3],q[2],q[6];
rx(6.2513879) q[4];
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