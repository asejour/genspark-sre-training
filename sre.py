class Person:
  def __init__(self, value):
    self.result = value

  def storefunc(self, value):
    self.result = value
    
  def display(self):
  	print(self.result)

#p1 = Person(36)
#p1.storefunc(11)
#p2 = Person(36)
#p2.storefunc(12)
#p3 = Person(36)
#p3.storefunc(13)
#p4 = Person(36)
#p4.storefunc(14)
#p5 = Person(36)
#p5.storefunc(15)

#ps =[p1,p2,p3,p4,p5]

#for i in ps:
#	print(i.display())

list = []

for i in range(5):
 p1 = Person(i)
 p1.storefunc(i)
 list.append(p1)
for i in list:
	print(i.display())