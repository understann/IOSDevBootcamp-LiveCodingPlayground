//
//  ContactRowView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct ContactRowView: View {
  var contactPassed: ContactStruct
  
    var body: some View {
      HStack{
        Image(systemName: "person.crop.circle")
          .resizable()
          .frame(width: 40, height: 40)
        Spacer()
          .frame(width: 20)
        VStack(alignment: .leading) {
          Text(contactPassed.name)
            .font(.title2)
          .fontWeight(.bold)
          
          Text(contactPassed.schoool)
        }
        Spacer()
      }
    }
}

#Preview {
  ContactRowView(contactPassed: ContactStruct(name: "Tester", age: 20, phone: "0000000000", mail: "test@devcommu.com", isBestFriend: true, schoool: "Chulalongkorn"))
}
