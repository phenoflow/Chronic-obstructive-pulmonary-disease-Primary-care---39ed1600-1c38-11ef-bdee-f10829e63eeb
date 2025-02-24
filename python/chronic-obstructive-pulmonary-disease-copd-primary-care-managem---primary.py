# Eleanor L Axson, Jennifer K Quint, Mome Mukherjee, Hannah R Whittaker, Philip W Stone, Kate McLaren, 2024.

import sys, csv, re

codes = [{"code":"1811741000006117","system":"icpc2"},{"code":"1811661000006110","system":"icpc2"},{"code":"839001000006111","system":"icpc2"},{"code":"966841000006111","system":"icpc2"},{"code":"1885981000006112","system":"icpc2"},{"code":"2009511000006113","system":"icpc2"},{"code":"XaJYf","system":"icpc2"},{"code":"XaRCG","system":"icpc2"},{"code":"XaYZO","system":"icpc2"},{"code":"XaRCH","system":"icpc2"},{"code":"XaYbA","system":"icpc2"},{"code":"XaIUt","system":"icpc2"},{"code":"661N300","system":"icpc2"},{"code":"661M300","system":"icpc2"},{"code":"8IEy.00","system":"icpc2"},{"code":"66YI.00","system":"icpc2"},{"code":"8CR1.00","system":"icpc2"},{"code":"661M300","system":"icpc2"},{"code":"8CR1.00","system":"icpc2"},{"code":"661N300","system":"icpc2"},{"code":"66YI.00","system":"icpc2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-obstructive-pulmonary-disease-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-obstructive-pulmonary-disease-copd-primary-care-managem---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-obstructive-pulmonary-disease-copd-primary-care-managem---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-obstructive-pulmonary-disease-copd-primary-care-managem---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
