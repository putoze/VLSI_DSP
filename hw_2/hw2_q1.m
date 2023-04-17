clear all;

% Note sequence starting from 1~60
Sample_size = 6000; %100
n = 1:Sample_size;
L = 15;
mu = 0.0001; %0.01

%Input signal xn(n)
xn = sin(2 * pi * (n / 12)) + cos(2 * pi * (n / 4));
dn = sin(2 * pi * (n / 12)); %desired signal

% LMS w(n+1)=w(n)+mu‧e(n)‧X*(n)
[wn_all,d_hat,en,rn,steps] = LMS(xn,dn,Sample_size,L,mu);

%plot of original signal for 50 equally sampled value
figure(1);

%plot
figure(1);
sampleSteps = 1;
coefficient_steps = 1;
coefficient_spaced = 1:coefficient_steps:Sample_size;
n_spaced = 1:sampleSteps:Sample_size;
subplot(2, 2, 1);
stem(xn(n_spaced));
title('sin(2 * pi * n / 12) + cos(2 * pi * n / 4)'); xlabel('n*sampleSteps'); ylabel('Amplitude');

subplot(2, 2, 2);
stem(dn(n_spaced));
title('Desired output signal sin(2 * pi * n / 12)'); xlabel('n*sampleSteps'); ylabel('Amplitude');

% Plot of dn_hat
subplot(2, 2, 3);
stem(d_hat(n_spaced));
title('Estimated desired output from adaptive filter'); xlabel('n*sampleSteps'); ylabel('Amplitude');

% Plot of rn
subplot(2, 2, 4);
plot(rn(n_spaced));
title('RMS in time'); xlabel('n*sampleSteps'); ylabel('Amplitude');

% Plot of Coefficients v.s. steps
figure(2);
%disp(wn_all);
wn_all = wn_all';
%disp(wn_all);
stem(wn_all(coefficient_spaced, :));
title('Coefficients of bi'); xlabel('n*coefficient steps'); ylabel('Amplitude');

% FFT for the impulse response of converged filters.
N = 64;
wn_padded = zeros(1, N);
wn_padded(1:L) = wn_all(steps:1:steps+L-1);

figure(3);
Y = fft(wn_padded, N);
stem(Y); % Note must use stem.

%disp
disp("Total Steps needed to reach 10% of RMS");
disp(steps);
disp("RMS value");
disp(rn(steps));

function [wn_all,d_hat,en,rn,steps] = LMS(xn,dn,Sample_size,L,mu)
    %local define
    disp("Desired RMS");
    desired_rn = 0.1/sqrt(2);
    disp(desired_rn);
    % LMS w(n+1)=w(n)+mu‧e(n)‧X*(n)
    wn = zeros(1, L); 
    wn_all = zeros(1, Sample_size); 
    d_hat = zeros(1, Sample_size);
    en = zeros(1, Sample_size);
    rn = zeros(1, Sample_size);
    for n = 2 : Sample_size
        for k = 1 : L
            if (n - k) > 0
                d_hat_tmp = wn(k)*xn(n-k);
                d_hat(n) = d_hat(n) + d_hat_tmp;
                en(n) = dn(n) - d_hat(n);
                wn(k) = wn(k) + mu*en(n)*xn(n-k);
                wn_all(n-k+L) = wn(k);
            end
        end
        % RMS
        if n <= L
            rn(n) = sqrt(mean(en(n:-1:1).^2));
        else 
            rn(n) = sqrt(mean(en(n:-1:n-L).^2));
        end
        % min step to fit min desired_rn
        if(rn(n) <= desired_rn)
            steps = n;
            break
        end
    end
end
