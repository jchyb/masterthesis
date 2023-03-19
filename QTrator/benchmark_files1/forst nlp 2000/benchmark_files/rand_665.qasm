OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
ch q[2],q[0];
t q[3];
rx(0.15144285) q[1];
y q[1];
x q[0];
sdg q[3];
y q[2];
cswap q[1],q[3],q[2];
t q[0];
y q[0];
swap q[1],q[2];
rx(3.7848842) q[3];
cu3(3.8429155,4.4271626,3.5598105) q[1],q[3];
tdg q[0];
t q[2];
rz(5.1228001) q[1];
cswap q[3],q[2],q[0];
swap q[2],q[0];
cu3(1.1069049,5.1954719,0.52971307) q[3],q[1];
cswap q[3],q[2],q[0];
x q[1];
rzz(5.2688375) q[3],q[2];
rz(5.3491552) q[1];
rz(4.9821021) q[0];
ccx q[2],q[1],q[3];
z q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
