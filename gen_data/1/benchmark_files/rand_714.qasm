OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[1],q[6],q[5];
rzz(2.9654397) q[4],q[7];
ccx q[2],q[8],q[9];
u2(4.7971695,1.7042697) q[3];
id q[0];
z q[6];
y q[9];
cswap q[2],q[5],q[7];
cu1(2.1892613) q[3],q[4];
u3(5.9353864,5.9419232,2.9943349) q[8];
y q[0];
h q[1];
ccx q[2],q[8],q[7];
y q[1];
cswap q[3],q[9],q[5];
cswap q[6],q[0],q[4];
s q[0];
ccx q[3],q[2],q[4];
ccx q[5],q[6],q[1];
cz q[9],q[7];
rz(3.5642517) q[8];
swap q[7],q[1];
ccx q[3],q[5],q[9];
ch q[4],q[8];
rx(3.9852957) q[0];
rzz(0.99434836) q[2],q[6];
cswap q[2],q[9],q[5];
swap q[6],q[8];
ccx q[4],q[3],q[1];
h q[7];
z q[0];
tdg q[8];
cu1(5.8682077) q[9],q[5];
ccx q[6],q[1],q[2];
cy q[7],q[0];
rzz(5.6921624) q[3],q[4];
cu3(4.3550539,1.7088783,0.65750345) q[8],q[4];
cswap q[7],q[6],q[2];
x q[5];
u3(2.3624001,4.093602,4.3456412) q[3];
ccx q[9],q[0],q[1];
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