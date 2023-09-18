OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[1],q[4];
cu3(1.303176,1.5319418,4.3583731) q[5],q[8];
crz(4.6589364) q[9],q[3];
swap q[6],q[7];
cu3(2.8344803,3.5593194,2.7933404) q[0],q[2];
cswap q[4],q[2],q[8];
y q[9];
rzz(5.2749358) q[6],q[7];
u3(5.9072195,0.78999487,0.26254866) q[5];
rzz(0.61113469) q[3],q[0];
id q[1];
crz(2.4833894) q[3],q[5];
z q[2];
rx(4.5716266) q[7];
ry(2.5773828) q[0];
ccx q[6],q[9],q[8];
ch q[1],q[4];
ccx q[6],q[4],q[5];
sdg q[8];
swap q[1],q[9];
cz q[7],q[0];
u3(4.6894684,2.2224455,4.3994462) q[2];
s q[3];
ccx q[7],q[5],q[4];
cu3(1.3862276,1.2837685,5.7061225) q[6],q[1];
cu1(0.47179229) q[9],q[0];
ccx q[8],q[3],q[2];
cswap q[7],q[5],q[3];
cy q[2],q[6];
u3(1.8459665,3.8227585,2.9486866) q[8];
cswap q[9],q[1],q[4];
tdg q[0];
x q[7];
cswap q[5],q[6],q[9];
h q[8];
cswap q[2],q[0],q[4];
cu3(2.8214856,3.7908609,3.8216508) q[1],q[3];
rz(2.7673965) q[7];
ch q[6],q[5];
cu1(0.56773857) q[3],q[9];
cu3(4.220235,4.8158991,3.3396502) q[4],q[2];
swap q[8],q[1];
u2(1.2830043,2.1970428) q[0];
u2(1.6685382,0.57387436) q[0];
swap q[2],q[7];
x q[9];
ch q[8],q[3];
ccx q[5],q[4],q[1];
rx(5.3290664) q[6];
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