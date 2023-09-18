OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[7],q[0];
swap q[1],q[8];
sdg q[6];
cswap q[3],q[5],q[2];
u2(3.9408709,2.8547022) q[9];
cu3(2.4090194,3.006339,4.3159466) q[0],q[7];
ccx q[5],q[6],q[1];
ccx q[3],q[8],q[2];
u2(1.0016669,4.6930884) q[9];
x q[4];
u2(4.8433254,0.53575437) q[8];
ccx q[9],q[0],q[5];
ccx q[7],q[2],q[1];
cu1(3.6460038) q[6],q[3];
u3(0.93903179,1.258389,4.2927689) q[4];
ch q[7],q[2];
cswap q[5],q[8],q[6];
rz(4.5122168) q[0];
ch q[4],q[3];
rz(1.0196199) q[1];
ry(1.9068586) q[9];
t q[3];
rz(5.1420585) q[0];
cx q[1],q[7];
id q[9];
ccx q[6],q[5],q[2];
s q[8];
id q[4];
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