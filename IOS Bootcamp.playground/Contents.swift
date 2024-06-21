//MARK: - Getting start
//var myFriend = "Chokdee"
//print("Sawasdee kub \(myFriend)")
//myFriend = "Api"
//print("Sawasdee kub \(myFriend)")

//MARK: - Pre Struct
//var myFriend = "Chokdee"
//var myFriendAge = 20
//var myFriendPhone = "0999999999"
//var myFirendMail = "chokdee@devcommumail.com"
//
//var myFriend1 = "Api"
//var myFriendAge1 = 20
//var myFriendPhone1 = "0999999999"
//var myFirendMail1 = "api@devcommumail.com"
//
//print("\(myFriend) In the age of \(myFriendAge)")

//MARK: - Struct
struct myFriend{
  var name: String
  var age: Int = 20
  var phone: String
  var mail: String
}


//var apiInfo = myFriend(name: "Api", age: 25, phone: "0999999999", mail: "api@devcommu.com")

//print("My friend's name is \(apiInfo.name). Api age is \(apiInfo.age)")
//
//apiInfo.name = "Phoom"
//apiInfo.age = apiInfo.age + 1
//
//print("Api's new name: \(apiInfo.name). Api's age: \(apiInfo.age)")
// MARK: - Array


var myFriendList: [myFriend] = [myFriend(name: "Chokdee", age: 20, phone: "0999999999", mail: "chokdee@devcommu.com")]

myFriendList.append(myFriend(name: "Api", age: 25, phone: "0999999999", mail: "api@devcommu.com"))
//myFriendList.append(chokdeeInfo)
//myFriendList.append(chokdeeInfo)

//print(myFriendList[1].name)

for i in 0...myFriendList.count - 1{
  if i == 1 {
    myFriendList.remove(at: i)
    break ;
  }
  print(myFriendList[i].name)
}

for i in myFriendList{
  print(i.name)
}


struct ContactStruct{
var name: String
var age: Int
var school: String
var phone: String
var mail: String
var isBestFriend: Bool
}

var ContactList: [ContactStruct] = [
  ContactStruct(name: "Mookrob", age: 57, school: "DevCommu", phone: "9999999999", mail: "mookrob@devcommu.com", isBestFriend: true),
  ContactStruct(name: "Apiphoom", age: 32, school: "Chula", phone: "9999999999", mail: "apiphoom@openmirai.com", isBestFriend: true),
  ContactStruct(name: "Chokdee", age: 12, school: "Chulalongkorn", phone: "9999999999", mail: "chokdee@devcommu.com", isBestFriend: false),
]

print("------- My Friend List ------- ")

for Contact in ContactList{
  print(" ")
  print("Name: \(Contact.name)")
  print("Age: \(Contact.age)")
  print("School: \(Contact.school)")
}

print("------- -------------- -------")
