from datetime import datetime
now = datetime.utcnow()
now = now.replace(hour=(now.hour+12)%24,minute=(now.minute+7)/15*15%60)
print(now.strftime("%Hh%Mm"))