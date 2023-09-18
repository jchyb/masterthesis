OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[6];
u3(0.00046577545,1.0211681,5.9598991) q[5];
ccx q[2],q[7],q[3];
cswap q[8],q[0],q[9];
ch q[4],q[1];
id q[0];
u3(0.27010233,3.1124081,2.0821318) q[8];
cswap q[3],q[4],q[6];
cy q[9],q[2];
rzz(3.9257539) q[5],q[1];
sdg q[7];
cswap q[8],q[4],q[1];
cswap q[7],q[5],q[3];
u3(3.8010516,6.1324146,4.6996401) q[2];
ry(2.8822988) q[0];
crz(5.8488952) q[9],q[6];
cswap q[3],q[1],q[8];
cu3(5.5097897,0.45934038,5.9888128) q[7],q[2];
cz q[6],q[4];
ccx q[0],q[5],q[9];
swap q[4],q[8];
cswap q[9],q[5],q[0];
ccx q[6],q[3],q[1];
ry(4.926091) q[7];
u2(2.0798716,5.2529387) q[2];
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