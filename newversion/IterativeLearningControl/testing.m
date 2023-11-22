% Define the numerator and denominator of the systems
plant_num = [8.331499999999999e-04 -0.002411635990000 0.001646764298800 0.001386774757085 -0.002226794738657 7.735179924151595e-04 ];
plant_den =  [1 -5.7154 13.723534400000000 -17.734220581599999 13.016931722320001  -5.148338416112000 0.857492875392000];
feedback_num = [12.335900000000001 -35.651984590000005 34.340092218032005  -11.023646014692989];
feedback_den = [1  -2.832900000000000 2.672854940000000 -0.839948725176000];
filter_num = [0.1568 0.126898240000000];
filter_den = [1 -1.25 0.5335];
% Calculate the transfer functions
plant_tf = tf(plant_num,plant_den,0.001);
feedback_tf = tf(feedback_num,feedback_den,0.001);
filter_tf = tf(filter_num,filter_den,0.001);
feedforward_tf = filter_tf / plant_tf;

system_tf = plant_tf * feedback_tf * feedforward_tf ;