#!/usr/bin/env io

# Evaluate 1 + 1 => 1

# Evaluate 1 + "one"
# => Exception: argument 0 to method '+' must be a Number, not a 'Sequence'



# Execute code from a file with a given slot name
MyObject := Object clone
MyObject printer := method(
    doFile("printer.io")
)

MyObject printer
