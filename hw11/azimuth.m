function az = azimuth(ENU)
% input : ENU
% output : az

az=atan2d(ENU(:,1),ENU(:,2));

num_d=size(ENU,1);

for i=1:num_d
    if az(i) < 0    
       az(i) = az(i) + 2*pi;
    end
    
    az=az*180/pi;
end

end
