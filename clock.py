import socket
import datetime
from pytz import timezone


tz = timezone('Europe/Stockholm')
now = datetime.datetime.now(tz)
now_str = now.strftime('%H:%M')

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.sendto('fp-package/clock/%s' % now_str, ('127.0.0.1', 4444))
