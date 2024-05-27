# Eleanor L Axson, Jennifer K Quint, Mome Mukherjee, Hannah R Whittaker, Philip W Stone, Kate McLaren, 2024.

import sys, csv, re

codes = [{"code":"4732991000006119","system":"icpc2"},{"code":"907481000006118","system":"icpc2"},{"code":"301459012","system":"icpc2"},{"code":"4733011000006115","system":"icpc2"},{"code":"105519017","system":"icpc2"},{"code":"851261000006116","system":"icpc2"},{"code":"285100019","system":"icpc2"},{"code":"301444018","system":"icpc2"},{"code":"4733021000006111","system":"icpc2"},{"code":"285104011","system":"icpc2"},{"code":"301458016","system":"icpc2"},{"code":"301451010","system":"icpc2"},{"code":"87480013","system":"icpc2"},{"code":"4733031000006114","system":"icpc2"},{"code":"4733001000006118","system":"icpc2"},{"code":"508561017","system":"icpc2"},{"code":"301457014","system":"icpc2"},{"code":"301455018","system":"icpc2"},{"code":"XE0ZN","system":"icpc2"},{"code":"H3121","system":"icpc2"},{"code":"H31..","system":"icpc2"},{"code":"H31yz","system":"icpc2"},{"code":"H31z.","system":"icpc2"},{"code":"H31y1","system":"icpc2"},{"code":"H31y.","system":"icpc2"},{"code":"H3100","system":"icpc2"},{"code":"H312z","system":"icpc2"},{"code":"H310z","system":"icpc2"},{"code":"H310.","system":"icpc2"},{"code":"H31yz00","system":"icpc2"},{"code":"14B3.11","system":"icpc2"},{"code":"H312100","system":"icpc2"},{"code":"H31z.00","system":"icpc2"},{"code":"H300.00","system":"icpc2"},{"code":"H302.00","system":"icpc2"},{"code":"H31..00","system":"icpc2"},{"code":"H30z.00","system":"icpc2"},{"code":"H310.00","system":"icpc2"},{"code":"H312z00","system":"icpc2"},{"code":"H312011","system":"icpc2"},{"code":"H312.00","system":"icpc2"},{"code":"H31y.00","system":"icpc2"},{"code":"H310z00","system":"icpc2"},{"code":"H31y100","system":"icpc2"},{"code":"H301.00","system":"icpc2"},{"code":"4733001000006118","system":"icpc2"},{"code":"301451010","system":"icpc2"},{"code":"301457014","system":"icpc2"},{"code":"4732991000006119","system":"icpc2"},{"code":"285104011","system":"icpc2"},{"code":"4733021000006111","system":"icpc2"},{"code":"4733031000006114","system":"icpc2"},{"code":"508561017","system":"icpc2"},{"code":"851261000006116","system":"icpc2"},{"code":"285100019","system":"icpc2"},{"code":"301455018","system":"icpc2"},{"code":"105519017","system":"icpc2"},{"code":"4733011000006115","system":"icpc2"},{"code":"301459012","system":"icpc2"},{"code":"301458016","system":"icpc2"},{"code":"H31z.00","system":"icpc2"},{"code":"H312100","system":"icpc2"},{"code":"H310.00","system":"icpc2"},{"code":"H312z00","system":"icpc2"},{"code":"H30z.00","system":"icpc2"},{"code":"H31..00","system":"icpc2"},{"code":"H310z00","system":"icpc2"},{"code":"H312.00","system":"icpc2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-obstructive-pulmonary-disease-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-obstructive-pulmonary-disease-copd-primary-care-tracheobronchitis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-obstructive-pulmonary-disease-copd-primary-care-tracheobronchitis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-obstructive-pulmonary-disease-copd-primary-care-tracheobronchitis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
