//
//  ContactInfoView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct ContactInfoView: View {
  
  @Binding var contactPassed: ContactStruct
  
  @State var showEditContactSheet = false
  
  var body: some View {
    NavigationStack{
      List{
        VStack (alignment: .center) {
          Image(systemName: "person.crop.circle")
            .resizable()
            .frame(width: 200, height: 200)
          
          Text(contactPassed.name)
            .font(.title)
            .bold()
        }
        .frame(maxWidth: .infinity)
        .padding()
        
        Section("Detail"){
          ContactInfoRowView(titlePassed: "Age", informationPassed: contactPassed.age.description)
          ContactInfoRowView(titlePassed: "School", informationPassed: contactPassed.school)
          ContactInfoRowView(titlePassed: "Phone", informationPassed: contactPassed.phone)
          ContactInfoRowView(titlePassed: "Mail", informationPassed: contactPassed.mail)
        }
      }
      .toolbar{
        ToolbarItem{
          Button("Edit"){
            showEditContactSheet.toggle()
          }
        }
      }
    }
    .sheet(isPresented: $showEditContactSheet, content: {
      EditContactSheet(contactPassed: $contactPassed)
    })
  }
}

#Preview {
  @State var contactPreview = ContactStruct(name: "Tan", age: 15, phone: "099999999", mail: "tan@devcommu.com", isBestFriend: true, school: "DevCommu")
  
  return ContactInfoView(contactPassed: $contactPreview)
}
