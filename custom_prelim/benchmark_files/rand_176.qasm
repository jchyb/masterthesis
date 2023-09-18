OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(3.6124059) q[3],q[8];
cswap q[6],q[7],q[2];
y q[4];
cu3(2.8405302,1.4598991,4.0502643) q[9],q[0];
t q[1];
u3(5.7476404,2.8198578,0.049057452) q[5];
u3(2.4710975,3.5160243,5.5203114) q[2];
cu3(4.5653907,5.7516185,2.0232784) q[9],q[1];
cu1(3.3744669) q[0],q[3];
cswap q[5],q[6],q[4];
tdg q[7];
h q[8];
cswap q[6],q[0],q[3];
u3(2.4709002,2.7934357,1.999192) q[1];
cswap q[8],q[4],q[9];
swap q[5],q[2];
y q[7];
u1(2.6034753) q[1];
rz(4.0673784) q[6];
cswap q[4],q[5],q[7];
ch q[2],q[0];
cy q[9],q[8];
x q[3];
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