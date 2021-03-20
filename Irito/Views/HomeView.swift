//
//  HomeView.swift
//  Irito
//
//  Created by Marfa Lamova on 3/20/21.
//  Copyright © 2021 Madina Saparbayeva. All rights reserved.
//

import SwiftUI

//Actually List for clubs
struct HomeView: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            Text(landmark.name)
                .padding()
            
            Spacer()
            
            landmark.image
                .frame(width: 148, height:70)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HomeView(landmark: landmarks[1])
            HomeView(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
