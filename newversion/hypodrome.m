function [P_z, P_x, P_z_derivative, P_x_derivative] = hypodrome(s, radius, line_length)
    M_PI = 3.1415;
    alpha = (2 * line_length) / (radius * M_PI) + 1;

    if s <= 1
        P_z = -radius * cos(s * M_PI / 2);
        P_x = -radius * sin(s * M_PI / 2);

        P_z_derivative = radius * (M_PI / 2) * sin(s * M_PI / 2);
        P_x_derivative = -radius * (M_PI / 2) * cos(s * M_PI / 2);
    elseif s <= alpha && s > 1
        P_z = (s - 1) * (radius * M_PI) / 2;
        P_x = -radius;

        P_z_derivative = radius * M_PI / 2;
        P_x_derivative = 0;
    else
        P_z = radius * sin((s - alpha) * M_PI / 2) + line_length;
        P_x = -radius * cos((s - alpha) * M_PI / 2);

        P_z_derivative = radius * M_PI / 2 * cos((s - alpha) * M_PI / 2);
        P_x_derivative = radius * M_PI / 2 * sin((s - alpha) * M_PI / 2);
    end
end
