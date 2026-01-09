within FirstSteps;
// Parameter are constant variables
model Electrical2
parameter Real R(quantity="resitance",unit="Ohm") = 10 "Resistance";
parameter Real L(quantity="inductance",unit="G") = 2 "Inductance";
parameter Real v(quantity="voltage",unit="V") = 20 "Total DC Voltage";
Real vR(quantity="voltage",unit="V") "Voltage drop at Resistor";
Real vL(quantity="voltage",unit="V") "Voltage drop of inductor";
Real i(quantity="current",unit="A") "current";
initial equation
i = 0;
equation
v = vR + vL;
vR = R*i;
vL = L*der(i);
end Electrical2;
