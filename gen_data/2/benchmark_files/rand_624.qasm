OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[9],q[0],q[7];
u2(1.7198576,2.5652256) q[4];
ccx q[5],q[3],q[8];
cz q[6],q[2];
u3(5.6849436,2.0817156,3.8270791) q[1];
ccx q[6],q[0],q[8];
cu1(3.6190471) q[2],q[4];
ccx q[3],q[5],q[1];
cu1(6.1495447) q[7],q[9];
rzz(3.2329455) q[7],q[3];
ccx q[5],q[9],q[2];
crz(1.3887729) q[1],q[0];
cy q[4],q[6];
x q[8];
ccx q[7],q[3],q[2];
ch q[5],q[0];
id q[1];
cu1(4.1406299) q[4],q[9];
cu3(0.10746,0.21115912,4.3144628) q[8],q[6];
ccx q[8],q[0],q[6];
cz q[5],q[4];
cy q[2],q[3];
rz(4.8553411) q[1];
cu3(4.5628019,5.1618804,5.9959408) q[7],q[9];
u3(1.2914229,4.5769782,1.0550825) q[5];
cswap q[8],q[7],q[4];
cswap q[1],q[3],q[2];
h q[0];
z q[6];
u2(2.1217209,4.7060328) q[9];
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