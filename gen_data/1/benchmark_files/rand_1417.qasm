OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[6];
z q[8];
crz(6.1900004) q[4],q[9];
u1(4.7807729) q[2];
cu3(3.3154377,5.9871475,6.2031906) q[3],q[0];
t q[5];
cx q[1],q[7];
crz(3.0181443) q[1],q[0];
cswap q[4],q[2],q[5];
rzz(5.2992182) q[7],q[8];
cy q[3],q[6];
ry(2.4814934) q[9];
cswap q[4],q[9],q[5];
cswap q[2],q[1],q[0];
cswap q[6],q[3],q[7];
s q[8];
z q[0];
cswap q[7],q[9],q[2];
cu1(1.4860013) q[5],q[6];
ry(4.9672497) q[4];
x q[8];
crz(3.5955035) q[3],q[1];
cu1(4.0141096) q[9],q[0];
tdg q[6];
cswap q[8],q[3],q[4];
cu1(4.3284129) q[7],q[5];
y q[1];
h q[2];
cswap q[9],q[2],q[8];
cswap q[1],q[5],q[6];
ry(2.642671) q[7];
cswap q[0],q[4],q[3];
cswap q[1],q[8],q[3];
cx q[2],q[4];
cswap q[9],q[6],q[5];
ch q[7],q[0];
x q[4];
ch q[7],q[0];
t q[8];
cswap q[6],q[1],q[3];
cu3(0.26281198,4.536755,5.9683899) q[5],q[2];
u2(0.64851733,0.68046628) q[9];
id q[5];
u1(3.5427357) q[3];
ccx q[2],q[6],q[8];
rzz(4.3856659) q[0],q[9];
ccx q[7],q[1],q[4];
cx q[0],q[7];
ccx q[9],q[5],q[4];
u2(3.5351125,4.7986184) q[6];
cu3(1.3370653,5.2981937,3.1198129) q[2],q[1];
u2(1.8149065,2.829082) q[8];
sdg q[3];
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