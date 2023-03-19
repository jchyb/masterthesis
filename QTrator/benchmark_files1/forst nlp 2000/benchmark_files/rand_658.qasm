OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
cx q[0],q[1];
cu1(5.2509252) q[1],q[0];
h q[1];
rz(4.0420149) q[0];
ch q[0],q[1];
cu3(2.7213068,1.5345783,6.0789459) q[0],q[1];
crz(6.0911407) q[1],q[0];
ch q[0],q[1];
rx(2.9325513) q[0];
h q[1];
rzz(5.850898) q[0],q[1];
rx(5.5870655) q[1];
u3(3.4700425,5.6943616,1.2375155) q[0];
cx q[0],q[1];
cz q[0],q[1];
cu1(2.1846957) q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];