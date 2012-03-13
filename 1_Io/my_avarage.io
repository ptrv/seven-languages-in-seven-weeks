List myAverage := method(
    self foreach(i,
        (i hasProto(Number)) ifFalse(Exception raise("list contains not only numbers"))
    )    
    (self size == 0) ifTrue(return 0) ifFalse(return self sum / self size)
    // mysize := self size
    // mysum := self sum
    // avg := mysum / mysize
)

array := list(1.5, 2.5, 3.431, 4, 5, 6, 7, 8, 9)

array average println
array myAverage println

e := try( list(1, "a") myAverage println)
e catch ( Exception, "Exception successfully catched" println)
