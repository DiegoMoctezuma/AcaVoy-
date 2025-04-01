//
//  perfil.swift
//  AcaVoy¡
//
//  Created by MAC13 on 31/03/25.
//

import SwiftUI

struct perfil: View {
    var body: some View {
        VStack{
            HStack{
                Text("AcaVoy!")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding()
//            .padding(.top,0)
            .background(Color(UIColor(red:30/255,green: 75/255,blue: 128/255,alpha: 1.0)))
            HStack{
                Button(action: {
                }) {
                    Spacer()
                    Text("Editar")
                        .foregroundColor(.blue)
                }
            }
            .padding()
            AsyncImage(url: URL(string: "https://picsum.photos/200"))
                .frame(width: 200, height: 200)
                .cornerRadius(40)
            Text("Loera Gustavo")
                .bold()
                .font(.title)
            //Info personal
            VStack(alignment: .leading){
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 25, height: 25)
                            .cornerRadius(5)
                        Image(systemName: "person.circle")
                            .foregroundColor(.white)
                    }
                    Text("Segura Loera Carlos Gustavo")
                        .font(.headline)
                        .padding(.bottom, 5)
                }
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 25, height: 25)
                            .cornerRadius(5)
                        Image(systemName: "envelope")
                            .foregroundColor(.white)
                    }
                    Text("calculDiferencial@gmail.com")
                        .font(.headline)
                        .padding(.bottom, 5)
                }
                HStack{
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 25, height: 25)
                            .cornerRadius(5)
                        Image(systemName: "books.vertical")
                            .foregroundColor(.white)
                    }
                    Text("318257792")
                        .font(.headline)
                }
            }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
            
            Spacer()
        }
    }
}

#Preview {
    perfil()
}
