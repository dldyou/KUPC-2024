import json 

statistics = {'correct': {}, 'total': {}, 'fs': {}}
with open('./statistics/statistics.txt', 'r', encoding='utf-8') as f:
    lines = f.readlines()
    for data in lines:
        data = data.split('\t')
        if (data[0] == '맞은 사람'):
            for j in range(1, len(data) - 1):
                statistics['correct'][chr(ord('A') + j - 1)] = data[j]
        elif (data[0] == '총 제출'):
            for j in range(1, len(data) - 1):
                statistics['total'][chr(ord('A') + j - 1)] = data[j]
    for i in range(len(lines[0].split('\t')) - 2):
        statistics['fs'][chr(ord('A') + i)] = { 'name': '-', 'time': '-' }

with open('./statistics/first_solve.txt', 'r', encoding='utf-8') as f:
    lines = f.readlines()
    for i, data in enumerate(lines):
        tmp = data.split(': ')[1].split(', ')
        name = tmp[0].split()[0]
        time = tmp[1].split('분')[0]
        statistics['fs'][chr(ord('A') + i)]['name'] = name
        statistics['fs'][chr(ord('A') + i)]['time'] = time

with open('./statistics/data.json', 'w', encoding='utf-8') as f:
    json.dump(statistics, f)