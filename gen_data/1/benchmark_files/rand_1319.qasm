OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[4],q[6];
rzz(3.115803) q[7],q[0];
cswap q[3],q[1],q[8];
ccx q[2],q[5],q[9];
u1(4.1265957) q[4];
cu3(2.9119263,2.8927799,3.7834398) q[7],q[8];
rzz(0.86463913) q[3],q[0];
cswap q[5],q[9],q[1];
cu3(1.5792016,4.8387576,5.1177769) q[6],q[2];
cu3(5.2561504,2.9417159,4.9631256) q[4],q[2];
ccx q[6],q[3],q[7];
h q[8];
swap q[9],q[0];
cu3(5.6725479,4.6334577,4.3867648) q[1],q[5];
ccx q[4],q[6],q[7];
ccx q[1],q[8],q[2];
ccx q[0],q[9],q[3];
rz(4.5158243) q[5];
z q[8];
u2(0.84948908,4.9923111) q[0];
ccx q[4],q[5],q[3];
cswap q[7],q[9],q[1];
rzz(4.9454686) q[2],q[6];
u3(3.1477239,0.18146781,2.609923) q[4];
sdg q[2];
cu3(4.0457749,0.0044864804,1.9842841) q[5],q[0];
cswap q[7],q[1],q[6];
rzz(5.9358837) q[8],q[9];
t q[3];
cswap q[9],q[7],q[5];
rzz(5.2811582) q[3],q[2];
x q[8];
rz(5.8918588) q[1];
u1(0.54349546) q[4];
crz(4.2704734) q[6],q[0];
cswap q[4],q[2],q[7];
x q[8];
crz(5.1685476) q[3],q[6];
cswap q[9],q[0],q[1];
id q[5];
t q[9];
ccx q[2],q[4],q[0];
y q[5];
ccx q[3],q[8],q[7];
id q[6];
sdg q[1];
cswap q[3],q[2],q[8];
u3(3.4716586,5.1107439,5.7336326) q[7];
cswap q[5],q[6],q[4];
ccx q[0],q[9],q[1];
swap q[1],q[4];
cu3(5.1324587,4.2936844,0.90262931) q[6],q[5];
ccx q[3],q[9],q[0];
h q[2];
h q[8];
sdg q[7];
ccx q[1],q[7],q[8];
ccx q[5],q[2],q[6];
u1(4.8263029) q[3];
cswap q[0],q[9],q[4];
rz(4.3144986) q[3];
cswap q[7],q[2],q[4];
crz(5.313516) q[5],q[9];
z q[0];
crz(5.4380858) q[6],q[8];
u2(4.1296988,6.0239076) q[1];
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