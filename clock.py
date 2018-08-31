import socket
import datetime

now = datetime.datetime.now()

now_str = now.strftime('%H:%M', 'Europe/Stockholm')

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.sendto('fp-package/clock/%s' % now_str, ('127.0.0.1', 4444))
