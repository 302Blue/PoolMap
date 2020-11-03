measurements = [(20*12)+4.75 (26*12)+5.875;
                (22*12)+0.625 (28*12)+3.125;
                (23*12)+9.75 (30*12)+0.625;
                (25*12)+7.25 (31*12)+10.5;
                (27*12)+5 (33*12)+8.5;
                (29*12)+3.125 (35*12)+6.75;
                (31*12)+1.5 (37*12)+5.375;
                (33*12)+0.125 (39*12)+4;
                (33*12)+5.9375 (39*12)+9.5;
                (33*12)+11.875 (40*12)+2.5;
                (34*12)+5.75 (40*12)+6.625;
                (34*12)+11.625 (40*12)+11;
                (35*12)+5.5625 (41*12)+3;
                (35*12)+11.375 (41*12)+7.25;
                (36*12)+4.75 (41*12)+10;
                (36*12)+9.375 (41*12)+11.25;
                (37*12)+1.375 (42*12)+0;
                (38*12)+4.625 (42*12)+1.5;
                (38*12)+7.875 (42*12)+1.25;
                (38*12)+10.875 (42*12)+0.5;
                (39*12)+1.375 (41*12)+11.5;
                (39*12)+10.25 (41*12)+6.5;
                (40*12)+7.5 (41*12)+1.25;
                (41*12)+6.625 (40*12)+9.875;
                (41*12)+8.75 (40*12)+8.25;
                (41*12)+7.75 (40*12)+3.75;
                (41*12)+1.75 (39*12)+4.875;
                (40*12)+11.75 (38*12)+11.75;
                (41*12)+1.25 (38*12)+9.75;
                (41*12)+5.375 (38*12)+10.5;
                (41*12)+9.375 (38*12)+11;
                (41*12)+10.375 (38*12)+8.25;
                (41*12)+7.625 (38*12)+3;
                (40*12)+7.875 (36*12)+4.25;
                (40*12)+3.5 (35*12)+11;
                (39*12)+9.625 (35*12)+5.5;
                (39*12)+3.875 (35*12)+2.25;
                (38*12)+9.75 (34*12)+9.75;
                (38*12)+4.625 (34*12)+4.125;
                (37*12)+9.75 (33*12)+4.5;
                (37*12)+0.875 (32*12)+4.75;
                (35*12)+5.25 (30*12)+5.375;
                (33*12)+9.875 (28*12)+5;
                (32*12)+3.0 (26*12)+5.25;
                (30*12)+9.75 (24*12)+5.25;
                (29*12)+8.0 (22*12)+5.25;
                (28*12)+7.625 (20*12)+5.25;
                (27*12)+8.25 (18*12)+5.0;
                (26*12)+10.5 (16*12)+5.125;
                (26*12)+2.0 (14*12)+5.0;
                (25*12)+6.625 (12*12)+4.875;
                (25*12)+2.75 (11*12)+5.0;
                (24*12)+8.75 (10*12)+5.5;
                (24*12)+0.5 (9*12)+7.75;
                (23*12)+3.0 (9*12)+0.25;
                (22*12)+4.25 (8*12)+7.625;
                (21*12)+4.875 (8*12)+5.75;
                (20*12)+5.5 (8*12)+5.875;
                (19*12)+6.75 (8*12)+6.0;
                (18*12)+9.25 (8*12)+5.875;
                (18*12)+0.75 (8*12)+6.0;
                (17*12)+5.625 (8*12)+6.25;
                (16*12)+8.5 (8*12)+10.25;
                (15*12)+10.375 (9*12)+5.75;
                (14*12)+11.0 (10*12)+3.75;
                (13*12)+11.0 (11*12)+3.0;
                (12*12)+11.0 (12*12)+3.0;
                (11*12)+11.5 (13*12)+3.0;
                (11*12)+0.625 (14*12)+3.0;
                (10*12)+2.0 (15*12)+2.75;
                (9*12)+4.125 (16*12)+2.125;
                (8*12)+7.25 (17*12)+1.875;
                (7*12)+11.125 (18*12)+1.375;
                (7*12)+4.625 (19*12)+0.75;
                (7*12)+0.0 (19*12)+11.75;
                (6*12)+10.5 (20*12)+10.5;
                (7*12)+0.25 (21*12)+8.5;
                (7*12)+5.5 (22*12)+5.25;
                (8*12)+0.25 (23*12)+2.375;
                (8*12)+9.375 (23*12)+10.0;
                (9*12)+8.125 (24*12)+4.25;
                (10*12)+7.875 (24*12)+8.0;
                (11*12)+7.875 (24*12)+9.50;
                (12*12)+7.875 (24*12)+10.0;
                (13*12)+7.125 (24*12)+10.0;
                (15*12)+6.625 (24*12)+11.75;
                (17*12)+6.25 (25*12)+3.0;
                (18*12)+6.0 (25*12)+5.0;
                (19*12)+0.0 (25*12)+6.5;
                (19*12)+6.0 (25*12)+9.25;
                (20*12)+0.0 (26*12)+1.25;
                ]; %All of the measurements taken
            
