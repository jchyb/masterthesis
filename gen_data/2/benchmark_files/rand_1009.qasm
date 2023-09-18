OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[1],q[4];
cswap q[7],q[5],q[6];
u2(4.9916157,5.6288338) q[8];
u3(0.24925752,3.8030611,2.8359583) q[0];
crz(1.609038) q[3],q[2];
x q[9];
ccx q[9],q[2],q[7];
swap q[1],q[8];
u3(0.9037954,3.3179956,2.5290641) q[0];
cswap q[3],q[5],q[6];
rz(4.9254891) q[4];
crz(5.640755) q[4],q[6];
cy q[0],q[1];
rz(4.7472818) q[7];
t q[2];
swap q[5],q[8];
rz(4.6042807) q[9];
s q[3];
sdg q[9];
x q[2];
h q[0];
ccx q[4],q[1],q[8];
ccx q[7],q[6],q[5];
tdg q[3];
y q[5];
cu3(5.517058,4.4319258,5.5062125) q[2],q[8];
ccx q[4],q[0],q[9];
cx q[7],q[1];
cx q[6],q[3];
u1(4.9686021) q[0];
ccx q[4],q[1],q[6];
swap q[3],q[2];
tdg q[8];
cz q[9],q[5];
s q[7];
cx q[3],q[9];
cy q[5],q[8];
cswap q[4],q[6],q[0];
cu3(3.669964,4.624136,2.0592789) q[1],q[7];
rz(3.4165602) q[2];
cz q[0],q[4];
rx(1.2217609) q[8];
ccx q[9],q[1],q[6];
ccx q[3],q[2],q[7];
x q[5];
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