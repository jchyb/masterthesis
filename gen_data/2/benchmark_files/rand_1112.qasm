OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[6],q[7];
ch q[4],q[2];
x q[0];
ccx q[9],q[3],q[1];
ch q[8],q[5];
cswap q[1],q[6],q[5];
ccx q[9],q[8],q[3];
s q[2];
cz q[0],q[4];
u2(4.3360631,1.9037341) q[7];
cu3(3.8772368,4.1498824,5.1221797) q[3],q[9];
ccx q[8],q[2],q[6];
swap q[7],q[1];
cx q[0],q[4];
y q[5];
u3(2.9927393,2.44523,4.7565652) q[8];
sdg q[3];
ry(0.72799667) q[5];
ccx q[2],q[9],q[1];
ry(5.8763415) q[7];
swap q[0],q[6];
u2(5.2872391,0.97712956) q[4];
y q[9];
ccx q[1],q[4],q[0];
cu1(2.1372968) q[5],q[7];
x q[2];
crz(4.0370324) q[8],q[3];
z q[6];
ch q[6],q[2];
h q[7];
ch q[9],q[0];
cu1(2.5636758) q[5],q[8];
ccx q[3],q[4],q[1];
cu1(2.8521215) q[2],q[0];
u3(6.2806825,1.4860932,4.5653613) q[1];
sdg q[5];
s q[8];
cswap q[9],q[4],q[6];
cu3(5.1498258,1.1563916,0.2311299) q[3],q[7];
cu3(0.18592155,3.1157214,3.0080865) q[7],q[3];
z q[0];
ccx q[5],q[1],q[9];
ch q[6],q[8];
swap q[2],q[4];
cswap q[2],q[9],q[1];
cy q[8],q[5];
h q[7];
cu1(5.5748536) q[4],q[3];
y q[0];
rx(3.4989543) q[6];
swap q[5],q[0];
t q[7];
ccx q[9],q[6],q[2];
cswap q[1],q[4],q[3];
t q[8];
t q[1];
t q[2];
id q[8];
ccx q[9],q[6],q[3];
y q[5];
cz q[7],q[0];
rx(4.2135691) q[4];
cswap q[5],q[9],q[3];
cx q[4],q[2];
ccx q[8],q[1],q[7];
cz q[0],q[6];
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