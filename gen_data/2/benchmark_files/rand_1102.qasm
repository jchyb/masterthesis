OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(3.5193371) q[7];
sdg q[6];
u2(4.8634218,1.1543769) q[0];
cswap q[9],q[4],q[1];
rzz(5.7568104) q[3],q[8];
u1(3.011893) q[2];
s q[5];
cu3(4.2717493,2.7176825,1.761946) q[7],q[8];
ccx q[1],q[0],q[5];
u3(0.86102807,1.2357121,0.88937986) q[9];
rx(2.2082963) q[4];
cu3(1.1835385,5.1236722,1.734572) q[2],q[6];
u2(0.43028301,0.86291608) q[3];
u1(4.6043036) q[9];
cswap q[1],q[0],q[5];
cswap q[2],q[3],q[8];
cu1(2.7706625) q[4],q[6];
rx(4.5528184) q[7];
ch q[6],q[0];
ccx q[8],q[9],q[3];
rzz(5.6904379) q[7],q[5];
u1(5.6162317) q[1];
u3(2.21017,1.8403163,2.5717343) q[4];
rx(2.3788101) q[2];
ccx q[3],q[4],q[8];
cswap q[0],q[5],q[6];
u3(2.883225,3.8527998,1.9910626) q[9];
id q[1];
id q[2];
rz(1.2943598) q[7];
ccx q[5],q[6],q[9];
cu3(2.1193099,5.9994954,5.227267) q[2],q[7];
cx q[0],q[4];
t q[8];
rz(0.16878209) q[1];
id q[3];
rzz(5.1660491) q[1],q[9];
ch q[4],q[0];
y q[7];
ch q[3],q[8];
u1(3.6080851) q[6];
u2(1.1522631,1.8530971) q[5];
ry(0.90294533) q[2];
ccx q[0],q[3],q[2];
t q[6];
z q[8];
cu3(3.678937,3.0819397,0.07040192) q[7],q[4];
u1(2.0293401) q[1];
ch q[9],q[5];
cswap q[1],q[2],q[7];
ccx q[8],q[5],q[0];
cu3(4.7785385,0.27658674,0.53582349) q[4],q[3];
z q[6];
z q[9];
cu3(4.1549248,1.066142,4.8024738) q[9],q[4];
rz(6.0150815) q[2];
id q[0];
cswap q[8],q[3],q[6];
u2(4.3149362,5.6925124) q[5];
t q[7];
u1(5.4153141) q[1];
ry(0.69459503) q[8];
ccx q[0],q[3],q[7];
rzz(0.24989454) q[5],q[1];
rz(3.4054732) q[2];
cswap q[4],q[9],q[6];
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