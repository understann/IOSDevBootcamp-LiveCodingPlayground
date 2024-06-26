//
//  ContactRowView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct ContactRowView: View {
  
  @Binding var contactPassed: ContactStruct
  
    var body: some View {
      HStack{
        Image(systemName: "person.crop.circle")
          .resizable()
          .frame(width: 40, height: 40)
        
        VStack(alignment: .leading){
          Text(contactPassed.name)
            .font(.title2)
            .bold()
          Text(contactPassed.school)
        }
        
        Spacer()
      }
    }
}

#Preview {
  @State var contactPreview = ContactStruct(name: "Tan", age: 15, phone: "099999999", mail: "tan@devcommu.com", isBestFriend: true, school: "DevCommu")
  
  return ContactRowView(contactPassed: $contactPreview)
}
