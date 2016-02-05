import csv

with open("CLIWOC15.csv", 'rU') as csvIN:
    with open('ship-data.csv', 'wb') as csvOUT:
        writer = csv.writer(csvOUT, delimiter=',', quoting=csv.QUOTE_ALL)
        for line in csv.reader(csvIN, delimiter=','):
            line = [x.replace('\n', '') for x in line]
            writer.writerow(line)

