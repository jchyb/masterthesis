OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[7],q[1];
ccx q[5],q[4],q[3];
y q[6];
tdg q[0];
cswap q[2],q[9],q[8];
ccx q[4],q[1],q[2];
cswap q[9],q[0],q[7];
crz(0.082277644) q[6],q[5];
cz q[3],q[8];
cswap q[6],q[8],q[4];
s q[0];
s q[2];
s q[1];
ccx q[3],q[5],q[9];
s q[7];
ccx q[2],q[0],q[9];
ccx q[5],q[1],q[8];
s q[6];
swap q[4],q[3];
u3(0.26196855,5.77116,3.0904386) q[7];
swap q[7],q[5];
swap q[2],q[6];
ccx q[0],q[3],q[8];
cswap q[9],q[1],q[4];
cswap q[9],q[4],q[7];
ccx q[6],q[8],q[1];
cu3(4.6848355,0.95038904,3.4435251) q[0],q[2];
rzz(1.9654047) q[3],q[5];
ccx q[4],q[3],q[2];
cswap q[9],q[1],q[7];
cswap q[5],q[8],q[6];
sdg q[0];
cswap q[3],q[1],q[2];
cx q[4],q[7];
cswap q[0],q[8],q[9];
id q[6];
ry(3.2596859) q[5];
cswap q[0],q[9],q[3];
swap q[2],q[8];
cu1(4.9115758) q[6],q[7];
sdg q[1];
x q[5];
z q[4];
z q[8];
crz(3.2980228) q[0],q[3];
tdg q[5];
ccx q[7],q[9],q[4];
swap q[1],q[6];
rx(0.44451188) q[2];
cswap q[1],q[3],q[4];
crz(5.3165755) q[7],q[6];
sdg q[9];
s q[8];
y q[2];
s q[5];
sdg q[0];
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