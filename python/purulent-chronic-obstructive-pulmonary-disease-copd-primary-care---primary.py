# Eleanor L Axson, Jennifer K Quint, Mome Mukherjee, Hannah R Whittaker, Philip W Stone, Kate McLaren, 2024.

import sys, csv, re

codes = [{"code":"123588010","system":"icpc2"},{"code":"885281000006118","system":"icpc2"},{"code":"506053014","system":"icpc2"},{"code":"301448015","system":"icpc2"},{"code":"H3110","system":"icpc2"},{"code":"H311.","system":"icpc2"},{"code":"XE0YM","system":"icpc2"},{"code":"H311z","system":"icpc2"},{"code":"H311.00","system":"icpc2"},{"code":"H311z00","system":"icpc2"},{"code":"H311000","system":"icpc2"},{"code":"H311z00","system":"icpc2"},{"code":"H311.00","system":"icpc2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-obstructive-pulmonary-disease-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["purulent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["purulent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["purulent-chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
