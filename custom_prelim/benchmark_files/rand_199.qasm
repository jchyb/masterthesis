OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[7];
ccx q[2],q[8],q[1];
crz(3.7919373) q[4],q[9];
ccx q[6],q[0],q[3];
z q[5];
s q[0];
cu3(2.3861713,3.3668899,1.3259989) q[1],q[2];
ccx q[5],q[8],q[3];
swap q[4],q[7];
ch q[6],q[9];
u3(6.1932942,1.5427541,3.7930815) q[9];
sdg q[5];
ccx q[1],q[6],q[3];
ccx q[2],q[7],q[0];
s q[4];
rz(3.60843) q[8];
y q[1];
ccx q[5],q[6],q[3];
cswap q[9],q[2],q[7];
cswap q[4],q[0],q[8];
cswap q[2],q[4],q[5];
id q[6];
ch q[7],q[1];
ccx q[0],q[8],q[9];
s q[3];
ch q[6],q[0];
ccx q[7],q[8],q[9];
ccx q[3],q[5],q[4];
crz(5.8350673) q[2],q[1];
rzz(5.9821391) q[4],q[8];
cu3(4.8981431,0.021238017,2.297485) q[9],q[3];
cswap q[0],q[7],q[2];
id q[5];
cz q[1],q[6];
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