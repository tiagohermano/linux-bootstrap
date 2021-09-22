from requests import get

ip = get("https://api.ipify.org").text
keyboard.send_keys(ip)
