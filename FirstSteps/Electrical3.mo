within FirstSteps;

model Electrical3
// Parameter are constant variables

parameter Modelica.Units.SI.Resistance R = 10 "Resistance";
parameter Modelica.Units.SI.Impedance L= 2 "Inductance";
parameter Modelica.Units.SI.Voltage v = 20 "Total DC Voltage";
Modelica.Units.SI.Voltage vR "Voltage drop at Resistor";
Modelica.Units.SI.Voltage vL "Voltage drop of inductor";
Modelica.Units.SI.Current i"current";
initial equation
i = 0;
equation
v = vR + vL;
vR = R*i;
vL = L*der(i);

end Electrical3;
