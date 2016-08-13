
    print("start")
    tmr.delay(2000)
    tmr.register(0, 500, tmr.ALARM_AUTO, function() dofile("meas.lua") end)
    tmr.start(0)

