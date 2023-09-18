OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[8],q[6];
ccx q[0],q[5],q[3];
ccx q[4],q[2],q[9];
rzz(5.3899414) q[7],q[1];
ccx q[0],q[8],q[9];
rx(4.9760739) q[7];
rzz(0.8422023) q[4],q[1];
rzz(5.141578) q[2],q[6];
ry(4.0918115) q[5];
u2(3.036168,5.0190617) q[3];
cx q[6],q[5];
rz(1.9750137) q[4];
cu3(5.1499525,0.23459879,0.62682801) q[0],q[1];
ry(6.2439761) q[3];
cswap q[8],q[9],q[7];
u1(2.724917) q[2];
cx q[3],q[9];
crz(4.0221079) q[1],q[8];
cswap q[0],q[2],q[5];
sdg q[4];
t q[6];
id q[7];
cswap q[5],q[9],q[1];
cswap q[8],q[7],q[2];
u1(4.0943658) q[3];
s q[6];
rz(4.184658) q[4];
u3(0.044482871,2.3450739,2.4453061) q[0];
h q[3];
ry(1.7287591) q[2];
ch q[7],q[6];
cx q[8],q[1];
u2(2.3072666,3.2355459) q[5];
cu1(1.856345) q[4],q[0];
z q[9];
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