within Proyect_MO;

package Object_principals
  model System
  extends Conectors.P1;
  extends Conectors.P2;
  parameter Modelica.SIunits.CoefficientOfFriction u(min=0, max=1);
  Modelica.SIunits.Acceleration a;
  Modelica.SIunits.Position x;
  Modelica.SIunits.Force Fr;
  Modelica.SIunits.Velocity V;
  parameter Modelica.SIunits.Mass m;
  parameter Modelica.SIunits.Force WindF;
  parameter Modelica.SIunits.Velocity V0;
  parameter Modelica.SIunits.Position X0;
  
  equation
  m*a=F-(u*9.81*m)-WindF;
  Fr=u*9.81*m;
  V=V0+(a*time);
  x=X0+((V0+(a*time))*time);
  end System;



























end Object_principals;
