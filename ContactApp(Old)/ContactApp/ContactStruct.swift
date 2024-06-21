//
//  ContactStruct.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import Foundation

struct ContactStruct: Identifiable{
  var id: UUID = UUID()
  var name: String
  var age: Int
  var phone: String
  var mail: String
  var isBestFriend: Bool
  var school: String
}
