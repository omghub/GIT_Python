import csv

with open('AT.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
       print(f'[Name {row[0]} | Pass:{row[1]}]')