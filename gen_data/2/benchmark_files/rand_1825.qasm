OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[0];
y q[8];
u3(2.1502129,5.2647964,2.4511529) q[9];
rzz(5.0988207) q[4],q[3];
t q[6];
u1(3.2564293) q[5];
ccx q[7],q[1],q[2];
ccx q[1],q[9],q[7];
rzz(3.1690691) q[6],q[4];
ch q[5],q[3];
y q[0];
u1(3.3178145) q[2];
y q[8];
cu3(5.5709892,3.2512797,4.3877756) q[1],q[6];
x q[3];
ry(1.0465307) q[7];
ccx q[5],q[9],q[0];
y q[4];
cu1(1.0261161) q[2],q[8];
cu3(2.8489227,1.03663,2.549689) q[1],q[8];
u2(3.8056092,3.3570247) q[4];
ry(1.6060155) q[3];
rzz(5.4785729) q[9],q[2];
u3(6.2047494,3.5153822,1.4988627) q[7];
rx(2.5149933) q[5];
crz(1.3165547) q[6],q[0];
cswap q[4],q[1],q[6];
crz(5.2512513) q[5],q[3];
cu1(4.1205793) q[8],q[9];
ccx q[2],q[7],q[0];
cx q[0],q[5];
id q[9];
cswap q[3],q[2],q[4];
crz(2.7325135) q[7],q[8];
ry(4.2516549) q[1];
sdg q[6];
cswap q[0],q[1],q[2];
cu1(5.0687669) q[4],q[6];
h q[8];
ccx q[7],q[5],q[9];
id q[3];
ch q[1],q[7];
ccx q[0],q[9],q[5];
x q[3];
ccx q[2],q[6],q[8];
y q[4];
cswap q[4],q[2],q[8];
crz(2.4853251) q[9],q[1];
ccx q[0],q[3],q[7];
rzz(2.9103727) q[5],q[6];
u1(2.6578903) q[9];
ry(4.8515114) q[4];
cu1(1.1298869) q[3],q[7];
cu1(2.1583979) q[8],q[1];
ccx q[6],q[2],q[5];
z q[0];
cswap q[5],q[8],q[7];
swap q[3],q[4];
cu1(1.031131) q[9],q[6];
cswap q[2],q[1],q[0];
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