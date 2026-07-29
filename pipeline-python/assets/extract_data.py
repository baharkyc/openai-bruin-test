""" @bruin
name: extract_data
type: python
@bruin """

import sys


def main():
    print("[extract_data] starting extraction")
    records = [{"id": i, "value": i * 2} for i in range(5)]
    for r in records:
        print(f"[extract_data] fetched record id={r['id']} value={r['value']}")
    print(f"[extract_data] pulled {len(records)} records total", file=sys.stderr)
    raise RuntimeError("extract_data failed: upstream source returned HTTP 500")


main()
