OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
ccx q[0],q[3],q[1];
u1(1.6544734) q[4];
h q[2];
ccx q[2],q[4],q[0];
cz q[1],q[3];
rx(1.2599721) q[1];
cu3(2.611041,1.5243054,6.0370464) q[4],q[2];
rz(1.8401583) q[3];
id q[0];
cy q[3],q[1];
ccx q[4],q[2],q[0];
cswap q[1],q[2],q[4];
cu3(2.2697966,5.6270667,0.96845883) q[0],q[3];
crz(3.7610614) q[0],q[2];
cu1(5.663362) q[3],q[4];
u3(3.5316674,2.2142497,0.76849732) q[1];
ch q[3],q[1];
h q[4];
crz(2.2536707) q[2],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];