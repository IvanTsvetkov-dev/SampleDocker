import requests
import time

url = "https://api.binance.com/api/v3/ticker/price"
params = {
    "symbol": "ETHUSDT"
}

while True:
    request = requests.get(url=url, params=params)
    data = request.json()
    print(f"price ETH:{data['price']}")
    time.sleep(1)