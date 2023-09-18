OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[9];
rzz(0.89231374) q[7],q[0];
x q[6];
u3(4.430384,0.72706275,3.0932069) q[8];
cswap q[1],q[3],q[2];
u3(4.3577901,5.0882082,2.9103798) q[5];
rx(5.0332027) q[4];
z q[5];
cswap q[9],q[6],q[3];
cswap q[4],q[2],q[8];
cy q[1],q[7];
t q[0];
ccx q[5],q[4],q[3];
cx q[1],q[6];
rzz(4.7812159) q[9],q[7];
ccx q[8],q[2],q[0];
rx(3.2023921) q[4];
cswap q[7],q[8],q[3];
cz q[9],q[5];
cswap q[6],q[2],q[1];
ry(3.9759236) q[0];
cz q[0],q[8];
u3(2.6611039,3.4978129,6.2038663) q[2];
ry(0.75373106) q[7];
ry(0.86203716) q[4];
cswap q[5],q[1],q[6];
tdg q[3];
h q[9];
ccx q[3],q[6],q[1];
cz q[9],q[8];
s q[4];
ccx q[5],q[2],q[7];
tdg q[0];
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