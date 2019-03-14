calc = [143.7e-3 495.8e-3 319.7e-3];
meas = [150e-3 500e-3 325e-3];
res_sizes = [10 10e3 10e6];
Ohm = char(hex2dec('03A9'));

cm_err = zeros(1, 3);
tot_err = zeros(1, 3);

for k = 1 : size(cm_err, 2)

	cm_err(k) = 100 * abs((calc(k) - meas(k)) / calc(k));
	tot_err(k) = 100 * abs((500e-3 - meas(k)) / 500e-3);

end

for k = 1 : size(cm_err, 2)

	fprintf('Percentage error for %d %s circuit: %0.3f\n', res_sizes(k), Ohm, cm_err(k))
	fprintf('Total error for %d %s circuit: %0.3f\n', res_sizes(k), Ohm, tot_err(k))

end