OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[2],q[7];
ccx q[5],q[6],q[3];
rzz(5.1700605) q[1],q[0];
cu3(6.2269448,3.4614873,0.10926607) q[9],q[8];
cx q[4],q[1];
crz(2.2086875) q[9],q[7];
ccx q[6],q[2],q[8];
u3(5.7580091,3.6054649,5.6427158) q[0];
crz(2.9878161) q[5],q[3];
cswap q[6],q[3],q[5];
sdg q[4];
h q[1];
rx(1.8794412) q[0];
cu1(2.5046056) q[2],q[9];
t q[8];
y q[7];
u2(4.6205902,6.0622278) q[5];
t q[4];
swap q[7],q[2];
tdg q[9];
x q[1];
rzz(3.1130663) q[6],q[0];
rz(6.1865776) q[8];
rz(0.74707942) q[3];
cx q[6],q[3];
ccx q[4],q[0],q[7];
cswap q[1],q[5],q[9];
u2(5.1739559,4.9248234) q[8];
u1(4.736902) q[2];
u2(3.7452013,5.4066408) q[3];
cswap q[5],q[1],q[9];
cx q[2],q[4];
cswap q[7],q[8],q[6];
y q[0];
s q[6];
u1(5.7694421) q[4];
y q[3];
rzz(4.6886685) q[5],q[8];
swap q[1],q[2];
cx q[7],q[0];
rx(0.43604511) q[9];
cswap q[0],q[5],q[7];
id q[9];
rz(3.7751658) q[4];
cswap q[8],q[2],q[3];
cu1(2.7746819) q[6],q[1];
ccx q[7],q[0],q[4];
rzz(5.8073679) q[6],q[2];
ccx q[3],q[1],q[8];
s q[9];
u2(1.3398858,2.0179864) q[5];
id q[7];
sdg q[9];
cy q[3],q[2];
ccx q[0],q[1],q[5];
ccx q[6],q[4],q[8];
ccx q[1],q[5],q[0];
ccx q[7],q[6],q[2];
tdg q[9];
ccx q[4],q[3],q[8];
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