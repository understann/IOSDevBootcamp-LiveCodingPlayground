//
//  ContactInfoRowView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct ContactInfoRowView: View {
  
  var titlePassed: String
  var informationPassed: String
  
  
    var body: some View {
      HStack {
        VStack(alignment: .leading){
          Text(titlePassed)
            .bold()
          Text(informationPassed)
        }
        
        Spacer()
      }
    }
}

#Preview {
  ContactInfoRowView(titlePassed: "Name", informationPassed: "Chokdee")
}
