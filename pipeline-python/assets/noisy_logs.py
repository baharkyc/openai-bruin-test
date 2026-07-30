""" @bruin
name: noisy_logs
type: python
@bruin """

TOTAL = 5000


def main():
    print(f"[noisy_logs] starting; will emit {TOTAL} log lines")
    for i in range(1, TOTAL + 1):
        print(f"[noisy_logs] line {i}/{TOTAL} processing batch item {i} status=ok")
    print(f"[noisy_logs] done; emitted {TOTAL} log lines")


main()
