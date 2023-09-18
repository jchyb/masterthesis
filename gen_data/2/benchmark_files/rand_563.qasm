OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[5];
cswap q[1],q[9],q[2];
cz q[7],q[0];
cswap q[8],q[4],q[6];
u1(1.9692003) q[3];
ccx q[8],q[4],q[7];
z q[3];
tdg q[1];
z q[6];
cswap q[5],q[9],q[2];
h q[0];
y q[8];
cswap q[9],q[5],q[0];
cswap q[6],q[4],q[3];
ccx q[2],q[1],q[7];
ccx q[7],q[2],q[8];
ry(1.6288668) q[5];
y q[1];
rzz(1.3568533) q[3],q[0];
t q[9];
u3(4.6588495,5.2783045,5.4181645) q[6];
id q[4];
cy q[5],q[7];
ccx q[8],q[2],q[0];
swap q[9],q[4];
cx q[3],q[6];
s q[1];
cswap q[9],q[3],q[4];
ccx q[6],q[7],q[1];
ccx q[5],q[2],q[8];
rx(0.23006698) q[0];
h q[7];
ch q[2],q[0];
u3(3.6459329,3.9186157,1.8683688) q[8];
ccx q[9],q[3],q[6];
ccx q[1],q[4],q[5];
s q[4];
h q[2];
ch q[6],q[0];
rz(2.2708766) q[1];
h q[5];
cswap q[7],q[8],q[3];
rz(3.2647) q[9];
cswap q[6],q[7],q[9];
h q[8];
cswap q[2],q[0],q[1];
ch q[5],q[4];
x q[3];
cu3(1.8216081,1.7894229,1.8605548) q[3],q[9];
cy q[2],q[8];
u3(4.9746784,4.4499989,3.5904122) q[5];
ccx q[4],q[6],q[1];
ch q[0],q[7];
s q[0];
rz(6.0711042) q[5];
cx q[9],q[4];
ccx q[1],q[7],q[6];
ccx q[8],q[2],q[3];
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