import time
import sys

RED = '\033[91m'
GREEN = '\033[92m'
YELLOW = '\033[93m'
CYAN = '\033[96m'
MAGENTA = '\033[95m'
RESET = '\033[0m'


def ketik(teks, warna=RESET, delay_huruf=0.08):
    for huruf in teks:
        sys.stdout.write(warna + huruf + RESET)
        sys.stdout.flush()
        time.sleep(delay_huruf)
    print()

lirik = [
    (CYAN,    " ♪ sudah terbiasa terjadi tanteee ♪", 0.5),
    (MAGENTA, " ♪ teman datang ketika lagi butuh sajaa ♪", 0.8),
    (YELLOW,  " ♪ coba kalo lagi susah...", 0.7),
    (GREEN,   " ♪ mereka semua menghilaaaggg...", 0),
    (RESET,"apakah spek standar seperti ini yang para pemirsa inginkan😍",0),
    (RED,     " ♪ tanteee...", 2.4),
]

for warna, baris, delay_baris in lirik:
    ketik(baris, warna)
    time.sleep(delay_baris)
