OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[7],q[2];
ch q[0],q[4];
ch q[9],q[5];
ccx q[1],q[6],q[3];
sdg q[1];
cswap q[3],q[6],q[9];
s q[0];
ccx q[5],q[7],q[4];
s q[2];
u3(3.7437794,4.3629473,3.6963119) q[8];
ch q[1],q[0];
u2(5.0168958,4.0279051) q[3];
cu1(4.8466378) q[8],q[5];
x q[7];
cswap q[6],q[4],q[2];
sdg q[9];
cy q[9],q[4];
cswap q[1],q[2],q[7];
t q[6];
ccx q[5],q[0],q[8];
rz(4.8593826) q[3];
cswap q[3],q[5],q[7];
ccx q[1],q[8],q[0];
ccx q[6],q[9],q[4];
y q[2];
cu3(4.4309974,2.6796516,2.3062201) q[7],q[2];
z q[8];
ch q[0],q[6];
rz(4.846315) q[4];
cu1(5.5226318) q[3],q[5];
id q[9];
u2(3.0231883,6.0208558) q[1];
cu1(5.1455162) q[0],q[9];
ccx q[5],q[6],q[7];
ry(5.4851629) q[4];
swap q[1],q[2];
crz(5.4425427) q[3],q[8];
cu3(4.2267357,4.2324768,1.4465334) q[8],q[0];
cu3(1.4918395,5.706247,5.9382906) q[1],q[4];
cu3(2.0320527,1.9482501,0.85294602) q[5],q[9];
id q[7];
cu3(5.9222879,5.4297661,1.4515913) q[3],q[2];
t q[6];
u2(4.2108161,5.3209544) q[7];
z q[0];
ccx q[9],q[1],q[5];
ccx q[8],q[3],q[4];
cx q[6],q[2];
ccx q[2],q[7],q[5];
ccx q[0],q[3],q[9];
u2(0.73276239,2.7069989) q[6];
cswap q[1],q[8],q[4];
cswap q[4],q[7],q[6];
y q[2];
u2(6.1951358,4.6463565) q[3];
cswap q[9],q[0],q[1];
tdg q[5];
rz(0.1756053) q[8];
ccx q[8],q[7],q[6];
cu1(5.6192371) q[4],q[3];
cx q[9],q[1];
y q[2];
cz q[5],q[0];
crz(3.5887797) q[4],q[8];
u1(1.7225) q[5];
ccx q[9],q[1],q[0];
cswap q[6],q[7],q[2];
rx(3.2219507) q[3];
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