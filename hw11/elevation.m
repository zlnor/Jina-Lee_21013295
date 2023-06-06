function el = elevation(ENU, el_mask)
% input : ENU (n-by-3 matrix, km), el_mask (위성 최소 앙각, deg)
% output : elevation angle (1-by-n, deg)

el=rad2deg(asin(ENU(:, 3) ./ vecnorm(ENU, 2, 2)));
num_d = size(ENU, 1);

for i=1:num_d
    if (el(i)<=el_mask)
        el(i)=nan;
    end
end
el=el';
end