OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
ry(5.690056) q[6];
cy q[5],q[10];
cswap q[1],q[11],q[0];
x q[2];
cz q[9],q[4];
cu3(2.0580185,1.105869,2.8254235) q[7],q[3];
tdg q[8];
tdg q[7];
rzz(4.7362909) q[5],q[1];
cz q[10],q[9];
ry(4.9282835) q[3];
cu3(2.7239312,0.75284114,5.792194) q[0],q[8];
id q[6];
t q[2];
ry(2.6222034) q[11];
tdg q[4];
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