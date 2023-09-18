OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[7];
ry(0.72978509) q[3];
ry(5.2572596) q[4];
cu3(0.88242105,3.190552,4.8091945) q[1],q[8];
cy q[6],q[2];
ccx q[9],q[5],q[0];
cswap q[8],q[4],q[0];
cz q[6],q[7];
rx(1.7767365) q[1];
y q[9];
rx(3.4208555) q[2];
cy q[5],q[3];
cu1(5.61863) q[0],q[4];
cswap q[2],q[1],q[7];
cswap q[8],q[9],q[3];
cy q[5],q[6];
ccx q[0],q[4],q[1];
ccx q[3],q[5],q[6];
s q[7];
x q[9];
cx q[2],q[8];
cu1(1.3852755) q[3],q[9];
ccx q[6],q[1],q[4];
ccx q[2],q[5],q[7];
ch q[0],q[8];
id q[5];
ry(5.5059835) q[8];
cy q[2],q[9];
h q[1];
cu3(1.6543626,2.0895828,2.0701368) q[6],q[4];
ccx q[3],q[0],q[7];
ccx q[7],q[8],q[3];
swap q[9],q[4];
cx q[5],q[6];
cu1(1.634348) q[2],q[0];
t q[1];
rz(1.4617205) q[1];
cswap q[8],q[6],q[0];
crz(3.4384856) q[3],q[7];
ccx q[5],q[4],q[2];
rx(2.5155421) q[9];
ccx q[3],q[1],q[7];
cswap q[2],q[6],q[9];
h q[4];
cswap q[5],q[0],q[8];
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