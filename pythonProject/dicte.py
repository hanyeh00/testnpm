from sqlalchemy.util import cmp

d = {'x': 42, 'y': 3.14, 'z': 7, 'name': 'earth', 'port': 80}
dict2 = d.copy()
d['a'] = 45
del d['x']
cmp(d, dict2)
