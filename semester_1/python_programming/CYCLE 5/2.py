import datetime

now = datetime.datetime.now()

print("a) Current Date and Time:", now)

print("b) Current Year:", now.year)

print("c) Month of the Year:", now.month)

print("d) Week Number of the Year:", now.isocalendar()[1])

print("e) Weekday Number:", now.weekday())

print("f) Day of the Year:", now.timetuple().tm_yday)

print("g) Day of the Month:", now.day)

print("h) Day of Week:", now.isoweekday())