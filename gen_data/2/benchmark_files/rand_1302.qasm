OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(3.2681804) q[7],q[8];
cu3(1.4712066,1.3519604,0.14035392) q[3],q[0];
x q[6];
y q[1];
cu3(0.17670158,1.3655737,1.4581595) q[2],q[9];
cu1(5.737759) q[4],q[5];
ccx q[5],q[2],q[0];
cswap q[7],q[3],q[8];
ch q[1],q[4];
rzz(3.1976109) q[9],q[6];
z q[3];
rz(5.7776478) q[2];
cswap q[9],q[8],q[0];
cswap q[4],q[5],q[1];
y q[7];
sdg q[6];
ch q[2],q[9];
ccx q[4],q[5],q[7];
u2(3.7543739,5.488272) q[0];
cz q[3],q[1];
u3(4.7733591,2.0408486,2.3467781) q[8];
x q[6];
cz q[7],q[3];
rzz(2.211272) q[0],q[4];
sdg q[9];
x q[5];
sdg q[8];
cz q[2],q[6];
x q[1];
cswap q[2],q[5],q[9];
ccx q[0],q[6],q[3];
u1(1.0329313) q[7];
y q[1];
rzz(4.7267646) q[8],q[4];
cz q[0],q[4];
ccx q[2],q[6],q[8];
cx q[9],q[3];
cu3(1.287126,1.5194484,4.2471518) q[1],q[5];
ry(1.1245873) q[7];
y q[0];
cswap q[1],q[8],q[2];
cswap q[3],q[9],q[4];
crz(5.5406585) q[5],q[7];
u1(0.20211007) q[6];
u1(4.1148433) q[5];
ch q[2],q[6];
cz q[1],q[4];
crz(3.9152659) q[0],q[9];
x q[7];
ry(0.44630532) q[3];
y q[8];
crz(2.3548242) q[2],q[1];
ccx q[3],q[8],q[4];
h q[6];
ccx q[7],q[9],q[0];
y q[5];
cswap q[1],q[0],q[7];
ry(4.1955278) q[5];
cswap q[9],q[3],q[6];
crz(3.5381865) q[8],q[4];
u2(1.1789296,2.0589049) q[2];
h q[2];
cswap q[3],q[1],q[7];
cswap q[4],q[6],q[8];
cu1(2.2690252) q[9],q[0];
y q[5];
swap q[8],q[6];
swap q[7],q[9];
cu1(0.56274695) q[3],q[4];
rzz(4.5149838) q[5],q[0];
crz(3.5062158) q[1],q[2];
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