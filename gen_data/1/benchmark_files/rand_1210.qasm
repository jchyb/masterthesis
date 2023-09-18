OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[0],q[9];
ccx q[1],q[5],q[6];
u2(3.8511081,1.2878071) q[2];
cswap q[3],q[7],q[8];
z q[9];
h q[2];
cz q[6],q[1];
x q[4];
cswap q[5],q[8],q[0];
ry(4.2459977) q[7];
u3(2.0124476,3.4741574,6.2540151) q[3];
ccx q[1],q[9],q[0];
cswap q[2],q[3],q[4];
cswap q[8],q[7],q[6];
y q[5];
ccx q[7],q[9],q[2];
sdg q[1];
cswap q[3],q[5],q[6];
s q[0];
rx(1.1375864) q[8];
ry(5.869549) q[4];
ccx q[6],q[1],q[8];
s q[2];
rzz(3.2508807) q[9],q[5];
cswap q[0],q[4],q[3];
u1(5.7534782) q[7];
z q[1];
ccx q[2],q[5],q[0];
cswap q[4],q[7],q[6];
rzz(2.5397998) q[9],q[8];
y q[3];
sdg q[0];
u1(5.1520507) q[9];
crz(0.77517401) q[5],q[6];
ccx q[3],q[8],q[2];
rx(4.765803) q[7];
cx q[1],q[4];
x q[4];
u3(2.8387147,3.9348532,1.0863613) q[1];
ccx q[2],q[5],q[6];
swap q[9],q[8];
cx q[7],q[3];
tdg q[0];
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