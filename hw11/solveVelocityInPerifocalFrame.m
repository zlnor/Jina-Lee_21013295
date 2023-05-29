function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

% input = semimajor_axis,eccentricity,true_anomaly(deg)
% output = rangeInPQW (3by1 matrix)
mu = 398600; %(km^3/m^2)
% in perifocal coordinate
% v_pq = sqrt(mu/p)*[-sin(true_anomalyu); eccentricity+cos(true_anomaly); 0]
p = semimajor_axis*(1-eccentricity^2);
velocityInPQW = sqrt(mu/p)*[-sin(true_anomaly); eccentricity+cos(true_anomaly); 0];

end