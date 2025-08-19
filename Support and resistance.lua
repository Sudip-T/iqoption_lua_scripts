instrument {name = "C2AS Dynamic SR", icon = "indicators:ADX", overlay = true}

period1 = input (10, "period Line 1", input.integer, 1 )
period2 = input (30, "period Line 2", input.integer, 1 )
period3 = input (60, "period Line 3", input.integer, 1 )
period4 = input (100, "period Line 4", input.integer, 1 )
period5 = input (150, "period Line 5", input.integer, 1 )
period6 = input (200, "period Line 6", input.integer, 1 )

input_group {
    "Color",
    color1 = input {default = "rgba(125, 130, 90, 0.3)", type = input.color},
    color2 = input {default = "rgba(125, 130, 90, 0.4)", type = input.color},
    color3 = input {default = "rgba(125, 130, 90, 0.5)", type = input.color},
    color4 = input {default = "rgba(125, 130, 90, 0.6)", type = input.color},
    color5 = input {default = "rgba(125, 130, 90, 0.7)", type = input.color},
    color6 = input {default = "rgba(125, 130, 90, 0.9)", type = input.color},
    width = input {default = 1, type = input.line_width}
}

hline(highest(period1), "HH10", color1, 1)
hline(lowest(period1 ), "LL10", color1, 1)

hline(highest(period2), "HH30", color2, 1)
hline(lowest(period2), "LL30", color2, 1)

hline(highest(period3), "HH60", color3, 1)
hline(lowest(period3), "LL60", color3, 1)

hline(highest(period4), "HH100", color4, 1)
hline(lowest(period4), "LL100", color4, 1)

hline(highest(period5), "HH150", color5, 1)
hline(lowest(period5), "LL150", color5, 1)

hline(highest(period6), "HH200", color6, 1)
hline(lowest(period6), "LL200", color6, 1)

hline(highest(close,period6), "HH201", color6, 1)
hline(lowest(close,period6), "LL201", color6, 1)
