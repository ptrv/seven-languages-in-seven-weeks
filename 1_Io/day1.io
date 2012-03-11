#!/usr/bin/env io

"######## Day 1 self-study" println

Exercise := Object clone
"" println
"######## Answer 1:" println
Exercise1a := Exercise clone
Exercise1a description := "Evaluate 1 + 1"
Exercise1a eval := method(1 + 1)
Exercise1a answer := method(
    self description println;  
    self eval println
)
Exercise1a answer

"" println
Exercise1b := Exercise clone
Exercise1b description := "Evaluate 1 + \"one\""
Exercise1b eval := method(1 + "one")
Exercise1b answer := method(
    self description println;
    e := try(
        self eval println
    )
    e catch(Exception,
        writeln(e )
    )
)
Exercise1b answer

"" println
"######## Answer 2:" println
Exercise2a := Exercise clone
Exercise2a description := "Is 0 true or false?"
Exercise2a eval := method(
    if(0 == true) then(
        "0 is true" println
    ) elseif(0 == false) then(
        "0 is false" println
    ) else("0 is neither true nor false" println) 
)
Exercise2a answer := method(
    self description println
    self eval 
)
Exercise2a answer
"" println

Exercise2b := Exercise clone
Exercise2b description := "Is am epmty string true or false?"
Exercise2b eval := method(
    if("" == true) then(
        "empty string is true" println
    ) elseif("" == false) then(
        "empty string is false" println
    ) else("empty string is neither true nor false" println) 
)
Exercise2b answer := method(
    self description println
    self eval 
)
Exercise2b answer
"" println
Exercise2c := Exercise clone
Exercise2c description := "Is 'nil' true or false?"
Exercise2c eval := method(
    if("" == true) then(
        "'nil' is true" println
    ) elseif("" == false) then(
        "'nil' is false" println
    ) else("'nil' is neither true nor false" println) 
)
Exercise2c answer := method(
    self description println
    self eval 
)
Exercise2c answer

# Evaluate 1 + "one"
# => Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
"" println
"######## Answer 3:" println
Exercise2a := Exercise clone
Exercise2a description := "Show slot names of Object"
Exercise2a eval := method(
    Object slotNames
)
Exercise2a answer := method(
    self description println
    self eval println
)
Exercise2a answer
"" println

"" println
"######## Do:" println
# Execute code from a file with a given slot name
MyObject := Object clone
MyObject printer := method(
    doFile("printer.io")
)

MyObject printer
