#!/usr/bin/env python3
"""
Quick JSON Pretty Printer
Reads JSON from stdin and prints it with nice formatting.

Usage:
    cat data.json | python json_pretty.py
    echo '{"key":"value"}' | python json_pretty.py
"""
import json
import sys

def pretty_print_json():
    try:
        data = json.load(sys.stdin)
        print(json.dumps(data, indent=2, sort_keys=True))
    except json.JSONDecodeError as e:
        print(f"Error: Invalid JSON - {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    pretty_print_json()
