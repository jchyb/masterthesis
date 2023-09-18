OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(3.367359) q[8];
cswap q[4],q[1],q[6];
cswap q[7],q[3],q[5];
ccx q[9],q[0],q[2];
cswap q[8],q[0],q[4];
cswap q[9],q[1],q[6];
rz(0.95967103) q[2];
cswap q[3],q[5],q[7];
cu3(1.4637546,3.2318998,4.3293844) q[4],q[9];
cu1(5.4560006) q[3],q[0];
cswap q[2],q[7],q[6];
cz q[8],q[5];
tdg q[1];
u2(4.7316829,1.295853) q[3];
rzz(1.6788772) q[5],q[4];
cu3(1.5407331,5.6393147,1.7027377) q[8],q[9];
cy q[2],q[0];
cswap q[1],q[7],q[6];
ccx q[3],q[5],q[4];
ccx q[7],q[6],q[0];
cx q[8],q[9];
swap q[1],q[2];
ccx q[0],q[7],q[9];
cswap q[6],q[4],q[8];
cu3(2.6991062,1.3196322,5.7935548) q[2],q[1];
id q[5];
u2(6.2083803,5.8057846) q[3];
ccx q[3],q[5],q[9];
rzz(5.3077767) q[8],q[6];
rzz(5.157096) q[0],q[7];
ccx q[2],q[1],q[4];
tdg q[6];
ccx q[1],q[9],q[0];
sdg q[7];
rzz(3.930833) q[5],q[4];
y q[2];
swap q[8],q[3];
u3(0.63997822,4.2790122,2.6627713) q[9];
swap q[2],q[5];
cswap q[6],q[7],q[1];
cu1(0.70686417) q[3],q[4];
id q[8];
id q[0];
cz q[9],q[6];
ccx q[7],q[0],q[2];
x q[5];
cswap q[3],q[8],q[4];
h q[1];
cz q[0],q[1];
h q[4];
cu3(4.1369374,5.13655,5.9768781) q[8],q[6];
crz(1.5935447) q[5],q[3];
ry(4.4384563) q[9];
cx q[7],q[2];
swap q[7],q[9];
cu3(4.5721465,0.48445213,3.2929828) q[0],q[6];
id q[8];
rzz(3.7677228) q[2],q[1];
cswap q[5],q[4],q[3];
cy q[3],q[6];
cswap q[4],q[9],q[1];
crz(3.290295) q[7],q[8];
cy q[5],q[0];
t q[2];
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