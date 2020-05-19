function K = control_FURPEN(A,B,zeta,wn,p3,p4)

    % Location of dominant poles along real-axis
    sigma = zeta * wn;
    % Location of dominant poles along img axis (damped natural freq wn*(1-zeta)^0.5)
    wn*(1-zeta)^0.5
    % Desired poles (-30 and -40 are given)
    poles = [-sigma+j*wd, -sigma-j*wd, p3, p4];
    % Find control gain using MATLAB pole-placement command (acker or place)
    K = acker(A, B, poles)

end