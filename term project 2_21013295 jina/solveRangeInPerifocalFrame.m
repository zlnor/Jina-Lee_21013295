function rangelnPQW = solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% semimajor_axis 단위: km
% deg로 변환
true_anomaly = true_anomaly*180/pi;

% input = semimajor_axis,eccentricity,true_anomaly
% output = rangeInPQW (3by1 matrix)

% in perifocal coordinate
r = semimajor_axis*(1-eccentricity^2)/(1+eccentricity*cos(true_anomaly)); 
rangelnPQW = [r*cos(true_anomaly); r*sin(true_anomaly); 0];

end