%Initialize lists
pointsX = zeros(91);
pointsY = zeros(91);

%Create lists of points
for i=1:size(measurements)
   [xFunc, yFunc] = findPoints(measurements(i,1),measurements(i,2));
   pointsX(i) = xFunc/12;
   pointsY(i) = -yFunc/12+40;
end

%Plot Time
title("PoolMap");
%Plot Pool Points
plot(pointsX,pointsY,'-+');
%Plot Pool Measurements
hold on;
plot([pointsX(52),pointsX(81)],[pointsY(52),pointsY(81)]);
plot([pointsX(21),pointsX(66)],[pointsY(21),pointsY(66)]);
plot([pointsX(5),pointsX(43)],[pointsY(5),pointsY(43)]);
plot([pointsX(8),pointsX(34)],[pointsY(8),pointsY(34)]);
plot([pointsX(86),pointsX(48)],[pointsY(86),pointsY(48)]);
plot([pointsX(79),pointsX(59)],[pointsY(79),pointsY(59)]);
hold off;
%Label Pool Points
for i=1:size(measurements)
    text(pointsX(i,1),pointsY(i,1),num2str(i),'FontSize',10);
end
%Label Pool Lines
    text((pointsX(52)+pointsX(81))/2,(pointsY(52)+pointsY(81))/2,'Overall Pool Width','FontSize',10);
    text((pointsX(21)+pointsX(66))/2,(pointsY(21)+pointsY(66))/2,'Overall Pool Length','FontSize',10);
    text((pointsX(5)+pointsX(43))/2,(pointsY(5)+pointsY(43))/2,'Cross Dimension 1','FontSize',10);
    text((pointsX(8)+pointsX(34))/2,(pointsY(8)+pointsY(34))/2,'Cross Dimension 2','FontSize',10);
    text((pointsX(86)+pointsX(48))/2,(pointsY(86)+pointsY(48))/2,'Cross Dimension 3','FontSize',10);
    text((pointsX(79)+pointsX(59))/2,(pointsY(79)+pointsY(59))/2,'Cross Dimension 4','FontSize',10);
%Plot Settings
xlabel("Width");
ylabel("Length");
axis([0 40 0 40]);;
grid on;    

%Print Other Measurements
dist1 = (((pointsX(81)-pointsX(52))^2+((pointsY(81)-pointsY(52))^2)))^.5;
dist2 = (((pointsX(66)-pointsX(21))^2+((pointsY(66)-pointsY(21))^2)))^.5;
dist3 = (((pointsX(43)-pointsX(5))^2+((pointsY(43)-pointsY(5))^2)))^.5;
dist4 = (((pointsX(34)-pointsX(8))^2+((pointsY(34)-pointsY(8))^2)))^.5;
dist5 = (((pointsX(48)-pointsX(86))^2+((pointsY(48)-pointsY(86))^2)))^.5;
dist6 = (((pointsX(59)-pointsX(79))^2+((pointsY(59)-pointsY(79))^2)))^.5;
disp(strcat('Overall Pool Width:_',string(dist1)));
disp(strcat('Overall Pool Length:_',string(dist2)));
disp(strcat('Cross Dimension 1:_',string(dist3)));
disp(strcat('Cross Dimension 2:_',string(dist4)));
disp(strcat('Cross Dimension 3:_',string(dist5)));
disp(strcat('Cross Dimension 4:_',string(dist6)));

function [xTemp,yTemp] = findPoints (a1, b1)
   xTemp = (1/600)*(b1*b1-a1*a1+90000);
   yTemp = (b1^2-xTemp^2)^0.5;
   disp(xTemp/12);
   disp(-yTemp/12+40);
end
