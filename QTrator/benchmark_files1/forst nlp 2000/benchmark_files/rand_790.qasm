OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
rx(2.7705972) q[0];
y q[1];
cu3(2.4000244,3.1491606,2.4818075) q[0],q[1];
crz(6.0562492) q[1],q[0];
rzz(5.8538608) q[0],q[1];
id q[0];
h q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
