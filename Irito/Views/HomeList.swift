//
//  HomeList.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

struct HomeList: View {
    var body: some View {
        ScrollView{
            Text("What are you interested in?")
                .font(.system(size: 20))
                .bold()
                .padding()
                .frame(minWidth: 80, maxWidth: .infinity, alignment: .topLeading)
            
            //Age part text Button
            Group{
                Text("What are your age?")
                
                Text("We collect stuff special for you")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            .frame(width: 338, alignment: .leading)
            
            
            //Age part start
            HStack(
                alignment: .center,
                spacing: 10
                ){
                    
                Group{
                    Text("5-12 y.o")
                    Text("13-17 y.o")
                    Text("18+ y.o.")
                    }
                    .padding()
                    .frame(width: 108)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1))

            }
            .padding(.bottom)
            
            //Age part ennd
            
            Text("Join group which you love ")
                .frame(width: 338, alignment: .leading)
            
            VStack{
                List(landmarks[0..<3]) { landmark in
                    HomeView(landmark: landmark)
                }
                .frame(minHeight: 3*80+20)
            }
            
            Spacer()
                .frame(minHeight: 5, maxHeight: 20)
            
            Text("Here are stories you might love")
                .frame(width: 338, alignment: .leading)
            
            VStack{
                List(stories[0..<3]) { landmark in
                    StoriesList(story: landmark)
                }
                .frame(minHeight: 3*80+20)
            }

        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}
