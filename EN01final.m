clear

%set up rate
rate = 44100;

%set up different durations
whole_duration = 1/2; %a whole note is half of a second
half_duration = 1/4;
oneHalf_duration = 3/4;
twoWhole_duration = 1;

%set up time vector for different durations
whole_note = [0:1/rate:whole_duration];
half_note = [0:1/rate:half_duration];
oneHalf_note = [0:1/rate:oneHalf_duration];
twoWhole_note = [0:1/rate:twoWhole_duration];

%set up frequencies for the first harmonics of each strings
s1freq = 1174;
s2freq = 987;
s3freq = 880;
s4freq = 740;
s5freq = 659;
s6freq = 587;
s7freq = 494;
s8freq = 440;
s9freq = 370;
s10freq = 330;
s11freq = 294;
s12freq = 247;
s13freq = 220;

%set up amplitude for each string
h1=[1 0.0550]

%construct envelop(it is decay envelop now, I will see if I can change it into decay wave envelop)
RC = .2;
decay = exp(-time/RC);

%construct zero vectors for each note
s1=zeros(1,length(time));


for j=1:length(h1)
    s1t=h12(j)*sin(2*pi*s1freq*j*whole_duration);
    s1=s1t+s1;
end


soundsc(s1.*decay,rate);


