OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[4],q[5];
rx(2.9493231) q[1];
cx q[0],q[6];
rz(4.2107362) q[3];
u1(6.1370029) q[2];
x q[9];
rz(1.2729058) q[7];
crz(4.7233755) q[7],q[0];
cswap q[5],q[6],q[4];
id q[1];
cz q[8],q[9];
cz q[3],q[2];
rx(3.1912471) q[4];
u2(4.5517821,1.5620545) q[6];
cy q[0],q[1];
cx q[5],q[7];
rx(4.0881965) q[9];
u1(3.3355726) q[8];
cu1(0.75403822) q[3],q[2];
cswap q[6],q[8],q[2];
u1(0.04929928) q[3];
ccx q[4],q[9],q[0];
ch q[1],q[5];
s q[7];
sdg q[5];
cswap q[6],q[3],q[7];
cswap q[1],q[2],q[9];
rx(6.1122171) q[8];
u1(5.5402428) q[4];
z q[0];
y q[5];
ry(5.2436184) q[4];
crz(2.4656222) q[8],q[1];
y q[7];
ch q[3],q[0];
cswap q[2],q[6],q[9];
s q[1];
crz(1.3209618) q[4],q[7];
cy q[8],q[9];
ccx q[0],q[3],q[5];
id q[2];
u3(2.6349791,5.027286,1.9101942) q[6];
crz(0.1255944) q[6],q[9];
s q[8];
tdg q[0];
cy q[7],q[1];
ch q[5],q[4];
y q[2];
u1(2.7020451) q[3];
id q[9];
ry(5.756095) q[5];
x q[1];
t q[6];
s q[8];
cu3(5.7611192,0.91589944,2.0109842) q[7],q[0];
y q[3];
cu3(0.4451499,4.4447892,1.266687) q[4],q[2];
ccx q[3],q[0],q[4];
crz(2.2543332) q[6],q[5];
u3(5.9425645,1.4928823,3.7511232) q[9];
u1(2.2382369) q[8];
rz(2.5146579) q[7];
x q[2];
h q[1];
x q[1];
cswap q[8],q[7],q[0];
cswap q[2],q[3],q[4];
ccx q[9],q[6],q[5];
cswap q[6],q[1],q[2];
crz(0.8802402) q[7],q[4];
ccx q[0],q[8],q[9];
rzz(5.8180687) q[3],q[5];
cz q[0],q[2];
cswap q[9],q[6],q[3];
ccx q[7],q[8],q[5];
u1(5.6605231) q[1];
t q[4];
tdg q[5];
ccx q[3],q[7],q[4];
cswap q[8],q[6],q[0];
cx q[2],q[1];
s q[9];
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