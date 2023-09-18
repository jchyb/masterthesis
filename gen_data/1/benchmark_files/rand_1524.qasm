OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[2],q[0],q[6];
u1(5.8039972) q[8];
cswap q[5],q[9],q[7];
cswap q[4],q[1],q[3];
cswap q[4],q[3],q[0];
ccx q[8],q[6],q[9];
s q[7];
swap q[5],q[1];
x q[2];
cswap q[3],q[4],q[0];
swap q[9],q[5];
sdg q[8];
u3(1.2251362,0.88974319,4.4162261) q[6];
x q[7];
ch q[1],q[2];
cswap q[6],q[1],q[7];
cswap q[3],q[8],q[4];
ccx q[9],q[0],q[2];
z q[5];
cswap q[5],q[8],q[2];
ccx q[6],q[9],q[7];
cswap q[0],q[4],q[3];
u3(5.6228918,2.3640292,3.0907985) q[1];
cswap q[0],q[5],q[3];
crz(4.6309442) q[7],q[8];
rzz(2.0432408) q[9],q[1];
swap q[6],q[4];
y q[2];
x q[1];
cx q[3],q[4];
cy q[2],q[6];
u1(2.3751991) q[7];
cu1(5.8061908) q[9],q[5];
rzz(0.96843588) q[8],q[0];
z q[6];
ccx q[8],q[3],q[0];
sdg q[2];
cz q[4],q[1];
cy q[9],q[7];
rx(3.5431432) q[5];
sdg q[8];
ccx q[4],q[9],q[5];
cswap q[6],q[1],q[7];
cswap q[0],q[3],q[2];
y q[2];
t q[9];
rzz(1.4894325) q[5],q[7];
ch q[4],q[0];
swap q[6],q[3];
cy q[1],q[8];
ccx q[0],q[9],q[8];
cz q[7],q[2];
cx q[1],q[5];
cswap q[4],q[6],q[3];
cswap q[0],q[4],q[5];
cswap q[3],q[8],q[9];
ccx q[1],q[2],q[6];
sdg q[7];
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