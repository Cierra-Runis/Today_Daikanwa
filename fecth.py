'''
fetch.py
'''

# https://kanjibunka.com/wp-content/uploads/2015/01/2506_b.jpg

year = 2015
month = 1
start: int = 2506
end: int = 3111

# for i in range(start, end + 1):
#     print(year, month, i)
#     res = requests.get(
#         f'https://kanjibunka.com/wp-content/uploads/{year}/{month:0>2}/{i}_a.jpg',
#         timeout=None,
#     )
#     with open(f'./img/{year}-{month:0>2}/{i}_a.jpg', 'wb') as f:
#         f.write(res.content)

#     res = requests.get(
#         f'https://kanjibunka.com/wp-content/uploads/{year}/{month:0>2}/{i}_b.jpg',
#         timeout=None,
#     )
#     with open(f'./img/{year}-{month:0>2}/{i}_b.jpg', 'wb') as f:
#         f.write(res.content)

# while start != 0:
#     res = requests.get(
#         f'https://kanjibunka.com/wp-content/uploads/{year}/{month:0>2}/{start}_a.jpg',
#         timeout=None,
#     )
#     if res.status_code == 404:
#         print(f'{year} {month} {start} 无数据')
#         if month == 1:
#             year -= 1
#             month = 12
#         else:
#             month -= 1
#     else:
#         print(f'正在保存 {year} {month} {start}')
#         with open(f'./img/{year}-{month:0>2}/{start}_a.jpg', 'wb') as f:
#             f.write(res.content)
#         res = requests.get(
#             f'https://kanjibunka.com/wp-content/uploads/{year}/{month:0>2}/{start}_b.jpg',
#             timeout=None,
#         )
#         with open(f'./img/{year}-{month:0>2}/{start}_b.jpg', 'wb') as f:
#             f.write(res.content)
#         start -= 1

# start = end
# while start != 0:
#     res = requests.get(
#         f'https://kanjibunka.com/wp-content/uploads/{year}/{month:0>2}/{start}_a.jpg',
#         timeout=None,
#     )
#     if res.status_code == 404:
#         print(f'{year} {month} {start} 无数据')
#         if month == 12:
#             year += 1
#             month = 0
#         else:
#             month += 1
#     else:
#         print(f'正在保存 {year} {month} {start}')
#         dir_name: str = f'./img/{year}-{month:0>2}/'
#         if not os.path.exists(dir_name):
#             os.mkdir(dir_name)
#         with open(f'./img/{year}-{month:0>2}/{start}_a.jpg', 'wb') as f:
#             f.write(res.content)
#         res = requests.get(
#             f'https://kanjibunka.com/wp-content/uploads/{year}/{month:0>2}/{start}_b.jpg',
#             timeout=None,
#         )
#         with open(f'./img/{year}-{month:0>2}/{start}_b.jpg', 'wb') as f:
#             f.write(res.content)
#         start += 1
