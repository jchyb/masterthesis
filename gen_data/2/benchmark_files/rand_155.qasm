OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(3.424077) q[6];
cu1(4.9481394) q[4],q[9];
tdg q[1];
crz(0.67448656) q[2],q[3];
ry(1.147737) q[0];
cx q[8],q[5];
rz(2.0310247) q[7];
u3(4.3870616,4.1622328,1.4441668) q[4];
cswap q[7],q[8],q[6];
ccx q[3],q[9],q[1];
cswap q[5],q[2],q[0];
y q[2];
ccx q[6],q[0],q[3];
swap q[8],q[1];
rx(0.39810256) q[5];
crz(4.0817484) q[7],q[4];
s q[9];
ry(2.7001568) q[3];
cu3(5.5454459,0.71742589,3.198774) q[9],q[1];
z q[2];
cy q[8],q[6];
cz q[7],q[5];
crz(4.2396064) q[0],q[4];
ccx q[9],q[2],q[6];
ccx q[1],q[4],q[0];
cy q[8],q[5];
tdg q[3];
ry(5.8249247) q[7];
crz(1.9647865) q[4],q[6];
id q[1];
crz(6.191621) q[7],q[9];
z q[3];
ccx q[2],q[5],q[8];
x q[0];
rz(1.2515496) q[7];
ccx q[4],q[0],q[2];
cswap q[8],q[6],q[9];
cu1(3.5020459) q[1],q[3];
u3(3.1026196,6.100865,4.5804) q[5];
ccx q[0],q[9],q[6];
cu1(4.8310205) q[7],q[3];
cswap q[5],q[4],q[8];
y q[1];
id q[2];
ccx q[6],q[0],q[9];
crz(2.7276647) q[2],q[7];
cu3(3.0983174,6.2437859,1.5161677) q[5],q[3];
rx(4.4959873) q[8];
sdg q[4];
z q[1];
z q[6];
ccx q[0],q[4],q[8];
cswap q[5],q[1],q[2];
cy q[3],q[7];
rz(3.3623718) q[9];
cy q[8],q[0];
u3(5.4201234,5.9892182,5.5889865) q[9];
h q[7];
swap q[1],q[3];
swap q[2],q[4];
rzz(3.2926583) q[5],q[6];
x q[8];
cx q[6],q[2];
cx q[3],q[5];
cswap q[7],q[4],q[9];
t q[0];
u3(5.2251282,0.5787617,1.6302561) q[1];
ccx q[8],q[2],q[5];
rz(2.1290731) q[0];
cy q[9],q[1];
u3(4.2283985,2.6789395,1.3645715) q[4];
cx q[6],q[7];
t q[3];
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