OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ccx q[3],q[0],q[4];
cu1(3.1991125) q[5],q[2];
u1(4.5649853) q[1];
cswap q[3],q[4],q[2];
id q[5];
z q[0];
s q[1];
ccx q[5],q[0],q[2];
cz q[3],q[1];
y q[4];
ccx q[2],q[5],q[0];
cu3(1.9031306,1.6459959,2.6557652) q[3],q[1];
u2(5.2486332,1.6531052) q[4];
cswap q[0],q[4],q[2];
u3(2.499324,2.2098697,0.44794781) q[3];
crz(4.5410754) q[1],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
