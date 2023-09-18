OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.0769333) q[8],q[5];
cy q[3],q[0];
rz(1.8520917) q[4];
crz(2.9488169) q[7],q[1];
ccx q[2],q[9],q[6];
x q[9];
h q[3];
ccx q[2],q[0],q[8];
cx q[6],q[7];
rzz(1.3482659) q[5],q[1];
h q[4];
ccx q[9],q[8],q[6];
ccx q[5],q[2],q[0];
u2(4.5440701,0.51489062) q[7];
u3(3.420302,3.6790383,5.0236357) q[4];
cx q[3],q[1];
u3(3.0184707,0.059823583,3.2417241) q[5];
cu3(0.16684053,5.7244924,2.2713906) q[8],q[2];
t q[0];
x q[6];
cz q[3],q[1];
crz(2.4854518) q[7],q[9];
u2(5.9206184,0.43804774) q[4];
rzz(3.3885267) q[1],q[6];
tdg q[4];
y q[7];
rzz(5.7672457) q[0],q[2];
ccx q[9],q[8],q[3];
rx(1.7916302) q[5];
crz(1.564872) q[7],q[2];
rzz(1.3278635) q[8],q[1];
sdg q[9];
cx q[5],q[6];
cz q[3],q[4];
s q[0];
u2(3.3763991,0.099060134) q[2];
cz q[0],q[9];
ccx q[8],q[5],q[3];
cswap q[4],q[6],q[7];
y q[1];
cswap q[8],q[5],q[1];
cz q[7],q[9];
ccx q[2],q[4],q[0];
s q[6];
t q[3];
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