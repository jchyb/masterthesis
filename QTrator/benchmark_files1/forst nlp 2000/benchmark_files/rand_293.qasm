OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ccx q[2],q[4],q[5];
ccx q[0],q[1],q[3];
sdg q[4];
u1(0.35972646) q[0];
cswap q[3],q[1],q[2];
id q[5];
y q[4];
cswap q[1],q[3],q[0];
z q[2];
ry(2.7742173) q[5];
ccx q[3],q[5],q[2];
ccx q[0],q[1],q[4];
cswap q[2],q[1],q[3];
cu3(2.8026619,5.7610604,0.76963518) q[0],q[5];
t q[4];
ccx q[0],q[1],q[5];
cswap q[4],q[3],q[2];
cu3(5.1898415,0.5928724,3.8649623) q[2],q[4];
cswap q[0],q[1],q[5];
u2(2.3894405,5.0590067) q[3];
cz q[4],q[5];
h q[2];
ccx q[1],q[0],q[3];
cu3(4.0205474,5.8745016,0.87915912) q[1],q[3];
cswap q[2],q[4],q[5];
rx(3.4142701) q[0];
cz q[4],q[5];
cswap q[3],q[1],q[0];
u3(2.5941648,5.9782154,5.751835) q[2];
id q[5];
cswap q[4],q[3],q[2];
cx q[0],q[1];
z q[1];
rzz(4.2614499) q[2],q[4];
cz q[5],q[0];
t q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
