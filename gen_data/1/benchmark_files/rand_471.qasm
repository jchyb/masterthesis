OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(6.1145693) q[9];
z q[5];
s q[0];
cswap q[1],q[3],q[4];
cx q[6],q[8];
cu1(2.8691849) q[2],q[7];
cswap q[1],q[6],q[0];
ccx q[9],q[5],q[2];
rz(4.9234565) q[3];
ccx q[7],q[8],q[4];
u2(2.7882957,0.028918456) q[8];
s q[3];
cy q[2],q[6];
s q[1];
cu1(0.61742698) q[4],q[0];
cswap q[9],q[5],q[7];
crz(4.9440955) q[1],q[6];
cu3(2.3934408,2.2627831,1.5935203) q[3],q[2];
t q[0];
cswap q[7],q[5],q[4];
swap q[9],q[8];
ch q[0],q[6];
rzz(4.0166228) q[2],q[7];
sdg q[1];
x q[3];
ccx q[9],q[8],q[5];
tdg q[4];
swap q[5],q[9];
s q[6];
cswap q[1],q[2],q[8];
rzz(3.0678456) q[3],q[4];
cy q[0],q[7];
z q[8];
id q[1];
ccx q[5],q[2],q[9];
cswap q[7],q[3],q[4];
swap q[6],q[0];
h q[3];
tdg q[0];
cx q[5],q[4];
ch q[7],q[9];
cswap q[1],q[2],q[6];
u3(1.1058295,5.681396,4.5066062) q[8];
cswap q[8],q[0],q[5];
u3(1.0868575,1.6408755,1.9520568) q[4];
cswap q[3],q[1],q[2];
u1(4.2684895) q[6];
id q[9];
x q[7];
ch q[7],q[5];
ccx q[2],q[0],q[8];
cz q[4],q[1];
cz q[3],q[6];
sdg q[9];
cz q[1],q[6];
rx(4.9903587) q[9];
u1(1.0478966) q[3];
ry(2.6895952) q[4];
h q[0];
ry(4.8252344) q[5];
ccx q[2],q[7],q[8];
ry(3.9274107) q[4];
ry(6.243134) q[1];
cu3(3.0228804,1.2298671,4.3932814) q[7],q[3];
cswap q[9],q[2],q[8];
u3(2.4244414,5.2461863,3.8107765) q[6];
x q[0];
tdg q[5];
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