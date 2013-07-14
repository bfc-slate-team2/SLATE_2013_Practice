model MoonLanding
  import ApolloLander.*;
  Rocket apollo(name = "Apollo", mass(start = 1038.358));
  CelestialBody moon(name = "Moon", mass = 7.382e+22, radius = 1738000.0);
  annotation(experiment(StartTime = 0.0, StopTime = 150.0, Tolerance = 0.000001));
equation
  apollo.gravity = (moon.g * moon.mass) / (apollo.altitude + moon.radius) ^ 2;
end MoonLanding;

