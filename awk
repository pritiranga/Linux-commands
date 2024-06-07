#'awk' processes each line of a file one by one, splitting it into fields based on whitespace and allowing you to manipulate or print these fields.

#print column 1 only in file app.log
awk '{print $1}' app.log

#print multiply columns at a time in file app.log
awk '{print $1 " " $3}'

#find any specific pattern from a file
awk '/INFO/' app.log

#filter column 2 which contains time
awk '$2 < "08:51:10"' app.log

#print the first three fields of each line where the second field (time string) is less than 08:51:10
awk '$2 < "08:51:10" {print $1 "," $2 "," "$3"}' app.log 

#print column3 lines that start with 'T'. ~ is matching operator. And ^ operator means matching first letter
awk '$3 ~ /^T/' app.log

'''
Common built-in variables in awk, and what do they represent?
    NR: Number of the current record (line).
    NF: Number of fields in the current record.
    FS: Field separator (default is whitespace).
    OFS: Output field separator (default is a space)
'''

#print lines where the length of the third field is greater than 4
awk 'length($3)>4' app.log



