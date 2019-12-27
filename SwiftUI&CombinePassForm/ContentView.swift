//
//  ContentView.swift
//  SwiftUI&CombinePassForm
//
//  Created by Felix Falkovsky on 27.12.2019.
//  Copyright © 2019 Felix Falkovsky. All rights reserved.
//
import UIKit
import SwiftUI
import Combine

struct ContentView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    
    @State var users = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Group {
                            TextField("First Name", text: $firstName)
                                .padding(12)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(radius: 5)
                        
                        Group {
                            TextField("First Name", text: $lastName)
                                .padding(12)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(radius: 5)
                        
                        Button(action: {
                            self.users.append("\(self.firstName) \(self.lastName)")
                            self.firstName = ""
                            self.lastName = ""
                        }) {
                            Group {
                                Text("Create")
                                    .foregroundColor(Color.white)
                                    .padding(12)
                                }
                            .background((firstName.count + lastName.count > 0) ? Color.blue : Color.gray)
                            .cornerRadius(10)
                            .shadow(radius: 2)
                        }
                    }.padding(12)
                }.background(Color.gray)
                
                List(users,id: \.self) {
                    Text($0)
                }
            }.navigationBarTitle(Text("Restration Form"))
                .navigationBarItems(leading: HStack {
                    Text("First Name:")
                    Text(firstName)
                    Text("Last Name:")
                    Text(lastName)
                })
        }
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone XR")
    }
}
#endif
