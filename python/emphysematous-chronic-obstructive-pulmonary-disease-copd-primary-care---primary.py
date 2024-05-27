# Eleanor L Axson, Jennifer K Quint, Mome Mukherjee, Hannah R Whittaker, Philip W Stone, Kate McLaren, 2024.

import sys, csv, re

codes = [{"code":"4781471000006112","system":"icpc2"},{"code":"3611791000006110","system":"icpc2"},{"code":"301572010","system":"icpc2"},{"code":"396110016","system":"icpc2"},{"code":"640491000006111","system":"icpc2"},{"code":"909721000006115","system":"icpc2"},{"code":"3921361000006112","system":"icpc2"},{"code":"301477019","system":"icpc2"},{"code":"301460019","system":"icpc2"},{"code":"2578911000006118","system":"icpc2"},{"code":"3764021000006117","system":"icpc2"},{"code":"457581000006111","system":"icpc2"},{"code":"4781821000006113","system":"icpc2"},{"code":"301468014","system":"icpc2"},{"code":"301469018","system":"icpc2"},{"code":"19421011","system":"icpc2"},{"code":"12704691000006117","system":"icpc2"},{"code":"3764031000006119","system":"icpc2"},{"code":"301835010","system":"icpc2"},{"code":"H582.","system":"icpc2"},{"code":"XE0YP","system":"icpc2"},{"code":"H32z.","system":"icpc2"},{"code":"H4640","system":"icpc2"},{"code":"Hyu30","system":"icpc2"},{"code":"H32y.","system":"icpc2"},{"code":"X101r","system":"icpc2"},{"code":"H32..","system":"icpc2"},{"code":"X101q","system":"icpc2"},{"code":"XaIQg","system":"icpc2"},{"code":"H320z","system":"icpc2"},{"code":"X101n","system":"icpc2"},{"code":"H320.","system":"icpc2"},{"code":"H320.00","system":"icpc2"},{"code":"Hyu3000","system":"icpc2"},{"code":"H32yz00","system":"icpc2"},{"code":"H32y111","system":"icpc2"},{"code":"H32..00","system":"icpc2"},{"code":"H464000","system":"icpc2"},{"code":"H32z.00","system":"icpc2"},{"code":"H320z00","system":"icpc2"},{"code":"H581.00","system":"icpc2"},{"code":"H32y.00","system":"icpc2"},{"code":"909721000006115","system":"icpc2"},{"code":"301468014","system":"icpc2"},{"code":"301469018","system":"icpc2"},{"code":"301835010","system":"icpc2"},{"code":"640491000006111","system":"icpc2"},{"code":"4781471000006112","system":"icpc2"},{"code":"301460019","system":"icpc2"},{"code":"3921361000006112","system":"icpc2"},{"code":"396110016","system":"icpc2"},{"code":"H32z.00","system":"icpc2"},{"code":"H32..00","system":"icpc2"},{"code":"H32y.00","system":"icpc2"},{"code":"H320z00","system":"icpc2"},{"code":"H320.00","system":"icpc2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-obstructive-pulmonary-disease-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["emphysematous-chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["emphysematous-chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["emphysematous-chronic-obstructive-pulmonary-disease-copd-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
