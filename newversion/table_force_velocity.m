% Extracting mean force values from the plots
meanForces = [
    mean(data1.FC50.T3.Force(T3,3)), mean(data1.FC50.T4.Force(T4,3)), mean(data1.FC50.T6.Force(T6,3)), mean(data1.FC50.T8.Force(T8,3)), mean(data1.FC50.T10.Force(T10,3));
    mean(data1.FC55.T3.Force(T3,3)), mean(data1.FC55.T4.Force(T4,3)), mean(data1.FC55.T6.Force(T6,3)), mean(data1.FC55.T8.Force(T8,3)), mean(data1.FC55.T10.Force(T10,3));
    mean(data1.FC60.T3.Force(T3,3)), mean(data1.FC60.T4.Force(T4,3)), mean(data1.FC60.T6.Force(T6,3)), mean(data1.FC60.T8.Force(T8,3)), mean(data1.FC60.T10.Force(T10,3));
    mean(data2.FC50.T3.Force(T3,3)), mean(data2.FC50.T4.Force(T4,3)), mean(data2.FC50.T6.Force(T6,3)), mean(data2.FC50.T8.Force(T8,3)), mean(data2.FC50.T10.Force(T10,3));
    mean(data2.FC55.T3.Force(T3,3)), mean(data2.FC55.T4.Force(T4,3)), mean(data2.FC55.T6.Force(T6,3)), mean(data2.FC55.T8.Force(T8,3)), mean(data2.FC55.T10.Force(T10,3));
    mean(data2.FC60.T3.Force(T3,3)), mean(data2.FC60.T4.Force(T4,3)), mean(data2.FC60.T6.Force(T6,3)), mean(data2.FC60.T8.Force(T8,3)), mean(data2.FC60.T10.Force(T10,3));
    mean(data3.FC50.T3.Force(T3,3)), mean(data3.FC50.T4.Force(T4,3)), mean(data3.FC50.T6.Force(T6,3)), mean(data3.FC50.T8.Force(T8,3)), mean(data3.FC50.T10.Force(T10,3));
    mean(data3.FC55.T3.Force(T3,3)), mean(data3.FC55.T4.Force(T4,3)), mean(data3.FC55.T6.Force(T6,3)), mean(data3.FC55.T8.Force(T8,3)), mean(data3.FC55.T10.Force(T10,3));
    mean(data3.FC60.T3.Force(T3,3)), mean(data3.FC60.T4.Force(T4,3)), mean(data3.FC60.T6.Force(T6,3)), mean(data3.FC60.T8.Force(T8,3)), mean(data3.FC60.T10.Force(T10,3));
];
meanVel = [
    mean(data1.FC50.T3.xdAct(T3,1)), mean(data1.FC50.T4.xdAct(T4,1)), mean(data1.FC50.T6.xdAct(T6,1)), mean(data1.FC50.T8.xdAct(T8,1)), mean(data1.FC50.T10.xdAct(T10,1));
    mean(data1.FC55.T3.xdAct(T3,1)), mean(data1.FC55.T4.xdAct(T4,1)), mean(data1.FC55.T6.xdAct(T6,1)), mean(data1.FC55.T8.xdAct(T8,1)), mean(data1.FC55.T10.xdAct(T10,1));
    mean(data1.FC60.T3.xdAct(T3,1)), mean(data1.FC60.T4.xdAct(T4,1)), mean(data1.FC60.T6.xdAct(T6,1)), mean(data1.FC60.T8.xdAct(T8,1)), mean(data1.FC60.T10.xdAct(T10,1));
    mean(data2.FC50.T3.xdAct(T3,1)), mean(data2.FC50.T4.xdAct(T4,1)), mean(data2.FC50.T6.xdAct(T6,1)), mean(data2.FC50.T8.xdAct(T8,1)), mean(data2.FC50.T10.xdAct(T10,1));
    mean(data2.FC55.T3.xdAct(T3,1)), mean(data2.FC55.T4.xdAct(T4,1)), mean(data2.FC55.T6.xdAct(T6,1)), mean(data2.FC55.T8.xdAct(T8,1)), mean(data2.FC55.T10.xdAct(T10,1));
    mean(data2.FC60.T3.xdAct(T3,1)), mean(data2.FC60.T4.xdAct(T4,1)), mean(data2.FC60.T6.xdAct(T6,1)), mean(data2.FC60.T8.xdAct(T8,1)), mean(data2.FC60.T10.xdAct(T10,1));
    mean(data3.FC50.T3.xdAct(T3,1)), mean(data3.FC50.T4.xdAct(T4,1)), mean(data3.FC50.T6.xdAct(T6,1)), mean(data3.FC50.T8.xdAct(T8,1)), mean(data3.FC50.T10.xdAct(T10,1));
    mean(data3.FC55.T3.xdAct(T3,1)), mean(data3.FC55.T4.xdAct(T4,1)), mean(data3.FC55.T6.xdAct(T6,1)), mean(data3.FC55.T8.xdAct(T8,1)), mean(data3.FC55.T10.xdAct(T10,1));
    mean(data3.FC60.T3.xdAct(T3,1)), mean(data3.FC60.T4.xdAct(T4,1)), mean(data3.FC60.T6.xdAct(T6,1)), mean(data3.FC60.T8.xdAct(T8,1)), mean(data3.FC60.T10.xdAct(T10,1));
];

