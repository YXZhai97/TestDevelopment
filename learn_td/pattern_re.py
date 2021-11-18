import re

s='skhfb976fcfe98wsbd'
r=re.split('\d+',s)
print(r)

replace=re.sub('\d','*',s)
print(replace)

find=re.findall('s..',s)
print(find)



