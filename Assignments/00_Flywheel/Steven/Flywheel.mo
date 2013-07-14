model Flywheel
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 3) annotation(Placement(visible = true, transformation(origin = {-19.7002,54.3897}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {10.7066,-6.85225}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 0.075) annotation(Placement(visible = true, transformation(origin = {19.7115,54.3897}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(experiment(StartTime = 0.0, StopTime = 2.0, Tolerance = 0.000001));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor1(C = 0.000015) annotation(Placement(visible = true, transformation(origin = {57.3762,53.9615}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.PulseVoltage pulsevoltage1(V = 5, width = 1 / 2, period = 1 / 2) annotation(Placement(visible = true, transformation(origin = {-41.7582,29.011}, extent = {{-12,12},{12,-12}}, rotation = -90)));
equation
  connect(pulsevoltage1.n,ground1.p) annotation(Line(points = {{-41.7582,17.011},{10.989,17.011},{10.989,5.14775},{10.7066,5.14775}}));
  connect(resistor1.p,pulsevoltage1.p) annotation(Line(points = {{-31.7002,54.3897},{-42.1978,54.3897},{-42.1978,41.011},{-41.7582,41.011}}));
  connect(capacitor1.p,inductor1.n) annotation(Line(points = {{45.3762,53.9615},{31.2634,53.9615},{31.2634,54.3897},{31.7115,54.3897}}));
  connect(ground1.p,capacitor1.n) annotation(Line(points = {{10.7066,5.14775},{10.7066,5.56745},{69.8073,5.56745},{69.8073,53.9615},{69.3762,53.9615}}));
  connect(resistor1.n,inductor1.p) annotation(Line(points = {{-7.7002,54.3897},{-5.13919,54.3897},{-5.13919,54.3897},{7.71146,54.3897},{7.71146,54.3897}}));
end Flywheel;

