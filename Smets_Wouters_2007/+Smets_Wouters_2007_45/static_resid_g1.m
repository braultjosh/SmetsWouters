function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = Smets_Wouters_2007_45.static_g1_tt(T, y, x, params);
    end
    residual = Smets_Wouters_2007_45.static_resid(T, y, x, params, false);
    g1       = Smets_Wouters_2007_45.static_g1(T, y, x, params, false);

end
