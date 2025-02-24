# Eleanor L Axson, Jennifer K Quint, Mome Mukherjee, Hannah R Whittaker, Philip W Stone, Kate McLaren, 2024.

import sys, csv, re

codes = [{"code":"1856571000006116","system":"icpc2"},{"code":"2152091000000112","system":"icpc2"},{"code":"457168017","system":"icpc2"},{"code":"1222335015","system":"icpc2"},{"code":"2716351000006113","system":"icpc2"},{"code":"2716231000006114","system":"icpc2"},{"code":"909711000006111","system":"icpc2"},{"code":"H3...","system":"icpc2"},{"code":"X101k","system":"icpc2"},{"code":"XaZ8t","system":"icpc2"},{"code":"XaK8Q","system":"icpc2"},{"code":"XaEIV","system":"icpc2"},{"code":"H36..00","system":"icpc2"},{"code":"8CMV.00","system":"icpc2"},{"code":"H3z..11","system":"icpc2"},{"code":"14B3.12","system":"icpc2"},{"code":"1J71.00","system":"icpc2"},{"code":"H31y000","system":"icpc2"},{"code":"H320311","system":"icpc2"},{"code":"2126F00","system":"icpc2"},{"code":"1222335015","system":"icpc2"},{"code":"457168017","system":"icpc2"},{"code":"2716351000006113","system":"icpc2"},{"code":"909711000006111","system":"icpc2"},{"code":"2716231000006114","system":"icpc2"},{"code":"H3z..11","system":"icpc2"},{"code":"H36..00","system":"icpc2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-obstructive-pulmonary-disease-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
