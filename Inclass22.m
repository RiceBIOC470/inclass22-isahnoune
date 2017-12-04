%Inclass 22
%GB comments
1 100
2 100
overall 100

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

 %x^2 -kb*x - ku = 0
figure; hold on; ku = 0;
for kb = 0:0.05:5
    polycoeff = [1 -kb -ku]; 
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot (kb*ones(length(rts),1),rts,'b.');
end

%x^5 -kb*x^4 + x - ku = 0
figure; hold on; ku = 0;
for kb = 0:0.5:5
    polycoeff = [1 -kb 0 0 1 -ku]; 
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot (kb*ones(length(rts),1),rts,'b.');
end

%x^9 -kb*x^8 + x - ku = 0
figure; hold on; ku = 0;
for kb = 0:0.5:5
    polycoeff = [1 -kb 0 0 0 0 0 0 1 -ku]; 
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot (kb*ones(length(rts),1),rts,'b.');
end

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 

figure; hold on; ku = 0;
for kb = 0:0.5:5
    polycoeff = [1 kb 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts) == 0);
    plot (kb*ones(length(rts),1),rts,'b.');
end
