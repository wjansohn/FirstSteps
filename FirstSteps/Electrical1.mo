within FirstSteps;
// Kommentar fuer GitTest
model Electrical1
parameter Real R = 20 "Resistance";
parameter Real L = 2 "Inductance";
parameter Real v = 20 "Total DC Voltage";
Real vR "Voltage drop at Resistor";
Real vL "Voltage drop of inductor";
Real i "current";
initial equation
i = 0;
equation
v = vR + vL;
vR = R*i;
vL = L*der(i);
end Electrical1;
