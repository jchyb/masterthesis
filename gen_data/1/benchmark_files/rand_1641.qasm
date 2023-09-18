OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[8];
ccx q[3],q[0],q[7];
ccx q[1],q[2],q[6];
u2(2.3483793,2.4366167) q[5];
cy q[4],q[9];
crz(4.8648076) q[4],q[3];
z q[5];
ccx q[0],q[6],q[7];
cswap q[9],q[8],q[2];
y q[1];
ch q[2],q[3];
cswap q[6],q[8],q[0];
y q[7];
ccx q[4],q[1],q[9];
y q[5];
cz q[8],q[6];
sdg q[1];
cswap q[7],q[3],q[0];
u2(3.9814706,5.6983974) q[4];
swap q[5],q[9];
id q[2];
u1(0.92064658) q[7];
ccx q[1],q[8],q[2];
rzz(0.36624908) q[6],q[9];
z q[0];
cx q[3],q[5];
u3(4.0645039,4.8393256,5.4165047) q[4];
cswap q[9],q[2],q[8];
u3(6.2064867,4.9617322,0.0063326529) q[0];
ccx q[5],q[6],q[3];
cswap q[4],q[7],q[1];
ccx q[3],q[9],q[1];
cswap q[8],q[5],q[2];
x q[6];
ch q[4],q[7];
x q[0];
swap q[5],q[4];
ccx q[3],q[6],q[2];
h q[0];
ccx q[7],q[9],q[1];
z q[8];
z q[4];
crz(1.4052363) q[1],q[0];
swap q[6],q[9];
id q[7];
swap q[3],q[8];
tdg q[5];
u2(4.5130052,3.9937881) q[2];
tdg q[1];
cu3(2.1600695,5.2781488,4.4090501) q[0],q[4];
cswap q[6],q[2],q[5];
rz(0.36231148) q[7];
u3(3.2133577,2.4967546,3.9002762) q[8];
cu1(0.96554903) q[9],q[3];
crz(0.35573658) q[1],q[6];
u3(0.930975,1.1123241,0.38217348) q[9];
ch q[5],q[7];
cz q[4],q[2];
ccx q[0],q[3],q[8];
rz(0.34341457) q[3];
cswap q[4],q[5],q[8];
cu3(1.2021086,3.1976897,2.4048915) q[0],q[6];
cy q[1],q[2];
ch q[9],q[7];
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