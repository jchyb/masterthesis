OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[5],q[0];
cswap q[9],q[7],q[4];
rzz(0.49740527) q[3],q[2];
u3(1.850301,2.5580785,3.465936) q[8];
u2(1.5275485,2.4096812) q[1];
u3(2.90969,1.8309591,3.4752621) q[6];
ccx q[5],q[7],q[9];
cswap q[3],q[6],q[4];
ccx q[1],q[0],q[8];
u1(4.2634201) q[2];
cswap q[6],q[7],q[5];
h q[4];
h q[3];
crz(4.2437385) q[1],q[9];
cz q[2],q[8];
sdg q[0];
ccx q[3],q[9],q[1];
y q[0];
rzz(1.0396481) q[4],q[7];
cx q[2],q[5];
y q[8];
u1(0.13154732) q[6];
cu1(5.3134872) q[4],q[6];
cx q[5],q[0];
ccx q[3],q[8],q[2];
ccx q[1],q[9],q[7];
swap q[4],q[0];
cz q[1],q[7];
x q[5];
ccx q[2],q[9],q[8];
ry(1.8348651) q[3];
z q[6];
t q[8];
t q[6];
cswap q[7],q[5],q[3];
x q[9];
cswap q[0],q[2],q[1];
u3(5.0013765,2.3653717,1.2552945) q[4];
y q[7];
x q[9];
cswap q[3],q[5],q[0];
ccx q[2],q[1],q[4];
cx q[8],q[6];
cswap q[1],q[9],q[0];
cz q[8],q[2];
u2(4.3045367,2.8590131) q[6];
cu3(5.257677,3.5531348,3.6977754) q[5],q[7];
u3(4.3249319,3.705026,6.0454295) q[3];
u1(0.39938527) q[4];
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