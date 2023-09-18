OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[5];
swap q[6],q[4];
ccx q[7],q[1],q[2];
cswap q[0],q[8],q[3];
tdg q[9];
cswap q[2],q[1],q[7];
cswap q[8],q[0],q[9];
crz(1.444721) q[6],q[4];
cx q[3],q[5];
u3(1.1996396,3.6804358,3.272475) q[3];
rzz(1.3905315) q[2],q[5];
cswap q[6],q[7],q[8];
cu3(2.6548549,1.0144337,0.33713079) q[9],q[4];
rzz(1.0083974) q[0],q[1];
ccx q[6],q[7],q[4];
ccx q[5],q[8],q[3];
cy q[2],q[1];
ch q[9],q[0];
rzz(2.2711983) q[0],q[9];
rx(1.5211159) q[4];
cx q[3],q[6];
x q[2];
cu1(1.1423252) q[7],q[5];
rz(1.4822233) q[8];
rz(5.6304661) q[1];
u3(2.7359109,5.1111347,5.110523) q[4];
h q[7];
z q[0];
ccx q[6],q[9],q[2];
cswap q[8],q[3],q[1];
sdg q[5];
ccx q[3],q[6],q[2];
cswap q[5],q[9],q[4];
rx(6.2288902) q[1];
cx q[0],q[7];
ry(6.2567454) q[8];
t q[6];
cy q[8],q[9];
cswap q[4],q[5],q[1];
crz(5.1226552) q[2],q[3];
u1(1.4874949) q[7];
rz(1.1479992) q[0];
ccx q[3],q[1],q[6];
rzz(5.5069658) q[5],q[0];
cy q[2],q[8];
rz(1.435841) q[4];
rx(1.846975) q[7];
rx(0.83694677) q[9];
x q[3];
cswap q[5],q[4],q[9];
s q[2];
ccx q[8],q[1],q[6];
s q[7];
t q[0];
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