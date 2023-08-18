% trajectory Parameters
radius = 0.08;
line_length = 0.1;

%%%%%%%%%
%%%% First Circle
%%%%%%%%
% First Circle points- Start / End
xFirstCircleStart = [ 0.0 0.0 -radius ];
xFirstCircleEnd = [ -radius 0.0 0.0 ];
% Rotation
RotFirstCircleStart = 0;
RotFirstCircleEnd = pi/2;
%Transformation Matrix
TfirstCircleStart = transformationMatrix(xFirstCircleStart, RotFirstCircleStart);
TfirstCircleEnd  = transformationMatrix(xFirstCircleEnd, RotFirstCircleEnd  );


%%%%%%%%%
%%%% Line
%%%%%%%%%

% Straigth line points- Start / End
xLineStart = [ -radius 0.0 0.0 ];
xLineEnd = [ - radius 0.0 line_length  ];
% Rotation
RotLineStart = 0;
RotLineEnd = 0.0;
% Transformation Matrix
TLineStart = transformationMatrix(xLineStart, RotLineStart);
TLineEnd = transformationMatrix(xLineEnd, RotLineEnd);

%%%%%%%%%
%%%% Second Circle
%%%%%%%%%

% Second Circle points- Start / End
xSecondCircleStart = [-radius 0.0 line_length ];
xSecondCircleEnd = [0.0 0.0 radius+line_length];
% Rotation
RotSecondCircleStart = 0.0;
RotSecondCircleEnd = pi/2;
% Transformation Matrix
TsecondCircleStart = transformationMatrix(xSecondCircleStart, RotSecondCircleStart);
TsecondCircleEnd  = transformationMatrix(xSecondCircleEnd, RotSecondCircleEnd );


T = zeros(1200,4);
index = 1;
% First Circle
for s=0.01:0.01:1
    T(index:index+3,:) = TfirstCircleStart * expm(logm(inv(TfirstCircleStart) * TfirstCircleEnd ) * s);
    T(index+400:index+403,:) = TLineStart * expm(logm(inv(TLineStart) * TLineEnd) * s);
    T(index+800:index+803,:) = TsecondCircleStart * expm(logm(inv(TsecondCircleStart) * TsecondCircleEnd ) * s);

    index  = index + 4;
end