% Creating column names for the table
colNames = {'Iter_1_Rad_5cm_T3', 'Iter_1_Rad_5cm_T4', 'Iter_1_Rad_5cm_T6', 'Iter_1_Rad_5cm_T8', 'Iter_1_Rad_5cm_T10',...
            'Iter_1_Rad_5.5cm_T3', 'Iter_1_Rad_5.5cm_T4', 'Iter_1_Rad_5.5cm_T6', 'Iter_1_Rad_5.5cm_T8', 'Iter_1_Rad_5.5cm_T10',...
            'Iter_1_Rad_6cm_T3', 'Iter_1_Rad_6cm_T4', 'Iter_1_Rad_6cm_T6', 'Iter_1_Rad_6cm_T8', 'Iter_1_Rad_6cm_T10',...
            'Iter_2_Rad_5cm_T3', 'Iter_2_Rad_5cm_T4', 'Iter_2_Rad_5cm_T6', 'Iter_2_Rad_5cm_T8', 'Iter_2_Rad_5cm_T10',...
            'Iter_2_Rad_5.5cm_T3', 'Iter_2_Rad_5.5cm_T4', 'Iter_2_Rad_5.5cm_T6', 'Iter_2_Rad_5.5cm_T8', 'Iter_2_Rad_5.5cm_T10',...
            'Iter_2_Rad_6cm_T3', 'Iter_2_Rad_6cm_T4', 'Iter_2_Rad_6cm_T6', 'Iter_2_Rad_6cm_T8', 'Iter_2_Rad_6cm_T10',...
            'Iter_3_Rad_5cm_T3', 'Iter_3_Rad_5cm_T4', 'Iter_3_Rad_5cm_T6', 'Iter_3_Rad_5cm_T8', 'Iter_3_Rad_5cm_T10',...
            'Iter_3_Rad_5.5cm_T3', 'Iter_3_Rad_5.5cm_T4', 'Iter_3_Rad_5.5cm_T6', 'Iter_3_Rad_5.5cm_T8', 'Iter_3_Rad_5.5cm_T10',...
            'Iter_3_Rad_6cm_T3', 'Iter_3_Rad_6cm_T4', 'Iter_3_Rad_6cm_T6', 'Iter_3_Rad_6cm_T8', 'Iter_3_Rad_6cm_T10'};

% Creating the table with individual variable names
resultsTable = array2table(meanForces, 'VariableNames', colNames);
