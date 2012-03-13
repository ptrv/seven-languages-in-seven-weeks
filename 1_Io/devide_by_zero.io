Number origDivide := Number getSlot("/")

Number / := method(val,
    if(val==0,
        return 0,
        return origDivide(val)
    )
)

(1 origDivide(0)) println
(1 / 0) println
