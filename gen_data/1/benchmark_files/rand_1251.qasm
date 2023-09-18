OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[6];
cswap q[5],q[7],q[8];
cz q[2],q[3];
s q[1];
crz(3.1152189) q[0],q[9];
u2(4.7733417,3.6887371) q[4];
ch q[6],q[3];
cswap q[2],q[9],q[5];
t q[8];
h q[4];
ccx q[7],q[1],q[0];
s q[0];
cswap q[5],q[2],q[7];
t q[1];
crz(3.7313822) q[8],q[3];
ch q[9],q[6];
u1(6.1694575) q[4];
swap q[9],q[8];
ccx q[1],q[3],q[5];
ccx q[0],q[2],q[4];
u3(3.2996677,4.0231215,3.0459057) q[7];
y q[6];
rzz(2.0960311) q[6],q[5];
cz q[7],q[9];
rzz(5.6992133) q[1],q[0];
rzz(4.833625) q[2],q[4];
ch q[8],q[3];
cz q[2],q[0];
ccx q[5],q[1],q[6];
cu1(2.8980761) q[8],q[4];
ch q[3],q[9];
u3(4.2912315,5.7684215,2.5219183) q[7];
h q[1];
cswap q[9],q[3],q[8];
ccx q[6],q[5],q[4];
ccx q[0],q[2],q[7];
cu1(0.2960241) q[4],q[9];
x q[5];
ccx q[1],q[7],q[6];
x q[0];
ccx q[2],q[3],q[8];
ccx q[7],q[2],q[9];
cu3(0.94626017,2.8969156,5.8450303) q[3],q[4];
x q[6];
cswap q[0],q[5],q[8];
z q[1];
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