OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[2],q[3],q[4];
id q[0];
cu1(4.8803928) q[7],q[5];
cswap q[1],q[8],q[6];
s q[9];
s q[0];
tdg q[4];
t q[9];
cswap q[1],q[3],q[7];
cy q[5],q[6];
rz(6.2649248) q[8];
u3(1.5354283,1.9127292,4.5015591) q[2];
sdg q[2];
rz(1.9940358) q[9];
rz(3.9332725) q[8];
ccx q[1],q[6],q[0];
rz(2.1489722) q[4];
cswap q[7],q[5],q[3];
crz(5.6173826) q[4],q[6];
crz(5.6423389) q[8],q[2];
cswap q[9],q[0],q[3];
tdg q[1];
cu3(1.4661635,5.4847699,3.405248) q[7],q[5];
x q[3];
cu1(1.3108934) q[1],q[4];
cswap q[9],q[2],q[7];
cy q[6],q[0];
sdg q[8];
s q[5];
ry(2.0252676) q[3];
cu1(0.230616) q[8],q[9];
cu1(0.55020928) q[0],q[2];
swap q[1],q[5];
y q[6];
u1(4.6741344) q[7];
x q[4];
swap q[2],q[9];
u1(4.1439612) q[6];
cu3(3.660257,5.4457253,3.529171) q[0],q[1];
rzz(2.2389286) q[4],q[7];
cswap q[3],q[5],q[8];
cu3(0.15536434,4.3208758,0.94563396) q[7],q[5];
ccx q[1],q[3],q[9];
ch q[4],q[0];
tdg q[6];
cu3(3.2435582,1.3028101,4.2043078) q[2],q[8];
crz(2.5034329) q[0],q[3];
ccx q[8],q[9],q[1];
rzz(0.55258615) q[5],q[6];
t q[7];
swap q[4],q[2];
u1(4.3286107) q[9];
ch q[6],q[2];
cz q[8],q[5];
cx q[7],q[0];
rz(2.2935464) q[3];
cu1(5.0664228) q[4],q[1];
u3(6.1389458,2.9253443,0.39803176) q[6];
cy q[5],q[8];
u2(0.42647946,3.8996615) q[7];
crz(5.9821249) q[0],q[3];
u3(4.9969079,5.645381,0.55993605) q[2];
cswap q[4],q[9],q[1];
crz(5.7791817) q[4],q[3];
rx(2.107343) q[7];
cx q[6],q[9];
cy q[2],q[5];
rzz(4.8171064) q[8],q[0];
ry(0.52523018) q[1];
ry(2.5979275) q[2];
cswap q[8],q[9],q[4];
rzz(1.8632456) q[7],q[3];
cswap q[1],q[6],q[5];
t q[0];
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