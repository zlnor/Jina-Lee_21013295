function DCM=ECI2ECEF_DCM(time) 
% input : time [YYYY,MM,DD,hh,mm,ss]
% output : DCM

% convert time to Julian Date
jd = juliandate(datetime(time));

% earth rotation angle in radian
GMST = siderealTime(jd)*pi/180;

DCM=[cos(GMST), sin(GMST), 0;
    -sin(GMST), cos(GMST), 0; 
    0, 0, 1];

end