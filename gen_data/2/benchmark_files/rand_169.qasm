OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[7],q[3];
y q[9];
t q[1];
ccx q[2],q[8],q[4];
id q[0];
u1(3.1765746) q[5];
ry(0.81630708) q[6];
u3(6.2802278,1.6445514,5.2946146) q[2];
crz(3.6022982) q[6],q[4];
ch q[9],q[5];
x q[3];
ry(2.0816183) q[0];
cswap q[1],q[7],q[8];
cswap q[9],q[8],q[0];
s q[5];
swap q[2],q[1];
u3(2.9814871,2.2639786,2.0969679) q[6];
swap q[3],q[4];
z q[7];
h q[9];
u3(0.48651679,5.8693437,2.0068129) q[0];
cswap q[2],q[3],q[1];
crz(2.4206031) q[6],q[5];
cy q[4],q[8];
rz(3.6294813) q[7];
cswap q[5],q[4],q[7];
crz(4.3437171) q[1],q[8];
cswap q[6],q[9],q[0];
tdg q[2];
u1(3.727837) q[3];
u3(5.5030408,1.0519613,6.0077966) q[2];
cswap q[3],q[7],q[1];
ry(0.033386337) q[6];
cu3(2.8523055,2.6067904,4.7622048) q[8],q[4];
sdg q[9];
id q[5];
u2(2.7668594,5.6367995) q[0];
ccx q[2],q[8],q[3];
cu3(1.911601,5.8634154,2.9325438) q[7],q[5];
ccx q[1],q[0],q[4];
u1(0.37445966) q[6];
h q[9];
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