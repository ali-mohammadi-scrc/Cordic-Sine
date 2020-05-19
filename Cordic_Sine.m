n = 11; % Number of rotations
W = atan(2.^(-1*(0:(n - 1))))/pi*180; % atan Lookup Table
Sine = ones([1, 17]); % To stroe sin 

P = [21, 42, 63, 85, 74, 53, 32, 11, 10, 32, 53, 74, 85, 63, 42, 21, 0]; % Angles lookup table kept between 0 - Pi/2
%%
X0 = 2048;
Y0 = 2048;
for j = 1:17
    X = X0;
    Y = Y0;
    m = mod(j - 1, 17) + 1;
    Z = P(m) * 100;
    for i = 1:n
        Xt = X - sign(Z) * Y * 2 ^ (1 - i);
        Yt = Y + sign(Z) * X * 2 ^ (1 - i);
        Zt = Z - sign(Z) * round(W(i) * 100);
        X = Xt;
        Y = Yt;
        Z = Zt;
    end
    K = (((X + Y)^2 + (Y - X)^2)/4); % (K * X0)^2, K as in Xn = K(X0cos(Z0) - Y0sin(Z0)) and in Yn = K(X0cos(Z0) + Y0sin(Z0)) and X0 == Y0
    K = sqrt(K);
    if (m < 9) % 0 - Pi
        S(j) = (Y - X) / (K * 2);
    else % Pi - 2*Pi
        S(j) = (X - Y) / (K * 2);
    end
end
%%
figure ();
plot((1:17)/17 * 2 * pi, S)