OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(0.79995343) q[5],q[4];
cx q[9],q[3];
cswap q[8],q[0],q[2];
s q[6];
cu3(1.5234291,4.2849829,1.23941) q[1],q[7];
s q[9];
t q[1];
u3(4.8794305,3.6804517,0.95939983) q[3];
cswap q[0],q[6],q[2];
cu3(1.4702335,4.9386632,0.91151357) q[7],q[4];
rzz(4.4177625) q[5],q[8];
ccx q[8],q[9],q[0];
crz(4.1017626) q[5],q[7];
cx q[4],q[2];
u3(3.4219018,4.1298185,1.2422565) q[1];
z q[3];
tdg q[6];
cy q[1],q[5];
crz(3.853614) q[7],q[3];
swap q[9],q[8];
cswap q[6],q[2],q[0];
u3(5.2043353,0.6566686,3.2117872) q[4];
cu1(2.160847) q[1],q[8];
crz(3.1573245) q[7],q[0];
cswap q[2],q[6],q[9];
cswap q[4],q[3],q[5];
cswap q[3],q[7],q[8];
cswap q[4],q[5],q[0];
cswap q[9],q[1],q[2];
u3(1.6248165,1.905547,4.4278426) q[6];
cu1(3.9605823) q[1],q[0];
tdg q[9];
tdg q[4];
ccx q[2],q[8],q[5];
ccx q[3],q[6],q[7];
cswap q[0],q[9],q[5];
cswap q[1],q[7],q[8];
t q[2];
u3(2.3671271,4.3486642,3.5050289) q[4];
cx q[3],q[6];
ccx q[9],q[3],q[8];
cswap q[4],q[5],q[1];
rz(2.3741072) q[0];
cswap q[2],q[7],q[6];
cswap q[9],q[4],q[0];
swap q[8],q[1];
cswap q[5],q[6],q[7];
cu1(2.1728857) q[2],q[3];
ccx q[6],q[3],q[4];
cswap q[2],q[8],q[0];
z q[5];
crz(3.4676991) q[9],q[7];
rz(4.3539077) q[1];
u2(2.9571218,1.426809) q[9];
cswap q[5],q[8],q[2];
cy q[4],q[6];
cx q[3],q[0];
u3(3.9845766,1.0550243,5.875284) q[7];
t q[1];
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