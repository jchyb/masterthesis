OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(0.45453215,4.5871184,4.8435832) q[8];
ccx q[3],q[9],q[7];
rz(1.0353653) q[1];
ccx q[5],q[0],q[2];
u2(1.1030506,5.9539722) q[6];
rx(4.2578035) q[4];
cu1(4.1085806) q[6],q[1];
cswap q[4],q[5],q[9];
cz q[2],q[7];
cz q[0],q[3];
h q[8];
cx q[4],q[9];
z q[2];
cu3(1.8476254,1.9167825,1.6493321) q[7],q[3];
rx(4.4544111) q[1];
cswap q[5],q[0],q[6];
u2(6.0768625,4.7133409) q[8];
cswap q[8],q[2],q[4];
cy q[7],q[0];
rzz(2.7537691) q[1],q[3];
ccx q[6],q[9],q[5];
cu1(3.4833464) q[6],q[2];
ccx q[3],q[4],q[9];
cz q[5],q[7];
cu3(4.9424776,3.1597752,6.1578061) q[1],q[0];
u3(4.951852,3.6162638,4.6058602) q[8];
ccx q[9],q[2],q[0];
cu1(0.3544843) q[4],q[7];
rx(2.9304109) q[3];
z q[5];
cu1(4.8658986) q[8],q[1];
s q[6];
crz(3.4731171) q[8],q[7];
swap q[6],q[4];
cswap q[2],q[9],q[0];
rz(3.8959154) q[3];
u2(3.8689756,3.774167) q[1];
rx(3.22675) q[5];
cu1(1.7351394) q[8],q[4];
crz(3.426942) q[9],q[5];
tdg q[1];
cswap q[7],q[0],q[2];
cz q[3],q[6];
cu1(6.1672969) q[7],q[4];
rx(3.472982) q[2];
x q[3];
u2(6.2270458,5.0579705) q[8];
cz q[5],q[0];
u3(5.305334,5.9214507,3.2395445) q[9];
sdg q[1];
ry(0.57664595) q[6];
cz q[4],q[5];
cswap q[2],q[7],q[6];
ccx q[1],q[0],q[9];
h q[3];
rz(3.5550444) q[8];
ccx q[9],q[7],q[2];
ccx q[8],q[0],q[1];
cu1(0.033356693) q[4],q[3];
id q[6];
u3(1.9851772,0.43263283,2.8515229) q[5];
sdg q[6];
cx q[8],q[4];
ccx q[2],q[0],q[9];
x q[7];
crz(5.707974) q[1],q[5];
y q[3];
cswap q[4],q[2],q[0];
crz(0.70083977) q[1],q[5];
cz q[7],q[9];
cy q[8],q[6];
rz(3.6085323) q[3];
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