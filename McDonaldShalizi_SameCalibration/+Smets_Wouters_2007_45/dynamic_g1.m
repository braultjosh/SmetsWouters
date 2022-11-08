function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = Smets_Wouters_2007_45.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(40, 79);
g1(1,31)=(-params(9));
g1(1,38)=(-(1-params(9)));
g1(1,52)=1;
g1(2,30)=1;
g1(2,31)=(-T(3));
g1(3,31)=1;
g1(3,32)=1;
g1(3,37)=(-1);
g1(3,38)=(-1);
g1(4,30)=(-1);
g1(4,32)=1;
g1(4,19)=(-1);
g1(5,33)=(-(1/T(5)*T(15)));
g1(5,4)=(-T(15));
g1(5,35)=1;
g1(5,64)=(-(T(14)*T(15)));
g1(5,55)=(-1);
g1(6,61)=(-((T(11)-(1-params(12)))/T(11)));
g1(6,33)=1;
g1(6,62)=(-((1-params(12))/T(11)));
g1(6,39)=1;
g1(6,53)=(-(1/T(7)));
g1(7,3)=(-(T(6)/(1+T(6))));
g1(7,34)=1;
g1(7,63)=(-(1/(1+T(6))));
g1(7,37)=(-T(16));
g1(7,65)=T(16);
g1(7,39)=T(7);
g1(7,53)=(-1);
g1(8,30)=(-((T(11)-(1-params(12)))*T(13)));
g1(8,34)=(-(1-params(39)-T(1)*T(12)*T(13)));
g1(8,35)=(-(T(1)*T(12)*T(13)));
g1(8,36)=1;
g1(8,54)=(-1);
g1(9,32)=(-(params(17)*params(9)));
g1(9,36)=1;
g1(9,37)=(-(params(17)*(1-params(9))));
g1(9,52)=(-params(17));
g1(10,3)=T(9);
g1(10,34)=(-T(8));
g1(10,37)=(-params(22));
g1(10,38)=1;
g1(11,35)=(-T(12));
g1(11,55)=(-(T(5)*T(12)));
g1(11,19)=(-(1-T(12)));
g1(11,59)=1;
g1(12,40)=1;
g1(12,42)=(-params(9));
g1(12,50)=(-(1-params(9)));
g1(12,52)=1;
g1(13,41)=1;
g1(13,42)=(-T(3));
g1(14,42)=1;
g1(14,43)=1;
g1(14,48)=(-1);
g1(14,50)=(-1);
g1(15,41)=(-1);
g1(15,43)=1;
g1(15,20)=(-1);
g1(16,44)=(-(1/T(5)*T(15)));
g1(16,7)=(-T(15));
g1(16,46)=1;
g1(16,69)=(-(T(14)*T(15)));
g1(16,55)=(-1);
g1(17,66)=(-((T(11)-(1-params(12)))/T(11)));
g1(17,44)=1;
g1(17,67)=(-((1-params(12))/T(11)));
g1(17,71)=(-1);
g1(17,51)=1;
g1(17,53)=(-(1/T(7)));
g1(18,6)=(-(T(6)/(1+T(6))));
g1(18,45)=1;
g1(18,68)=(-(1/(1+T(6))));
g1(18,48)=(-T(16));
g1(18,70)=T(16);
g1(18,71)=(-T(7));
g1(18,51)=T(7);
g1(18,53)=(-1);
g1(19,41)=(-((T(11)-(1-params(12)))*T(13)));
g1(19,45)=(-(1-params(39)-T(1)*T(12)*T(13)));
g1(19,46)=(-(T(1)*T(12)*T(13)));
g1(19,47)=1;
g1(19,54)=(-1);
g1(20,43)=(-(params(17)*params(9)));
g1(20,47)=1;
g1(20,48)=(-(params(17)*(1-params(9))));
g1(20,52)=(-params(17));
g1(21,40)=(-(T(17)*T(18)));
g1(21,9)=(-(params(20)*T(17)));
g1(21,49)=1;
g1(21,71)=(-(T(14)*T(17)));
g1(21,57)=(-1);
g1(22,6)=(-(T(19)*(-T(9))));
g1(22,45)=(-(T(8)*T(19)));
g1(22,48)=(-(params(22)*T(19)));
g1(22,9)=(-(params(18)/(1+T(14))));
g1(22,49)=(1+params(18)*T(14))/(1+T(14));
g1(22,71)=(-(T(14)/(1+T(14))));
g1(22,10)=(-T(15));
g1(22,50)=1+T(19);
g1(22,72)=(-(T(14)/(1+T(14))));
g1(22,58)=(-1);
g1(23,5)=(-params(26));
g1(23,36)=(-((-((1-params(28))*params(27)))-params(26)));
g1(23,8)=params(26);
g1(23,47)=(-((1-params(28))*params(27)+params(26)));
g1(23,49)=(-(params(25)*(1-params(28))));
g1(23,11)=(-params(28));
g1(23,51)=1;
g1(23,56)=(-1);
g1(24,12)=(-params(29));
g1(24,52)=1;
g1(24,73)=(-1);
g1(25,13)=(-params(31));
g1(25,53)=1;
g1(25,74)=(-1);
g1(26,14)=(-params(32));
g1(26,54)=1;
g1(26,73)=(-params(2));
g1(26,75)=(-1);
g1(27,15)=(-params(34));
g1(27,55)=1;
g1(27,76)=(-1);
g1(28,16)=(-params(35));
g1(28,56)=1;
g1(28,77)=(-1);
g1(29,2)=params(8);
g1(29,29)=(-1);
g1(29,17)=(-params(36));
g1(29,57)=1;
g1(30,29)=1;
g1(30,78)=(-1);
g1(31,1)=params(7);
g1(31,28)=(-1);
g1(31,18)=(-params(37));
g1(31,58)=1;
g1(32,28)=1;
g1(32,79)=(-1);
g1(33,46)=(-T(12));
g1(33,55)=(-(params(11)*T(4)*T(12)));
g1(33,20)=(-(1-T(12)));
g1(33,60)=1;
g1(34,24)=1;
g1(34,8)=1;
g1(34,47)=(-1);
g1(35,25)=1;
g1(35,6)=1;
g1(35,45)=(-1);
g1(36,26)=1;
g1(36,7)=1;
g1(36,46)=(-1);
g1(37,27)=1;
g1(37,10)=1;
g1(37,50)=(-1);
g1(38,23)=1;
g1(38,49)=(-1);
g1(39,22)=1;
g1(39,51)=(-1);
g1(40,21)=1;
g1(40,48)=(-1);

end
