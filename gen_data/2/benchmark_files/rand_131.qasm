OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(4.7280908) q[1],q[5];
ry(4.9078037) q[4];
sdg q[3];
u1(4.2271398) q[0];
ry(3.4063818) q[8];
rzz(1.8902088) q[2],q[9];
ry(6.0697645) q[6];
u2(1.698275,4.7170461) q[7];
cswap q[1],q[9],q[3];
ccx q[5],q[4],q[7];
rz(4.5881307) q[8];
cswap q[0],q[2],q[6];
cu3(1.6699844,4.4155289,0.67903399) q[6],q[5];
id q[2];
y q[8];
ry(0.2994251) q[4];
cswap q[0],q[3],q[9];
ry(1.6574956) q[7];
h q[1];
x q[4];
h q[5];
ccx q[0],q[2],q[3];
ccx q[6],q[7],q[9];
crz(4.8366532) q[8],q[1];
cx q[4],q[7];
cz q[2],q[5];
cz q[3],q[9];
cu3(0.55410283,4.6870382,1.3242722) q[0],q[8];
u1(4.7478869) q[1];
rz(0.90101847) q[6];
ccx q[8],q[3],q[5];
id q[2];
cswap q[0],q[1],q[7];
z q[6];
swap q[9],q[4];
crz(0.1793204) q[3],q[8];
id q[0];
rzz(0.2680136) q[7],q[4];
h q[5];
u3(3.2641519,3.4396718,2.7472486) q[6];
cu1(1.1439018) q[9],q[1];
u3(4.1540881,1.1766121,0.20066874) q[2];
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