line_lenght = 4;
radius = 2;
alpha = (2 * line_lenght) / (radius * pi) + 1;
sFinal = alpha + 1;
s = 0:.1:sFinal;
radian = zeros(length(s),1);

ii = 1;
for s = 0:.1:sFinal
    if s <= 1
        radian(ii) = -pi/4 + s * pi/4;
    elseif s > 1 && s <= alpha
        radian(ii) = 0;
    else
        radian(ii) = pi/4 * (s - alpha);
    end
    ii = ii + 1;
end




