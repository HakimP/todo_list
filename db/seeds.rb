# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = User.create(name:'Peter', lastname:'Perez',username:'snilher',email:'ccc@ccc.com')
b = User.create(name:'Juan', lastname:'Perez1',username:'coco',email:'ccc1@ccc.com')
c = User.create(name:'Eder', lastname:'Perez1',username:'cocoando',email:'ccc2@ccc.com')


c1 = List.create(title:'t1', user:a)
c2 = List.create(title:'t1', user:a)
c3 = List.create(title:'t1', user:b)
c4 = List.create(title:'t1', user:c)

d1 = Task.create(title:'t1d',note:'ccc',completed:true, list:c1)
d2 = Task.create(title:'t1d',note:'ccc',completed:true, list:c1)
d3 = Task.create(title:'t1d',note:'ccc',completed:true, list:c2)
d4 = Task.create(title:'t1d',note:'ccc',completed:true, list:c2)
d5 = Task.create(title:'t1d',note:'ccc',completed:true, list:c3)
d6 = Task.create(title:'t1d',note:'ccc',completed:true, list:c3)
d7 = Task.create(title:'t1d',note:'ccc',completed:true, list:c4)
d8 = Task.create(title:'t1d',note:'ccc',completed:true, list:c4)