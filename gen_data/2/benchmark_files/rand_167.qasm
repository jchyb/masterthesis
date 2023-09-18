OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[1],q[2],q[4];
u3(1.1474089,5.6620869,0.73518202) q[5];
cswap q[6],q[9],q[0];
ccx q[7],q[3],q[8];
rz(2.8954624) q[3];
cu1(1.1216024) q[5],q[7];
cswap q[4],q[9],q[0];
crz(3.1011742) q[8],q[2];
cu3(5.0481823,5.0904298,4.2356929) q[6],q[1];
rz(4.6507249) q[3];
cswap q[7],q[4],q[2];
rz(2.174221) q[0];
rx(4.311438) q[6];
cswap q[1],q[5],q[9];
s q[8];
ccx q[1],q[2],q[5];
rx(3.2694014) q[0];
swap q[3],q[9];
cu1(2.8265263) q[7],q[4];
cu3(3.0502343,4.7418888,5.1753382) q[6],q[8];
cu3(5.5092967,2.9324749,0.62363379) q[6],q[7];
id q[2];
cu1(3.3574917) q[4],q[9];
s q[0];
crz(0.68827941) q[5],q[3];
rzz(6.1525132) q[1],q[8];
sdg q[5];
cswap q[6],q[1],q[7];
cz q[3],q[0];
cswap q[4],q[8],q[9];
u1(0.3816632) q[2];
swap q[1],q[6];
t q[3];
u1(3.8056744) q[5];
y q[4];
cx q[8],q[0];
sdg q[9];
sdg q[7];
tdg q[2];
u3(3.7273863,0.84918008,5.7494499) q[6];
ch q[2],q[3];
id q[4];
s q[7];
cswap q[9],q[8],q[1];
u3(0.84057046,6.0196532,4.7751704) q[0];
rz(4.346941) q[5];
ccx q[6],q[9],q[5];
cswap q[1],q[0],q[4];
rz(5.2811394) q[7];
cx q[8],q[2];
rx(4.1540162) q[3];
rx(5.7991399) q[3];
cz q[7],q[6];
ccx q[2],q[5],q[1];
ccx q[8],q[4],q[0];
y q[9];
ccx q[2],q[6],q[9];
cu3(4.8966515,3.9321617,3.7364255) q[5],q[3];
tdg q[4];
cu3(3.0970218,2.4444853,5.2031046) q[0],q[8];
rx(3.434234) q[7];
rz(2.494035) q[1];
u1(3.5677394) q[0];
swap q[7],q[1];
ccx q[4],q[2],q[8];
ccx q[6],q[5],q[3];
y q[9];
ch q[6],q[0];
y q[8];
crz(5.3955148) q[9],q[1];
ccx q[4],q[7],q[5];
tdg q[2];
t q[3];
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