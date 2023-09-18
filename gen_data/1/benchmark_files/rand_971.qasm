OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[5],q[2],q[3];
ch q[8],q[6];
cu3(0.67906725,1.3768791,0.14897806) q[9],q[7];
cu3(3.1820831,0.65881962,3.1677363) q[1],q[4];
h q[0];
ch q[1],q[7];
ry(5.0879242) q[0];
rzz(5.7182724) q[2],q[6];
cswap q[8],q[3],q[9];
cx q[5],q[4];
cy q[5],q[7];
cswap q[1],q[6],q[3];
ry(5.2253062) q[0];
cz q[9],q[2];
ry(1.6446781) q[8];
t q[4];
tdg q[7];
ccx q[3],q[5],q[0];
cu3(4.5948655,1.6244507,1.3117689) q[8],q[2];
cswap q[6],q[1],q[9];
rx(1.927634) q[4];
t q[3];
z q[5];
rz(1.4192691) q[1];
s q[6];
ccx q[2],q[0],q[8];
rz(6.1179296) q[9];
x q[4];
tdg q[7];
ccx q[7],q[8],q[2];
cu3(0.13131682,0.99076531,3.2141279) q[9],q[6];
u1(5.9842278) q[3];
t q[5];
cswap q[1],q[4],q[0];
h q[7];
ccx q[1],q[2],q[0];
ccx q[9],q[4],q[8];
tdg q[3];
ch q[5],q[6];
rz(4.9216244) q[7];
y q[2];
id q[6];
cswap q[0],q[9],q[5];
ccx q[8],q[3],q[4];
y q[1];
ch q[4],q[9];
rzz(2.6505835) q[1],q[3];
ccx q[6],q[0],q[8];
s q[2];
cy q[5],q[7];
cu3(6.2721867,0.98156313,0.29777599) q[0],q[3];
x q[8];
ccx q[9],q[5],q[7];
cx q[4],q[6];
y q[1];
u3(6.1166492,2.5708563,2.0104176) q[2];
cswap q[8],q[0],q[3];
s q[5];
h q[7];
ccx q[9],q[2],q[6];
t q[4];
ry(2.8219725) q[1];
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