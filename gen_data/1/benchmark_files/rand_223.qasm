OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[6],q[9];
cswap q[3],q[2],q[8];
crz(6.2221348) q[5],q[7];
u3(3.4674779,2.3550039,5.7057295) q[1];
tdg q[4];
cy q[4],q[5];
cx q[9],q[0];
ccx q[8],q[2],q[7];
ccx q[1],q[6],q[3];
cswap q[5],q[9],q[4];
cswap q[1],q[3],q[2];
cz q[6],q[7];
rzz(0.36832292) q[0],q[8];
ccx q[5],q[9],q[4];
crz(2.5943362) q[3],q[2];
t q[1];
cz q[8],q[7];
rz(4.2201293) q[0];
rx(5.1673146) q[6];
cx q[7],q[4];
u1(1.0639001) q[0];
cz q[5],q[2];
cu3(4.0164603,4.0653942,4.424653) q[3],q[8];
cx q[9],q[6];
u3(5.2175269,1.3172081,1.032309) q[1];
rz(1.0154195) q[8];
cx q[4],q[9];
cswap q[2],q[0],q[7];
cx q[3],q[6];
ry(3.44375) q[5];
h q[1];
cz q[3],q[9];
z q[6];
cswap q[7],q[8],q[5];
ccx q[1],q[0],q[2];
z q[4];
cswap q[1],q[5],q[8];
ch q[0],q[2];
crz(3.5327087) q[6],q[7];
rx(4.7108719) q[9];
cu1(1.0351611) q[3],q[4];
cswap q[3],q[5],q[1];
ccx q[9],q[0],q[8];
rzz(0.72016602) q[2],q[4];
rz(2.0644711) q[7];
id q[6];
cswap q[8],q[4],q[5];
swap q[1],q[6];
rz(4.4533835) q[0];
rx(1.6454935) q[3];
crz(5.2379354) q[7],q[2];
t q[9];
cu1(1.9730391) q[7],q[8];
cswap q[0],q[2],q[9];
cswap q[5],q[1],q[3];
y q[4];
u2(5.9658867,2.7248706) q[6];
ccx q[3],q[9],q[6];
cu1(4.5792857) q[5],q[8];
rz(0.93313433) q[2];
z q[0];
ccx q[1],q[7],q[4];
ccx q[9],q[1],q[6];
ccx q[4],q[8],q[3];
t q[0];
swap q[5],q[7];
z q[2];
cy q[9],q[8];
ccx q[3],q[1],q[2];
ch q[5],q[7];
ccx q[4],q[6],q[0];
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