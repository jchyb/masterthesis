OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
creg c[14];
u3(0.38470418,2.2201446,4.1343067) q[8];
rx(4.1313802) q[5];
ccx q[4],q[3],q[11];
cu3(4.3095082,3.9132296,1.955828) q[6],q[10];
ccx q[12],q[9],q[2];
cx q[0],q[13];
u3(1.7386409,2.7051901,5.3896744) q[7];
id q[1];
t q[5];
cswap q[11],q[7],q[9];
cx q[0],q[3];
crz(3.2709016) q[1],q[6];
cz q[4],q[8];
u2(5.8183732,1.4393616) q[12];
s q[10];
u2(2.0588762,0.11460711) q[2];
y q[13];
ry(2.6657986) q[6];
u2(0.29584347,6.2279322) q[13];
id q[7];
ccx q[4],q[5],q[3];
ccx q[9],q[0],q[11];
x q[12];
cz q[10],q[2];
x q[8];
h q[1];
cy q[5],q[8];
tdg q[3];
swap q[11],q[10];
cswap q[2],q[4],q[0];
ch q[1],q[6];
cy q[9],q[7];
cy q[13],q[12];
swap q[13],q[12];
s q[11];
u2(0.30669511,3.014114) q[3];
h q[6];
cswap q[9],q[0],q[1];
tdg q[7];
rzz(1.4761442) q[10],q[8];
cu3(4.9433997,1.4307923,4.2507278) q[2],q[4];
t q[5];
cy q[6],q[1];
ccx q[10],q[9],q[5];
cy q[7],q[13];
s q[2];
rx(0.87083946) q[4];
ch q[8],q[3];
cy q[11],q[12];
u2(5.5421186,1.9973709) q[0];
crz(5.1340097) q[12],q[0];
cz q[3],q[11];
cx q[4],q[9];
rzz(3.8172204) q[8],q[2];
rz(2.0847981) q[13];
crz(3.6909904) q[7],q[1];
ry(4.1705414) q[6];
u2(5.8992054,1.9464614) q[10];
u2(0.66104108,3.3425266) q[5];
rx(2.6172525) q[6];
cswap q[5],q[10],q[12];
tdg q[9];
cswap q[3],q[13],q[11];
t q[8];
ccx q[2],q[7],q[4];
cz q[0],q[1];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
measure q[13] -> c[13];
