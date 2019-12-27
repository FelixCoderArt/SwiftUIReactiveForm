//
//  ContentView.swift
//  SwiftUI&CombinePassForm
//
//  Created by Felix Falkovsky on 27.12.2019.
//  Copyright © 2019 Felix Falkovsky. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    
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
                            
                        }) {
                            Group {
                                Text("Create")
                                    .foregroundColor(Color.white)
                                    .padding(12)
                                }
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(radius: 2)
                        }
                    }.padding(12)
                }.background(Color.gray)
                
                List {
                    Text("Placeholder")
                }
            }.navigationBarTitle(Text("Restration Form"))
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
