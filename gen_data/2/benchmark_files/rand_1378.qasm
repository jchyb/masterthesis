OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[6],q[4];
cswap q[3],q[9],q[5];
cswap q[8],q[2],q[7];
u3(5.1070482,1.8286201,1.4630922) q[0];
rz(2.3358365) q[1];
ch q[0],q[9];
x q[1];
u2(1.8756167,1.104731) q[8];
s q[3];
cswap q[4],q[5],q[6];
tdg q[2];
id q[7];
id q[5];
cy q[2],q[7];
s q[0];
swap q[4],q[3];
ccx q[1],q[6],q[9];
rz(2.9010095) q[8];
u2(0.68250362,0.72416019) q[5];
cswap q[6],q[4],q[3];
ccx q[8],q[2],q[7];
y q[0];
cu1(2.1372205) q[9],q[1];
ch q[9],q[4];
cz q[0],q[1];
ry(4.5100168) q[3];
rx(0.85679618) q[6];
ry(4.1865657) q[5];
x q[7];
cz q[8],q[2];
cu1(0.4662183) q[8],q[6];
cswap q[4],q[7],q[5];
sdg q[9];
u3(5.5919107,3.8983599,5.8778804) q[3];
ccx q[2],q[1],q[0];
ccx q[8],q[4],q[6];
cu1(1.4579594) q[2],q[9];
cu3(1.6604813,3.0878536,3.1458841) q[3],q[0];
z q[1];
cy q[7],q[5];
u3(5.11134,1.0697945,5.7999269) q[4];
ccx q[3],q[5],q[0];
u1(1.5860963) q[6];
u1(0.37667849) q[8];
cu3(2.0087836,4.8838725,4.6865805) q[7],q[1];
cz q[9],q[2];
cx q[3],q[8];
u2(3.9633238,0.66484103) q[1];
id q[6];
cx q[4],q[7];
cswap q[0],q[5],q[2];
ry(3.1078687) q[9];
cx q[8],q[0];
cy q[4],q[7];
cx q[5],q[3];
x q[9];
cu1(3.1997544) q[2],q[6];
sdg q[1];
swap q[4],q[0];
crz(6.2537516) q[6],q[3];
cx q[1],q[8];
t q[9];
cz q[2],q[7];
u3(1.9864214,0.40147687,4.8300373) q[5];
swap q[5],q[3];
u2(3.873293,5.7903152) q[2];
u1(4.5693005) q[0];
crz(4.2382876) q[6],q[9];
ccx q[4],q[7],q[1];
z q[8];
ccx q[8],q[4],q[7];
ccx q[5],q[3],q[9];
u2(2.6775262,1.3881233) q[0];
cz q[2],q[6];
ry(3.1547777) q[1];
cx q[5],q[1];
u2(3.0579463,6.001838) q[7];
ccx q[9],q[8],q[0];
ccx q[6],q[2],q[4];
rz(5.0932819) q[3];
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