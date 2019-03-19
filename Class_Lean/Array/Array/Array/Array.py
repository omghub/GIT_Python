import csv

with open('AT.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        dictionary = [row[0] , row[1]]
        print(dictionary)