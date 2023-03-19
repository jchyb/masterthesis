OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
cu1(4.9671932) q[0],q[1];
ry(5.2075973) q[1];
u3(5.3618127,3.2733089,4.6544714) q[0];
z q[0];
z q[1];
cz q[0],q[1];
cu3(4.1816965,1.0665928,1.5194506) q[0],q[1];
sdg q[1];
y q[0];
cu3(0.99656794,2.5404661,5.6989857) q[0],q[1];
cu1(2.3289011) q[0],q[1];
swap q[0],q[1];
rzz(4.3186969) q[0],q[1];
u3(3.1930139,3.4050859,3.2740138) q[0];
y q[1];
y q[1];
z q[0];
x q[1];
ry(0.013681827) q[0];
ch q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];