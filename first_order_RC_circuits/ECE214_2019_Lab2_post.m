%************************************************************
%            						   **
% Title: ECE214_2019_Lab2_post.m 			   **
% 							   **	
% Author: nolanHg					   **
%						  	   **
% Purpose: Compares the simulated voltage across a 1.5 nF  **
%	   capacitor to the measured voltage.		   **
%							   **
% Date: 03/13/2019					   **
%							   **
%************************************************************

%-----------------------------------------------------------------------
% Frequencies at which capacitor voltages and phase shifts were measured 
%-----------------------------------------------------------------------
f = [100 200 400 600 800 1000 2000 4000 6000 8000 10000 20000 40000];


%% PART 1: VOLTAGE PLOT

%------------------------------------------
% Voltages obtained from NGspice simulation 
% of circuit with oscilloscope, function 
% generator, and probe impedances included
%------------------------------------------
pv_sim_complt = [0.853 0.829 0.749 0.655 0.568 0.496 0.286 0.15 0.101 ...
                 0.0759 0.0609 0.0305 0.0153];

            
%-----------------------------------
% Capacitor voltages measured at the
% frequencies in the vector f
%-----------------------------------
pv_measrd = [0.854 0.8290 0.7585 0.670 0.587 0.5155 0.3040 0.159 0.109 ...
             0.0805 0.0640 0.0325 0.0165];


%----------------------------------------
% Plot the voltage data above in order to
% compare the behavior of the measured
% circuit to the behavior of the
% simulated circuit.
%----------------------------------------
figure(1)

% Use logarithmic scale for frequency axis
semilogx(f, pv_sim_complt, 'r-', 'LineWidth', 1.3)
hold on
semilogx(f, pv_measrd, 'ko', 'LineWidth', 3)
axis([0 40000 0 1])
grid on

% Include labels, a legend, and a title
xlabel('Frequency (Hz)')
legend('Sim. Complete Voltages', 'Measured Voltages')
ylabel('Voltage (V)')
title('Peak Voltage across a 1.5 nF Capacitor')


%% PART 2: PHASE SHIFT PLOT 

%----------------------------------------------
% Phase shifts obtained from NGspice simulation 
% of circuit with oscilloscope, function 
% generator, and probe impedances included
%----------------------------------------------
ps_sim_complt = [8.12 15.9 29.7 40.6 48.8 55 70.7 80 83.2 84.8 85.7 87.6 88.4];

%---------------------------------------
% Capacitor phase shifts measured at the
% frequencies in the vector f
%---------------------------------------
ps_measrd = [8.0 15.4 28.1 39 47 53 68 76 80 84 84 86 88];

%--------------------------------------------
% Plot the phase shift data above in order to
% compare the behavior of the measured
% circuit to the behavior of the
% simulated circuit
%--------------------------------------------
figure(2)

% Use logarithmic scale for frequency axis 
semilogx(f, ps_sim_complt, 'b-', 'LineWidth', 1.3)
hold on
semilogx(f, ps_measrd, 'ko', 'LineWidth', 3)
axis([0 40000 0 90])
grid on

% Include labels, a legend, and a title
xlabel('Frequency (Hz)')
legend('Sim. Complete Phase Shifts', 'Measured Phase Shifts', 'Location', 'northwest')
ylabel('Phase Shift ({\circ})')
title('Voltage Phase Shift due to 1.5 nF Capacitor')
