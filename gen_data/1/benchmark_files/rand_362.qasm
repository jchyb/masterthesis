OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(3.4616431) q[3],q[7];
rzz(1.6025354) q[5],q[1];
rzz(0.57881223) q[6],q[8];
cswap q[9],q[0],q[2];
tdg q[4];
tdg q[8];
swap q[4],q[3];
ch q[5],q[1];
id q[0];
ccx q[7],q[2],q[6];
rz(5.0043256) q[9];
cu1(4.5985005) q[6],q[5];
cswap q[1],q[2],q[0];
id q[7];
sdg q[4];
cu1(2.0998455) q[8],q[3];
t q[9];
cswap q[4],q[1],q[3];
cy q[5],q[7];
s q[6];
sdg q[2];
crz(5.1296939) q[9],q[8];
t q[0];
cy q[4],q[5];
cu1(0.93896476) q[1],q[2];
z q[9];
cx q[8],q[0];
cswap q[7],q[3],q[6];
cswap q[9],q[1],q[6];
rz(1.4533955) q[8];
ccx q[7],q[5],q[0];
ccx q[2],q[4],q[3];
ccx q[3],q[2],q[7];
ccx q[8],q[1],q[9];
ccx q[4],q[6],q[5];
u2(3.0210253,4.7137264) q[0];
ch q[6],q[9];
h q[5];
ccx q[3],q[1],q[2];
u1(5.417807) q[0];
u3(3.3865962,3.5601007,4.7887217) q[8];
cz q[7],q[4];
s q[1];
cswap q[8],q[5],q[3];
ccx q[0],q[4],q[9];
u3(2.7633478,3.6489174,4.9307605) q[7];
x q[2];
sdg q[6];
t q[8];
cswap q[4],q[0],q[6];
cu3(4.2391058,1.2991503,5.1483344) q[5],q[7];
ch q[2],q[9];
u3(4.4448379,0.17245559,2.7137013) q[1];
rz(1.5730944) q[3];
ccx q[4],q[5],q[1];
cswap q[3],q[8],q[0];
cu3(1.3374444,0.17337471,4.543742) q[9],q[6];
rzz(6.1211749) q[2],q[7];
sdg q[6];
tdg q[2];
cswap q[9],q[0],q[3];
rzz(4.1380488) q[4],q[1];
ccx q[5],q[8],q[7];
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