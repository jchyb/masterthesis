OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[2],q[9],q[8];
cu1(3.0369987) q[1],q[6];
cswap q[4],q[7],q[5];
x q[0];
u3(5.2448582,2.244696,3.6703135) q[3];
cu3(2.1020156,2.3599118,3.9969129) q[8],q[7];
u3(2.5558484,0.19421513,1.1697636) q[1];
rz(5.1331756) q[5];
swap q[6],q[9];
cx q[0],q[4];
cu3(2.6927563,4.3906954,5.1869476) q[3],q[2];
crz(3.9690079) q[8],q[9];
ccx q[3],q[6],q[0];
cswap q[5],q[2],q[4];
rzz(2.5951832) q[7],q[1];
cx q[5],q[0];
cz q[2],q[8];
ccx q[3],q[9],q[6];
swap q[7],q[1];
sdg q[4];
ch q[5],q[3];
h q[2];
cz q[0],q[9];
cu3(5.1241767,2.0301013,4.3372193) q[6],q[4];
crz(2.7322236) q[7],q[1];
u2(2.5068795,0.47684255) q[8];
cu1(0.84747924) q[5],q[7];
t q[6];
cx q[8],q[0];
cx q[2],q[1];
u1(2.404896) q[9];
rx(4.2413518) q[4];
s q[3];
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