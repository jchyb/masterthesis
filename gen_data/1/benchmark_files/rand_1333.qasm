OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[6];
y q[8];
ch q[7],q[5];
rz(4.5900964) q[9];
cswap q[4],q[1],q[2];
cu3(0.5527616,1.770621,0.55231981) q[0],q[3];
u3(1.9391353,6.2123917,6.1537072) q[1];
swap q[6],q[2];
cu3(5.9163048,0.40419204,0.041151125) q[5],q[9];
cswap q[4],q[3],q[7];
cx q[0],q[8];
ry(0.94727605) q[7];
rx(2.3830431) q[0];
ry(3.7588062) q[3];
cu1(3.722729) q[6],q[2];
cu3(0.95676489,6.2676156,4.2962152) q[9],q[1];
ch q[5],q[8];
rx(0.87863123) q[4];
cx q[8],q[2];
ccx q[3],q[9],q[5];
ccx q[7],q[0],q[4];
z q[6];
rx(1.1324406) q[1];
swap q[6],q[8];
ccx q[2],q[7],q[0];
swap q[1],q[3];
z q[9];
cu1(2.6389834) q[5],q[4];
cx q[4],q[2];
cswap q[1],q[8],q[5];
ccx q[7],q[6],q[3];
id q[9];
id q[0];
cz q[8],q[4];
ccx q[3],q[5],q[9];
crz(0.45779375) q[6],q[2];
cswap q[0],q[1],q[7];
cswap q[0],q[8],q[6];
ccx q[3],q[7],q[9];
ccx q[4],q[5],q[2];
id q[1];
h q[2];
u2(1.4794067,0.34591191) q[9];
cswap q[5],q[3],q[6];
swap q[1],q[0];
ccx q[8],q[4],q[7];
u2(0.5816638,3.6434374) q[1];
id q[2];
cy q[7],q[6];
s q[4];
cu1(1.440035) q[0],q[8];
ry(3.5731542) q[3];
y q[5];
rx(2.547252) q[9];
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