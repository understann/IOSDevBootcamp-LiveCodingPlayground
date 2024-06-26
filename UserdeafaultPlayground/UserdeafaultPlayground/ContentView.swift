//
//  ContentView.swift
//  UserdeafaultPlayground
//
//  Created by Nattapon Howong on 21/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("carPark") var carPark: String = ""
  @AppStorage("floor") var floor: String = ""
  
  @State var bool = true
    var body: some View {
        VStack {
          
          HStack{
            Image(systemName: "car")
              .resizable()
              .frame(width: 20, height: 20)
            
            Text("Where is my Car?")
              .font(.title3)
          }
          
          Text(carPark)
            .font(.system(size: 80))
            .frame(height: 150)
          
          Text("Floor : \(floor)")
          
          TextField("Park at", text: $carPark)
            .font(.title3)
            .padding()
            .frame(width: 300)
            .textFieldStyle(.roundedBorder)
          
          TextField("Floor", text: $floor)
            .font(.title3)
            .padding()
            .frame(width: 300)
            .textFieldStyle(.roundedBorder)
          
        }
        .padding()
      
    }
}

#Preview {
    ContentView()
}
