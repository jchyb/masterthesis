OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
u3(6.1902796,1.5215359,0.20790123) q[0];
z q[0];
u3(4.6817711,1.5137959,3.3428666) q[0];
x q[0];
rz(3.2448791) q[0];
rz(5.3663653) q[0];
sdg q[0];
u2(5.1276214,2.58598) q[0];
measure q[0] -> c[0];