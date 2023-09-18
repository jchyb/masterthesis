OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(0.03040474,6.2627732,0.57139899) q[8];
cswap q[9],q[6],q[5];
u2(4.6828452,2.6597248) q[7];
ccx q[1],q[4],q[2];
id q[3];
z q[0];
cswap q[8],q[0],q[2];
ccx q[6],q[5],q[3];
cswap q[1],q[9],q[7];
h q[4];
ccx q[4],q[1],q[9];
ccx q[6],q[7],q[8];
x q[2];
ccx q[0],q[5],q[3];
swap q[6],q[2];
cswap q[4],q[7],q[1];
rx(3.2789812) q[5];
ccx q[0],q[3],q[8];
rz(2.8753272) q[9];
cy q[0],q[3];
ccx q[9],q[6],q[7];
cx q[8],q[4];
cu1(4.4302529) q[5],q[1];
u3(0.75451911,2.1800315,1.3521192) q[2];
z q[5];
swap q[0],q[6];
cu1(0.66190681) q[9],q[8];
swap q[7],q[2];
cswap q[4],q[3],q[1];
cz q[2],q[1];
s q[7];
cx q[6],q[8];
u2(3.0758522,3.2506468) q[5];
y q[9];
swap q[3],q[4];
u3(3.8403834,1.5142226,2.1924275) q[0];
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