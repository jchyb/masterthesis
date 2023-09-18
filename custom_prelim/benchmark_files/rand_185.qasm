OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[5];
u2(4.3000579,0.83505062) q[8];
ccx q[6],q[0],q[2];
ccx q[3],q[7],q[4];
rzz(2.0855996) q[9],q[1];
ccx q[5],q[8],q[0];
u3(3.1106744,0.99302158,3.5735431) q[3];
ccx q[7],q[6],q[4];
ch q[1],q[2];
u3(5.5833058,6.2186293,4.2182865) q[9];
rzz(2.3849599) q[1],q[6];
ccx q[2],q[5],q[7];
ch q[3],q[9];
ccx q[0],q[4],q[8];
rzz(5.1815667) q[7],q[2];
cswap q[3],q[5],q[1];
ccx q[6],q[9],q[0];
t q[8];
u2(3.5493957,3.6468941) q[4];
cswap q[7],q[9],q[0];
ccx q[3],q[4],q[6];
cz q[2],q[5];
cu3(6.0915623,4.2825326,0.70615915) q[1],q[8];
rzz(4.6403061) q[2],q[4];
cswap q[9],q[6],q[1];
ccx q[3],q[0],q[5];
cx q[8],q[7];
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