OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
h q[0];
t q[4];
s q[6];
cu3(0.17556647,0.081626781,2.819426) q[3],q[5];
crz(1.6877595) q[1],q[2];
u3(1.5116103,2.0891774,4.4547243) q[1];
cu1(2.338397) q[4],q[5];
ccx q[6],q[0],q[3];
t q[2];
cswap q[5],q[6],q[2];
rzz(0.62738669) q[4],q[3];
swap q[0],q[1];
rzz(2.6557333) q[4],q[5];
y q[3];
ccx q[1],q[6],q[2];
sdg q[0];
ccx q[4],q[6],q[1];
cu1(4.2426676) q[2],q[5];
crz(4.686698) q[3],q[0];
y q[2];
s q[4];
cy q[3],q[6];
ccx q[1],q[5],q[0];
ccx q[2],q[3],q[1];
ccx q[0],q[4],q[5];
tdg q[6];
cswap q[1],q[2],q[5];
cu1(4.108232) q[4],q[6];
id q[3];
rx(1.9426744) q[0];
cy q[6],q[2];
x q[1];
z q[4];
cswap q[3],q[0],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];