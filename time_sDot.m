function [s, sDot] = time_sDot(tBlend, tFinal)

s = zeros(1000,1);
sDot = zeros(1000,1);

radius = 0.08;
line_length = 0.1;


alpha = (2 * line_length) / (radius * pi) + 1;
W = (alpha + 1) / (tBlend * (tFinal - tBlend));
for i = 1:length(sDot)
    t = i * tFinal / length(sDot); 
    if  t <= tBlend
        s(i) = (W * t^2) / 2; 
        sDot(i) = W * t;
    
    
    elseif t > tBlend && t < tFinal - tBlend
        s(i) = W * tBlend * (t - tBlend) + ((W * tBlend^2))/2;
        sDot(i) = W * tBlend;

        
    else
        s(i) =  W * tBlend^2 - W * (t - tFinal)^2 / 2 - W * tBlend * (2*tBlend-tFinal);
        sDot(i) = W * ( tFinal - t);
    end
        
end
end
