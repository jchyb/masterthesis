OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[5],q[7];
ry(1.1901134) q[9];
ccx q[0],q[6],q[2];
cu1(2.664963) q[1],q[8];
crz(2.1484427) q[3],q[4];
cswap q[4],q[2],q[8];
ccx q[5],q[3],q[7];
cu1(2.7348081) q[9],q[6];
ch q[1],q[0];
ch q[6],q[0];
cx q[4],q[3];
s q[1];
y q[8];
u3(0.38946597,0.26375512,2.9015487) q[9];
h q[5];
t q[7];
u1(5.192973) q[2];
z q[3];
cz q[6],q[9];
cu3(4.2289558,3.7293773,0.14202433) q[4],q[2];
cswap q[8],q[7],q[1];
z q[5];
tdg q[0];
cu3(3.0597867,2.4354833,4.7720286) q[3],q[0];
ccx q[1],q[4],q[2];
cswap q[8],q[5],q[9];
cz q[6],q[7];
cswap q[9],q[0],q[7];
cu1(1.3247707) q[2],q[4];
y q[5];
cu3(6.1838578,0.27381955,1.2450734) q[3],q[6];
y q[1];
u1(1.0385456) q[8];
ccx q[9],q[3],q[0];
cu1(1.4934195) q[7],q[8];
sdg q[4];
cu1(5.2281815) q[2],q[6];
h q[1];
z q[5];
cswap q[2],q[1],q[9];
cswap q[8],q[3],q[7];
cy q[5],q[0];
cy q[6],q[4];
ccx q[1],q[6],q[7];
cx q[2],q[8];
ch q[9],q[5];
ry(4.7676739) q[3];
swap q[4],q[0];
ccx q[5],q[1],q[3];
y q[9];
swap q[8],q[4];
ccx q[2],q[7],q[0];
id q[6];
ch q[0],q[7];
ccx q[5],q[1],q[9];
h q[2];
cu3(0.19397025,5.1398029,6.1502557) q[4],q[6];
cx q[3],q[8];
cswap q[4],q[1],q[8];
cu1(2.399588) q[9],q[2];
s q[6];
u3(1.4313606,4.7269374,6.0676685) q[3];
cx q[0],q[7];
rx(5.6754609) q[5];
sdg q[6];
rz(5.6379745) q[2];
u1(0.78389996) q[9];
y q[7];
cu3(3.3284701,1.4846485,5.1952914) q[3],q[5];
cy q[4],q[8];
cy q[1],q[0];
id q[4];
rx(2.2293876) q[1];
cswap q[8],q[7],q[3];
cu1(0.79041116) q[9],q[0];
rz(2.2632837) q[2];
rzz(4.7218217) q[6],q[5];
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