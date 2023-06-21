function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)
% semimajor_axis 단위: km
% deg로 변환
true_anomaly = true_anomaly*180/pi;

mu = 398600.4415;
% input = semimajor_axis,eccentricity,true_anomaly(deg)
% output = rangeInPQW (3by1 matrix)

% in perifocal coordinate
% v_pq = sqrt(mu/p)*[-sin(true_anomalyu); eccentricity+cos(true_anomaly); 0]
p = semimajor_axis*(1-eccentricity^2);
velocityInPQW = sqrt(mu/p)*[-sin(true_anomaly); eccentricity+cos(true_anomaly); 0];

end