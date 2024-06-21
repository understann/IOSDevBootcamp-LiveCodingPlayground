//
//  ContactInfoRowView.swift
//  ContactApp
//
//  Created by Nattapon Howong on 20/6/2567 BE.
//

import SwiftUI

struct ContactInfoRowView: View {
  var titleInfoPassed: String
  var infoPassed: String
    var body: some View {
      HStack {
        VStack(alignment: .leading){
          Text(titleInfoPassed)
            .bold()
          Text(infoPassed)
        }
        Spacer()
      }
    }
}

#Preview {
  ContactInfoRowView(titleInfoPassed: "Phone", infoPassed: "0999999999")
}
