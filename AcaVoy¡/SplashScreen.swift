//
//  SplashScreen.swift
//  AcaVoy¡
//
//  Created by MAC13 on 01/04/25.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationStack{
            ZStack {
                VStack {
                    Spacer()
                    VStack {
                        NavigationLink{
                            ContentView()
                        }
                        label: {
                            Image("logoSF") 
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                        }
                    }
                    
                    Spacer()
                    
                    Text("No Free Time")
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.bottom, 40)
                }
                .frame(maxWidth:.infinity, maxHeight:.infinity)
                .background(Color(UIColor(red:30/255,green: 75/255,blue: 128/255,alpha: 1.0)))
//                .navigationBarBackButtonHidden(false)
            }
        }
    }
}

#Preview {
    SplashScreen()
}
