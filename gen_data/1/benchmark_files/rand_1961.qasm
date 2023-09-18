OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[2],q[0];
ch q[5],q[3];
x q[1];
h q[4];
crz(4.5953077) q[8],q[7];
rz(3.3324944) q[9];
swap q[6],q[9];
cswap q[4],q[7],q[5];
u3(3.3735035,5.3283187,4.4982095) q[8];
ccx q[3],q[0],q[2];
u3(4.1000037,3.9037501,3.4366223) q[1];
ccx q[3],q[8],q[5];
cswap q[6],q[9],q[7];
ch q[0],q[2];
cu1(1.0256488) q[1],q[4];
u1(5.3182707) q[4];
id q[0];
tdg q[7];
ccx q[5],q[8],q[9];
sdg q[1];
ccx q[2],q[6],q[3];
ccx q[7],q[9],q[5];
ch q[6],q[8];
sdg q[1];
ccx q[2],q[3],q[0];
h q[4];
cswap q[6],q[3],q[2];
cswap q[5],q[8],q[7];
ccx q[4],q[1],q[0];
sdg q[9];
cswap q[9],q[8],q[3];
cx q[5],q[0];
cu1(5.0089928) q[6],q[1];
cu1(0.62822817) q[4],q[2];
tdg q[7];
x q[1];
h q[2];
cswap q[7],q[4],q[8];
cswap q[9],q[0],q[6];
rz(4.764503) q[5];
rz(1.8802375) q[3];
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