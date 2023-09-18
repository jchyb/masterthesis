OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[2];
ch q[3],q[5];
id q[9];
x q[7];
x q[8];
u1(1.4051572) q[1];
cswap q[6],q[4],q[0];
swap q[6],q[9];
s q[4];
rzz(6.0827747) q[5],q[8];
z q[2];
cx q[0],q[7];
cz q[1],q[3];
cy q[6],q[3];
h q[4];
cswap q[1],q[2],q[7];
rx(4.4304114) q[0];
u2(4.7709984,2.92494) q[5];
z q[9];
u3(4.7648661,5.5744964,5.6316414) q[8];
sdg q[9];
cy q[6],q[1];
cswap q[3],q[8],q[4];
h q[7];
cy q[2],q[5];
rz(2.3709106) q[0];
cswap q[6],q[7],q[0];
rzz(4.6341395) q[5],q[4];
tdg q[3];
ch q[8],q[9];
sdg q[2];
t q[1];
u3(5.3209493,3.7660973,5.6313232) q[9];
cu1(3.7823166) q[6],q[2];
u2(6.1532206,3.9564138) q[3];
rzz(3.2242983) q[4],q[1];
rx(1.4840118) q[8];
u1(2.3563994) q[7];
z q[0];
tdg q[5];
t q[9];
s q[3];
swap q[8],q[2];
z q[4];
cswap q[1],q[7],q[0];
ry(0.40215011) q[6];
t q[5];
t q[9];
cu3(5.7335766,3.6670064,3.1496227) q[7],q[8];
cu1(5.4287855) q[5],q[2];
cswap q[0],q[3],q[1];
cz q[6],q[4];
h q[4];
crz(3.9852092) q[8],q[7];
crz(2.458667) q[6],q[3];
rx(3.9373919) q[9];
rx(2.8391697) q[5];
cy q[1],q[0];
x q[2];
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