function [s, sDot] = sFun(W, tBlend, tInstant, tFinal)
    if tInstant <= tBlend
        s = W * tInstant^2 / 2;
        sDot = W * tInstant;
    elseif tInstant > tBlend && tInstant < tFinal - tBlend
        s = W * tBlend * (tInstant - tBlend) + W * tBlend^2 / 2;
        sDot = W * tBlend;
    else
        s = W * tBlend^2 - W * (tInstant - tFinal)^2 / 2 - W * tBlend * (2 * tBlend - tFinal);
        sDot = W * (tFinal - tInstant);
    end
end