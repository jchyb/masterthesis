OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
ccx q[0],q[2],q[1];
swap q[2],q[1];
x q[0];
ccx q[2],q[0],q[1];
cu3(2.6318712,4.6465216,4.2100777) q[0],q[1];
u2(3.8716284,4.7474049) q[2];
u2(4.6800977,5.2406602) q[1];
cz q[2],q[0];
u1(5.3951271) q[0];
z q[1];
rz(6.0548111) q[2];
rzz(2.9867416) q[0],q[1];
z q[2];
rz(4.5338181) q[1];
ch q[0],q[2];
cu3(3.3902182,3.6831044,1.3377506) q[1],q[2];
rx(4.7383711) q[0];
rzz(3.9302137) q[1],q[0];
u3(5.8297711,0.74472901,1.008568) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
