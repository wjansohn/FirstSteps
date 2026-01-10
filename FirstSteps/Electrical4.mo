within FirstSteps;

model Electrical4 "R-L series circuit, graphical implementation"
extends Modelica.Icons.Example;
// Parameter are constant variables
parameter Modelica.Units.SI.Resistance R = 10 "Resistance";
parameter Modelica.Units.SI.Impedance L= 2 "Inductance";
parameter Modelica.Units.SI.Voltage v = 20 "Total DC Voltage";
// Alias variables to simplify result access
Modelica.Units.SI.Voltage vR = resistor.v "Voltage drop of resistor";
Modelica.Units.SI.Voltage vL = inductor.v "Voltage drop of inductor";
Modelica.Units.SI.Current i = resistor.i "Current" ;
// Model generated in Diagram View
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = R)  annotation(
    Placement(transformation(origin = {-48, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = L)  annotation(
    Placement(transformation(origin = {30, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-80, -70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V = v)  annotation(
    Placement(transformation(origin = {-80, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{-38, 40}, {20, 40}}, color = {0, 0, 255}));
  connect(constantVoltage.p, resistor.p) annotation(
    Line(points = {{-80, -2}, {-76, -2}, {-76, 40}, {-58, 40}}, color = {0, 0, 255}));
  connect(inductor.n, constantVoltage.n) annotation(
    Line(points = {{40, 40}, {66, 40}, {66, -44}, {-80, -44}, {-80, -22}}, color = {0, 0, 255}));
  connect(ground.p, constantVoltage.n) annotation(
    Line(points = {{-80, -60}, {-80, -22}}, color = {0, 0, 255}));
end Electrical4;
