import requests
'''
torport=9050
proxies={'http':"socks5h://localhost:{}".format(torport),
        'https':"socks5h://localhost{}".format(torport)
         }
r=requests.get( "http://devheroes.club/",proxies=proxies)
print(r)
'''


proxies ='103.129.3.246:83'


url = 'https://httpbin.org/ip'

response = requests.get(url, proxies={'http': proxies, 'https': proxies}, timeout=3)
print(response.json())

#response = requests.get(url,proxies=prox)





