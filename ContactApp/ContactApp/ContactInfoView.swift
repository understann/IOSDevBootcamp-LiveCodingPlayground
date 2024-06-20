//
//  ContactInfoView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct ContactInfoView: View {
  
  var contactPassed: ContactStruct
  
    var body: some View {
      List(){
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
          Image(systemName: "person.crop.circle")
            .resizable()
          .frame(width: 200,height: 200)
          
          Text(contactPassed.name)
            .font(.title)
            .bold()
        }
        .padding()
        .frame(maxWidth: .infinity)
          .listRowSeparator(.hidden)
        
        Section("Detail") {
          ContactInfoRowView(titleInfoPassed: "School", infoPassed: contactPassed.schoool)
          ContactInfoRowView(titleInfoPassed: "Phone", infoPassed: contactPassed.phone)
          ContactInfoRowView(titleInfoPassed: "Mail", infoPassed: contactPassed.mail)
        }
        
      }
    }
}

#Preview {
  ContactInfoView(contactPassed: ContactStruct(name: "Tan DevCommu", age: 20, phone: "0000000000", mail: "tan@devcomm", isBestFriend: true, schoool: "Chulalongkorn"))
}
