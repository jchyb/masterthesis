OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[7];
cu3(0.79399674,2.4115193,0.528129) q[1],q[2];
ccx q[4],q[0],q[5];
h q[9];
swap q[3],q[6];
ry(3.5577377) q[8];
ccx q[9],q[4],q[3];
h q[7];
u2(2.4324623,4.9237437) q[8];
ccx q[0],q[2],q[6];
tdg q[5];
h q[1];
t q[0];
cy q[1],q[9];
ccx q[7],q[2],q[6];
ccx q[8],q[3],q[5];
ry(4.1838014) q[4];
tdg q[1];
rz(4.9604485) q[7];
cswap q[2],q[4],q[9];
crz(3.939204) q[8],q[6];
cswap q[5],q[3],q[0];
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
