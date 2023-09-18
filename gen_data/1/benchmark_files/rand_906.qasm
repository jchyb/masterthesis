OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[9],q[5];
ry(4.1154182) q[2];
tdg q[7];
u2(3.3946135,2.2861234) q[1];
cswap q[0],q[6],q[4];
rx(2.1940643) q[3];
cswap q[5],q[6],q[7];
crz(0.53601087) q[4],q[8];
cx q[9],q[2];
cy q[3],q[0];
x q[1];
u3(4.2463138,3.4336343,1.7781611) q[7];
x q[6];
cx q[3],q[9];
sdg q[0];
y q[1];
s q[2];
ch q[4],q[5];
z q[8];
cu3(1.684764,4.5307568,1.2459429) q[2],q[5];
cx q[6],q[7];
u3(2.6525659,4.1807194,1.5092817) q[0];
cu1(4.0706122) q[3],q[9];
cswap q[8],q[1],q[4];
cswap q[0],q[1],q[5];
cu3(4.3805224,1.0397645,3.7696411) q[2],q[9];
tdg q[7];
rzz(3.1732574) q[3],q[4];
u2(6.1270081,1.1483951) q[6];
u1(1.9360328) q[8];
cx q[9],q[8];
ccx q[4],q[5],q[6];
ccx q[3],q[2],q[7];
swap q[1],q[0];
cswap q[8],q[0],q[6];
ch q[9],q[1];
cswap q[4],q[3],q[5];
cx q[2],q[7];
id q[0];
y q[3];
u3(5.2767988,0.9636785,2.2393488) q[5];
ch q[8],q[6];
cy q[2],q[9];
h q[7];
swap q[4],q[1];
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