OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(3.8417991) q[3];
crz(6.0312618) q[5],q[9];
ccx q[4],q[0],q[6];
id q[7];
tdg q[2];
crz(1.596109) q[1],q[8];
rzz(0.94266473) q[6],q[4];
u2(4.1893847,5.9907593) q[3];
cswap q[9],q[7],q[5];
ccx q[1],q[2],q[8];
rz(4.4438869) q[0];
ccx q[3],q[9],q[5];
ch q[4],q[2];
ccx q[6],q[8],q[0];
rz(0.5029197) q[1];
x q[7];
rzz(5.4137397) q[2],q[5];
crz(4.249955) q[9],q[1];
ch q[4],q[8];
crz(4.6031073) q[0],q[6];
ch q[3],q[7];
z q[2];
cswap q[1],q[7],q[6];
rzz(4.703043) q[0],q[4];
rzz(1.5447656) q[5],q[8];
ch q[9],q[3];
ry(6.1780513) q[4];
h q[5];
ch q[0],q[1];
tdg q[8];
ccx q[7],q[6],q[2];
y q[9];
h q[3];
cu3(5.1648617,0.52287342,5.0842107) q[3],q[7];
u1(5.1448061) q[4];
h q[1];
u3(3.4451966,5.524058,0.37876004) q[9];
z q[2];
rzz(3.5729605) q[8],q[6];
rzz(3.7050813) q[0],q[5];
cswap q[1],q[6],q[0];
ccx q[4],q[2],q[5];
cswap q[3],q[9],q[7];
rx(1.1094777) q[8];
ccx q[8],q[9],q[6];
z q[2];
ccx q[1],q[7],q[5];
cswap q[4],q[0],q[3];
swap q[8],q[6];
cswap q[1],q[7],q[2];
swap q[5],q[9];
cz q[0],q[3];
y q[4];
ch q[5],q[1];
cswap q[3],q[2],q[4];
cx q[8],q[7];
u3(5.3677275,2.6142382,2.248571) q[9];
rx(1.7284609) q[0];
rz(5.089718) q[6];
id q[9];
ccx q[4],q[6],q[5];
ch q[1],q[2];
h q[7];
cz q[0],q[3];
h q[8];
cswap q[4],q[7],q[0];
ry(0.25747525) q[8];
cy q[1],q[3];
ccx q[9],q[2],q[5];
rz(1.2582137) q[6];
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