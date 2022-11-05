function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Smets_Wouters_2007_45.static_resid_tt(T, y, x, params);
end
residual = zeros(40, 1);
lhs = y(32);
rhs = params(9)*y(11)+(1-params(9))*y(18);
residual(1) = lhs - rhs;
lhs = y(10);
rhs = y(11)*T(8);
residual(2) = lhs - rhs;
lhs = y(11);
rhs = y(18)+y(17)-y(12);
residual(3) = lhs - rhs;
lhs = y(12);
rhs = y(10)+y(39);
residual(4) = lhs - rhs;
lhs = y(15);
rhs = y(35)+T(10)*(y(13)*1/T(12)+y(15)+y(15)*T(9));
residual(5) = lhs - rhs;
lhs = y(13);
rhs = y(33)*1/T(14)-y(19)+y(11)*(T(4)-(1-params(12)))/T(4)+y(13)*(1-params(12))/T(4);
residual(6) = lhs - rhs;
lhs = y(14);
rhs = y(33)+y(14)*T(13)/(1+T(13))+y(14)*1/(1+T(13))-T(14)*y(19);
residual(7) = lhs - rhs;
lhs = y(16);
rhs = y(34)+(1-params(39)-T(7))*y(14)+T(7)*y(15)+(T(4)-(1-params(12)))*T(6)*y(10);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = params(17)*(y(32)+params(9)*y(12)+(1-params(9))*y(17));
residual(9) = lhs - rhs;
lhs = y(18);
rhs = y(17)*params(22)+y(14)*1/(1-T(13))-y(14)*T(13)/(1-T(13));
residual(10) = lhs - rhs;
lhs = y(39);
rhs = y(39)*(1-T(5))+T(5)*y(15)+y(35)*T(5)*T(12);
residual(11) = lhs - rhs;
lhs = y(20);
rhs = params(9)*y(22)+(1-params(9))*y(30)-y(32);
residual(12) = lhs - rhs;
lhs = y(21);
rhs = T(8)*y(22);
residual(13) = lhs - rhs;
lhs = y(22);
rhs = y(30)+y(28)-y(23);
residual(14) = lhs - rhs;
lhs = y(23);
rhs = y(21)+y(40);
residual(15) = lhs - rhs;
lhs = y(26);
rhs = y(35)+T(10)*(1/T(12)*y(24)+y(26)+T(9)*y(26));
residual(16) = lhs - rhs;
lhs = y(24);
rhs = y(33)*1/T(14)+y(29)-y(31)+(T(4)-(1-params(12)))/T(4)*y(22)+(1-params(12))/T(4)*y(24);
residual(17) = lhs - rhs;
lhs = y(25);
rhs = y(33)+T(13)/(1+T(13))*y(25)+1/(1+T(13))*y(25)-T(14)*(y(31)-y(29));
residual(18) = lhs - rhs;
lhs = y(27);
rhs = y(34)+(1-params(39)-T(7))*y(25)+T(7)*y(26)+(T(4)-(1-params(12)))*T(6)*y(21);
residual(19) = lhs - rhs;
lhs = y(27);
rhs = params(17)*(y(32)+params(9)*y(23)+(1-params(9))*y(28));
residual(20) = lhs - rhs;
lhs = y(29);
rhs = y(37)+1/(1+T(9)*params(20))*(y(29)*params(20)+T(9)*y(29)+y(20)*T(15));
residual(21) = lhs - rhs;
lhs = y(30);
rhs = y(38)+T(10)*y(30)+y(30)*T(16)+y(29)*params(18)/(1+T(9))-y(29)*(1+T(9)*params(18))/(1+T(9))+y(29)*T(16)+(params(22)*y(28)+1/(1-T(13))*y(25)-T(13)/(1-T(13))*y(25)-y(30))*T(17);
residual(22) = lhs - rhs;
lhs = y(31);
rhs = y(29)*params(25)*(1-params(28))+(1-params(28))*params(27)*(y(27)-y(16))+params(26)*(y(16)+y(27)-y(16)-y(27))+y(31)*params(28)+y(36);
residual(23) = lhs - rhs;
lhs = y(32);
rhs = y(32)*params(29)+x(1);
residual(24) = lhs - rhs;
lhs = y(33);
rhs = y(33)*params(31)+x(2);
residual(25) = lhs - rhs;
lhs = y(34);
rhs = y(34)*params(32)+x(3)+x(1)*params(2);
residual(26) = lhs - rhs;
lhs = y(35);
rhs = y(35)*params(34)+x(4);
residual(27) = lhs - rhs;
lhs = y(36);
rhs = y(36)*params(35)+x(5);
residual(28) = lhs - rhs;
lhs = y(37);
rhs = y(37)*params(36)+y(9)-y(9)*params(8);
residual(29) = lhs - rhs;
lhs = y(9);
rhs = x(6);
residual(30) = lhs - rhs;
lhs = y(38);
rhs = y(38)*params(37)+y(8)-y(8)*params(7);
residual(31) = lhs - rhs;
lhs = y(8);
rhs = x(7);
residual(32) = lhs - rhs;
lhs = y(40);
rhs = (1-T(5))*y(40)+T(5)*y(26)+y(35)*params(11)*T(5)*T(11);
residual(33) = lhs - rhs;
lhs = y(4);
rhs = params(38);
residual(34) = lhs - rhs;
lhs = y(5);
rhs = params(38);
residual(35) = lhs - rhs;
lhs = y(6);
rhs = params(38);
residual(36) = lhs - rhs;
lhs = y(7);
rhs = params(38);
residual(37) = lhs - rhs;
lhs = y(3);
rhs = params(5)+y(29);
residual(38) = lhs - rhs;
lhs = y(2);
rhs = 100*((1+params(5)/100)/T(3)-1)+y(31);
residual(39) = lhs - rhs;
lhs = y(1);
rhs = y(28)+params(4);
residual(40) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
