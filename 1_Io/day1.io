#!/usr/bin/env io

Exercise1 := Object clone
Exercise1aa := Exercise1 clone
Exercise1aa description := "Evaluate 1 + 1"
Exercise1aa eval := method(1 + 1)
Exercise1aa answer := method(
    self description println;  
    self eval println
)
Exercise1aa answer

Exercise1ab := Exercise1 clone
Exercise1ab description := "Evaluate 1 + \"one\""
Exercise1ab eval := method(1 + "one")
Exercise1ab answer := method(
    self description println;
    e := try(
        self eval println
    )
    e catch(Exception,
        writeln(e )
    )
)
Exercise1ab answer



# Evaluate 1 + "one"
# => Exception: argument 0 to method '+' must be a Number, not a 'Sequence'



# Execute code from a file with a given slot name
MyObject := Object clone
MyObject printer := method(
    doFile("printer.io")
)

MyObject printer
