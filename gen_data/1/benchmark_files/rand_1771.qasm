OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[5],q[0],q[9];
h q[3];
ch q[2],q[4];
cu1(5.2537837) q[7],q[8];
ry(2.4443338) q[6];
rz(3.1004271) q[1];
tdg q[6];
cswap q[2],q[9],q[8];
id q[0];
cu1(1.9033501) q[7],q[1];
u3(4.422621,5.4653327,1.5367363) q[5];
u1(3.0391068) q[4];
x q[3];
u3(1.7367053,4.8936026,2.5193028) q[1];
rzz(6.1265986) q[8],q[3];
cu3(5.9632772,2.4008607,1.867357) q[6],q[7];
y q[5];
u2(1.8500654,4.6663501) q[4];
cswap q[0],q[2],q[9];
ccx q[8],q[4],q[3];
cswap q[6],q[0],q[2];
cswap q[1],q[9],q[5];
t q[7];
crz(2.6080269) q[0],q[8];
cswap q[7],q[3],q[4];
cz q[1],q[9];
crz(5.2658938) q[2],q[5];
x q[6];
ccx q[2],q[6],q[0];
ccx q[3],q[4],q[9];
cz q[7],q[1];
h q[8];
u2(1.2651855,1.078313) q[5];
cswap q[5],q[1],q[8];
cswap q[4],q[9],q[7];
h q[0];
ccx q[2],q[3],q[6];
id q[4];
ccx q[8],q[3],q[5];
cx q[2],q[6];
cswap q[0],q[9],q[7];
z q[1];
ccx q[4],q[7],q[1];
cswap q[3],q[2],q[9];
z q[8];
u1(0.22557843) q[5];
cu3(2.6100131,3.7286001,0.088249628) q[0],q[6];
rz(1.9228418) q[8];
cu1(1.7048478) q[0],q[7];
ccx q[9],q[2],q[6];
id q[3];
z q[1];
ch q[5],q[4];
rzz(2.7066828) q[7],q[0];
ccx q[8],q[9],q[6];
rzz(1.813025) q[2],q[5];
cswap q[1],q[4],q[3];
x q[7];
cswap q[2],q[0],q[6];
z q[9];
cswap q[8],q[5],q[1];
ch q[4],q[3];
swap q[0],q[7];
cu3(0.1108048,0.8388632,2.9582993) q[5],q[9];
z q[3];
cswap q[1],q[4],q[8];
u3(1.1219575,4.107781,5.3974675) q[2];
y q[6];
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