OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
cswap q[3],q[10],q[4];
cswap q[8],q[6],q[0];
cz q[5],q[2];
ccx q[9],q[7],q[11];
s q[1];
cswap q[0],q[1],q[4];
tdg q[2];
crz(2.9882327) q[3],q[8];
cz q[11],q[10];
ccx q[6],q[5],q[9];
u3(0.87967297,3.1351291,3.6830185) q[7];
ccx q[3],q[11],q[4];
sdg q[7];
rz(6.1480129) q[2];
y q[6];
ry(1.2483134) q[0];
rzz(0.70547766) q[5],q[8];
cy q[10],q[9];
id q[1];
cu3(1.9118927,0.24510915,2.8012371) q[10],q[9];
crz(3.2416879) q[6],q[0];
ch q[3],q[7];
ccx q[2],q[4],q[11];
rzz(0.7006169) q[8],q[1];
id q[5];
tdg q[5];
cswap q[0],q[2],q[11];
ccx q[6],q[10],q[8];
cz q[9],q[3];
x q[1];
t q[4];
rx(4.2118583) q[7];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
