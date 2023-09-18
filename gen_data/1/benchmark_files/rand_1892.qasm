OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[0],q[3];
cswap q[2],q[9],q[1];
cu1(5.7687568) q[5],q[6];
rx(4.1741964) q[8];
rz(0.24455812) q[7];
z q[4];
cu3(4.163385,3.1861118,4.2179088) q[4],q[3];
cy q[6],q[0];
crz(5.7113731) q[5],q[2];
crz(2.718235) q[9],q[1];
cu1(3.6656569) q[8],q[7];
swap q[8],q[0];
rx(5.8179245) q[7];
z q[3];
id q[4];
cx q[5],q[6];
cswap q[1],q[2],q[9];
crz(3.2993545) q[8],q[6];
ccx q[3],q[0],q[7];
cu1(1.329572) q[1],q[4];
ch q[9],q[5];
rx(0.81851093) q[2];
rx(1.213566) q[6];
cswap q[5],q[3],q[0];
t q[2];
cswap q[8],q[1],q[7];
crz(4.644239) q[4],q[9];
u2(0.16797394,4.9578855) q[4];
cswap q[1],q[2],q[8];
cz q[9],q[7];
rzz(2.0169077) q[0],q[6];
u1(2.138296) q[3];
z q[5];
cswap q[2],q[3],q[5];
rzz(5.8532239) q[9],q[1];
swap q[8],q[6];
ccx q[0],q[4],q[7];
u1(4.5385874) q[2];
ch q[1],q[9];
h q[8];
x q[5];
cx q[4],q[0];
id q[3];
s q[6];
y q[7];
crz(1.0105504) q[1],q[4];
cswap q[0],q[6],q[2];
x q[8];
ccx q[3],q[7],q[9];
u3(1.5380382,2.9288233,3.5811291) q[5];
ch q[5],q[9];
tdg q[7];
cz q[8],q[3];
swap q[2],q[0];
rz(3.9041569) q[6];
h q[4];
z q[1];
swap q[9],q[0];
cswap q[5],q[6],q[3];
ccx q[4],q[1],q[7];
cx q[8],q[2];
cx q[6],q[8];
cx q[9],q[7];
t q[1];
cu3(6.0256906,3.204258,1.6040097) q[3],q[5];
ch q[0],q[4];
rx(5.6868775) q[2];
ry(2.1579638) q[5];
sdg q[3];
cswap q[8],q[6],q[2];
cu1(3.80538) q[4],q[9];
ccx q[0],q[1],q[7];
ccx q[5],q[2],q[6];
rx(3.9973797) q[4];
cx q[7],q[3];
cswap q[9],q[8],q[1];
u3(1.971474,0.78328355,1.9353261) q[0];
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