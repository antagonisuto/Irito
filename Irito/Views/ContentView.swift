//
//  ContentView.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("irito")
                .font(.subheadline)
            
            Spacer()
               // .frame(minHeight: 10, maxHeight: 50)
                
            Image("mainPagePicture")
            
            Spacer()
                //.frame(minHeight: 10, maxHeight: 40)
            
            VStack(alignment: .leading) {
                Text("You are not alone")
                    .font(.title)
                    .bold()

                Text("you be me, I be you")
            }
            
            Spacer()
           //Buttonn
            
            NavigationLink (
                destination: MenuTabView(),
                label: {
                    TransferButton()
                }
            )
            //Buttonn
        }
        .padding()
    }
}


struct TransferButton: View {
    var body: some View{
        Text("Say Hello")
        .bold()
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .background(Color.black)
        .foregroundColor(Color.white)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
