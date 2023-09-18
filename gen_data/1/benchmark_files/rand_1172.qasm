OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[5],q[7];
s q[2];
ccx q[6],q[8],q[9];
s q[1];
cy q[3],q[4];
ry(4.3453731) q[4];
swap q[3],q[1];
cu1(3.4164416) q[9],q[6];
rz(0.98338757) q[2];
rx(5.2501834) q[7];
u2(5.9029141,0.3515414) q[8];
crz(5.2818896) q[0],q[5];
y q[5];
cu3(2.7534305,5.094906,3.7372202) q[7],q[6];
id q[0];
ccx q[3],q[1],q[2];
crz(3.5168324) q[4],q[8];
y q[9];
u1(0.53299491) q[2];
cswap q[9],q[6],q[3];
u1(1.8121107) q[1];
cy q[4],q[7];
ry(5.4151064) q[5];
u1(4.8081074) q[8];
u1(5.6491925) q[0];
z q[0];
cu3(0.31487781,1.4694199,0.46876224) q[7],q[6];
cswap q[4],q[3],q[1];
rz(3.9549527) q[8];
s q[9];
crz(5.9231995) q[2],q[5];
ccx q[1],q[8],q[4];
cy q[9],q[3];
crz(4.1540103) q[5],q[7];
cu3(1.3309958,3.2787679,5.7410593) q[2],q[6];
s q[0];
cy q[1],q[3];
cu3(0.33765559,1.3166704,2.3047039) q[0],q[8];
crz(1.0564497) q[6],q[7];
cu3(4.4628999,3.0432696,3.7931174) q[9],q[5];
cu3(0.28706158,1.1430841,6.0052888) q[2],q[4];
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