function R = PQW2ECI(arg_prg, inc_angle, RAAN)
    % arg_prg = argument of perigee
    % inc_angle = inclination angle
    % RAAN = right ascension 
    
    % deg로 변환
    arg_prg = arg_prg*180/pi;
    inc_angle = inc_angle*180/pi;
    RAAN = RAAN*180/pi;

    % 회전변환행렬
    R1 = [cos(RAAN), -sin(RAAN), 0;
          sin(RAAN), cos(RAAN), 0;
          0, 0, 1];
    R2 = [1, 0, 0;
          0, cos(inc_angle), -sin(inc_angle);
          0, sin(inc_angle), cos(inc_angle)];
    R3 = [cos(arg_prg), -sin(arg_prg), 0;
          sin(arg_prg), cos(arg_prg), 0;
          0, 0, 1];
      
    % Perifocal2ECI
    R = R1 * R2 * R3;
end
