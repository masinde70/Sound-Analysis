clear, clc, close all
%PLOT SOUND 0
% hold on
[x0, fs] = audioread('Fingrid/10040-1567411423252-sound3-1869-data.wav');
[x1, fs] = audioread('Fingrid/10040-1567411423252-sound3-1869-data.wav');
sampletime = 7; %seconds
offsettime = 1; %seconds
x0 = x0(offsettime*fs : offsettime*fs + sampletime*fs,1);
x1 = x1(offsettime*fs : offsettime*fs + sampletime*fs,1);

% x0 = lowpass(x0,5000, fs);
N0 = length(x0);
N1 = length(x1);
T = 1/fs;
t = (0:N0-1)/fs;
t1 = (0:N1-1)/fs;
 

 subplot(2,1,1)
 spectrogram(x0,4096,0,1024,1e4)
 title('06 \S3/ Without faults close 11.05 New airmic and ultrasound piezo - Gear piezo (located another head of gearbox attachment bolt)')
 
subplot(2,1,2)
spectrogram(x1,4096,0,1024,1e4)
title('08 \S3/ With fault in gearbox closed 11.23 New airmic and ultrasound piezo - Gear piezo (located another head of gearbox attachment bolt)')
% pause

% plot(1000*t(1:50),x(1:50))
% xlabel('Time, s')
% ylabel('Amplitude')
% title('The signal in the time domain0')

Y = fft(x0);

P2 = abs(Y/N0);
P1 = P2(1:floor(N0/2)+1);
P1(2:end-1) = 2*P1(2:end-1);

f = fs*(0:floor(N0/2))/N0;
%plot(f(1:floor(length(f)/6)),P1(1:floor(length(f)/6)),'r')
%title('Single-Sided Amplitude Spectrum of x(t)')
%xlabel('f (Hz)')
%ylabel('|P1(f)|')


% figure(1)
% subplot(2,2,1)
% plot(t, x, 'r')
% 
% xlim([0 max(t)])
% ylim([-1.1*max(abs(x)) 1.1*max(abs(x))])
% grid on
% set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
% xlabel('Time, s')
% ylabel('Amplitude')
% title('The signal in the time domain0')
% 
% y=fft(x);
% plot(y)

% %PLOT SOUND 1

% [x, fs] = audioread('10040-1559643856046-sound1-1878-data.wav');
% x = x(1:l/3,1);
% N = length(x);
% t = (0:N-1)/fs;

% subplot(2,2,2)
% plot(t, x, 'r')
% 
% xlim([0 max(t)])
% ylim([-1.1*max(abs(x)) 1.1*max(abs(x))])
% grid on
% set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
% xlabel('Time, s')
% ylabel('Amplitude')
% title('The signal in the time domain1')

% %PLOT SOUND 2
% 
% [x, fs] = audioread('10040-1559643856046-sound2-1878-data.wav');
% x = x(1:l/3,1);
% N = length(x);
% t = (0:N-1)/fs;
% 
% 
% subplot(2,2,3)
% plot(t, x, 'r')
% 
% xlim([0 max(t)])
% ylim([-1.1*max(abs(x)) 1.1*max(abs(x))])
% grid on
% set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
% xlabel('Time, s')
% ylabel('Amplitude')
% title('The signal in the time domain2')
% 
% %PLOT SOUND 3
% 
% [x, fs] = audioread('10040-1559643856046-sound3-1878-data.wav');
% x = x(1:l/3,1);
% N = length(x);
% t = (0:N-1)/fs;
% 
% 
% subplot(2,2,4)
% plot(t, x, 'r')
% 
% xlim([0 max(t)])
% ylim([-1.1*max(abs(x)) 1.1*max(abs(x))])
% grid on
% set(gca, 'FontName', 'Times New Roman', 'FontSize', 14)
% xlabel('Time, s')
% ylabel('Amplitude')
% title('The signal in the time domain3')

%plot(spectrogram(x))