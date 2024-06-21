//MARK: - Getting start
var myFriendName = "Chokdee"
print("Sawasdee kub \(myFriendName)")
myFriendName = "Api"
print("Sawasdee kub \(myFriendName)")

//MARK: - Struct

struct myFriendStruct{
  var name:String
  var age: Int
  var isBestfriend: Bool = false
}

var chokdeeInfo = myFriendStruct(name: "chokdee", age: 24, isBestfriend: true)

print(chokdeeInfo)
print(chokdeeInfo.name)

chokdeeInfo.isBestfriend = false

print(chokdeeInfo)

var apiInfo = myFriendStruct(name: "api", age: 32)
print(apiInfo)


//MARK: - Array

var myFriendList: [myFriendStruct] = [
  chokdeeInfo,
  myFriendStruct(name: "Mookrob", age: 58)
]

myFriendList.append(apiInfo)
myFriendList.append(myFriendStruct(name: "Tan", age: 15, isBestfriend: true))

print(myFriendList)
print(myFriendList[0])
print(myFriendList[1].name)

myFriendList[1].age = myFriendList[1].age + 1

print(myFriendList[1])

//MARK: - Loop
for i in 0...3 {
  print(myFriendList[i].name)
}

for friend in myFriendList{
  print(friend.name)
}


