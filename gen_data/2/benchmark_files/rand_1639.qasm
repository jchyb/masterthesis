OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(5.0980492,1.7894649,4.8303366) q[6],q[2];
cswap q[5],q[8],q[4];
ccx q[7],q[0],q[3];
ch q[9],q[1];
cy q[9],q[3];
ccx q[7],q[0],q[1];
ry(1.1673178) q[8];
cswap q[4],q[5],q[6];
ry(2.534467) q[2];
crz(5.4837752) q[5],q[2];
ry(2.5486607) q[4];
ccx q[1],q[3],q[6];
ccx q[9],q[8],q[7];
u2(0.86139281,4.8476567) q[0];
ch q[0],q[7];
cswap q[6],q[3],q[5];
cz q[2],q[9];
swap q[8],q[4];
sdg q[1];
cx q[9],q[3];
crz(5.9042073) q[4],q[5];
z q[6];
z q[8];
s q[7];
ccx q[2],q[1],q[0];
cu3(2.8219646,2.5028666,6.1270192) q[7],q[6];
ccx q[4],q[1],q[3];
swap q[2],q[5];
crz(1.5809928) q[8],q[0];
rz(1.8028483) q[9];
cswap q[2],q[9],q[4];
ccx q[0],q[8],q[6];
cx q[3],q[7];
u1(0.083085996) q[5];
y q[1];
s q[6];
ry(5.9633166) q[4];
ch q[0],q[1];
u2(0.38284126,1.5352444) q[8];
cy q[7],q[3];
rz(2.7746348) q[2];
crz(0.56744784) q[9],q[5];
cu3(0.047482357,0.5518385,3.0946709) q[3],q[7];
rz(3.0403515) q[4];
ccx q[1],q[8],q[2];
swap q[9],q[6];
u3(2.6808977,2.012247,0.74764857) q[5];
x q[0];
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