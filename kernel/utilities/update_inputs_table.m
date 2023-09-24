% Converts old program names to new program names for test cases in the
% inputs table

% load the current inputs.mat file
tbl = load('inputs.mat');

% 'old name', 'new name';
file_update = {
    'P32_matrix_sums','HW3P1_matrix_sums';
    'P33_num_to_digits','HW3P2_separate_digits';
    'P34_digits_to_num','HW3P3_combine_digits';
    'P35_nearest_numbers','HW3P4_locate_nearest';
    'P36_sort_nums','HW3P5_sort';
    'P37_common_row_values','HW3P6_common_row_values';
    };

inputs_table = tbl.inputs_table;
M = height(file_update);

for f = 1:M
    N = length(inputs_table{:,2});
    for k = 1:N
        inputs_table{k,2} = replace(inputs_table{k,2},file_update{f,1},file_update{f,2});
    end
end
save('inputs.mat','inputs_table');