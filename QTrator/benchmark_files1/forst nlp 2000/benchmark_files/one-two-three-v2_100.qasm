OPENQASM 2.0; include "qelib1.inc"; qreg q[16]; creg c[16]; creg meas[16]; x q[0]; cx q[2],q[0]; t q[0]; h q[2]; t q[2]; t q[3]; cx q[4],q[1]; t q[1]; cx q[3],q[1]; cx q[2],q[3]; cx q[1],q[2]; t q[2]; tdg q[3]; cx q[1],q[3]; tdg q[1]; tdg q[3]; cx q[2],q[3]; cx q[1],q[2]; h q[2]; t q[2]; cx q[0],q[2]; cx q[3],q[1]; cx q[1],q[3]; t q[1]; h q[3]; t q[3]; cx q[3],q[0]; tdg q[0]; cx q[2],q[3]; cx q[2],q[0]; tdg q[0]; tdg q[2]; t q[3]; cx q[3],q[0]; cx q[2],q[3]; cx q[0],q[2]; t q[0]; h q[3]; cx q[3],q[2]; t q[2]; cx q[0],q[2]; t q[3]; cx q[1],q[3]; h q[4]; t q[4]; cx q[4],q[1]; tdg q[1]; cx q[3],q[4]; cx q[3],q[1]; tdg q[1]; tdg q[3]; t q[4]; cx q[4],q[1]; cx q[3],q[4]; cx q[1],q[3]; h q[3]; t q[3]; cx q[3],q[0]; tdg q[0]; cx q[2],q[3]; cx q[2],q[0]; tdg q[0]; tdg q[2]; t q[3]; cx q[3],q[0]; cx q[2],q[3]; cx q[0],q[2]; h q[3]; h q[4]; barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15]; barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15]; measure q[0] -> meas[0]; measure q[1] -> meas[1]; measure q[2] -> meas[2]; measure q[3] -> meas[3]; measure q[4] -> meas[4]; measure q[5] -> meas[5]; measure q[6] -> meas[6]; measure q[7] -> meas[7]; measure q[8] -> meas[8]; measure q[9] -> meas[9]; measure q[10] -> meas[10]; measure q[11] -> meas[11]; measure q[12] -> meas[12]; measure q[13] -> meas[13]; measure q[14] -> meas[14]; measure q[15] -> meas[15]; 