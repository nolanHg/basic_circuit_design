%**********************************************************************
%                                                                    **
% Title: error.m                                                     **
%                                                                    **
% Author: nolanHg                                                    **
%                                                                    **
% Purpose: Calculates the errror between the gain of an              **
%          ideal voltage divider circuit, and a measured             **
%          voltage divder circuit                                    **
%                                                                    **
% Date: 03/14/2019                                                   **
%                                                                    **
%**********************************************************************

calc = [143.7e-3 495.8e-3 319.7e-3]; % Calculated gain
meas = [150e-3 500e-3 325e-3]; % measured gain
res_sizes = [10 10e3 10e6]; % resistor values
Ohm = char(hex2dec('03A9')); % Ohm character

cm_err = zeros(1, 3); % error between calcuated and measured gain
tot_err = zeros(1, 3); % error between ideal and measured gain

% Calculate the errors
for k = 1 : size(cm_err, 2)

	cm_err(k) = 100 * abs((calc(k) - meas(k)) / calc(k));
	tot_err(k) = 100 * abs((500e-3 - meas(k)) / 500e-3);

end

% Print out the errors
for k = 1 : size(cm_err, 2)

	fprintf('Percentage error for %d %s circuit: %0.3f\n', res_sizes(k), Ohm, cm_err(k))
	fprintf('Total error for %d %s circuit: %0.3f\n', res_sizes(k), Ohm, tot_err(k))

end
