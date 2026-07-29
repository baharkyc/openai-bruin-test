""" @bruin
name: transform_data
type: python
@bruin """

import sys


def main():
    print("[transform_data] starting transform step")
    rows = [10, 20, 0, 40]
    total = 0
    for i, r in enumerate(rows):
        print(f"[transform_data] processing row {i}: {r}")
        total += 100 // r  # deliberate ZeroDivisionError on r == 0
    print(f"[transform_data] running total {total}", file=sys.stderr)


main()
