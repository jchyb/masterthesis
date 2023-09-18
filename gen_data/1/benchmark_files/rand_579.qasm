OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[3];
cu3(3.8286982,5.1338991,0.50783013) q[8],q[1];
cswap q[9],q[7],q[2];
t q[6];
rx(2.6780202) q[0];
rzz(3.1756523) q[5],q[4];
cu3(4.7628812,3.9987591,3.1074585) q[9],q[6];
ccx q[0],q[8],q[3];
rzz(5.8381933) q[4],q[5];
ccx q[1],q[2],q[7];
ccx q[9],q[5],q[3];
ch q[7],q[2];
tdg q[1];
tdg q[6];
t q[0];
y q[4];
id q[8];
tdg q[8];
cswap q[4],q[2],q[6];
ccx q[3],q[7],q[0];
u1(3.0088515) q[1];
sdg q[5];
u2(5.0068004,5.2971203) q[9];
cu3(3.4605998,1.5108558,3.2623544) q[6],q[8];
cu3(3.3754439,2.679701,3.8206169) q[7],q[0];
ccx q[5],q[3],q[4];
cswap q[9],q[2],q[1];
cx q[0],q[6];
cswap q[8],q[4],q[2];
ccx q[1],q[3],q[5];
crz(1.0893263) q[9],q[7];
rx(6.0903638) q[0];
rx(5.8931371) q[1];
y q[9];
cswap q[7],q[2],q[4];
cswap q[5],q[3],q[8];
u1(1.0122182) q[6];
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