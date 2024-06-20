//
//  ContactRowView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct ContactRowView: View {
  @Binding var contactPassed: ContactStruct
  
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
          
          Text(contactPassed.school)
        }
        Spacer()
      }
    }
}

