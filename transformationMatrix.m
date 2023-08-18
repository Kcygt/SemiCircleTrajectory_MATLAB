function T = transformationMatrix(xStart,  rot)
    
    [~,Ry,~] = rotation(rot);
    T = [Ry xStart'; 0 0 0 1];

end