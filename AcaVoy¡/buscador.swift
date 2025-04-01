//
//  buscador.swift
//  AcaVoy¡
//
//  Created by MAC13 on 31/03/25.
//

import SwiftUI

struct buscador: View {
    let images = ["metro","camion1","camion2","combi1","Camion3","micro1"]
    let ratas = ["1","2","3","4","5","6"]
    var body: some View {
        ScrollView(.vertical){
            VStack{
                VStack{
                    HStack{
                        Text("AcaVoy!")
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                        Spacer()
                        NavigationLink{
                            perfil()
                        }
                        label: {
                            AsyncImage(url: URL(string: "https://picsum.photos/200"))
                                .frame(width: 60, height: 60)
                                .cornerRadius(32)
                                .overlay(Circle().stroke(.gray))
                        }
                    }
                    .padding()
                    .background(Color(UIColor(red:30/255,green: 75/255,blue: 128/255,alpha: 1.0)))
                }
                VStack(alignment:.leading){
                    HStack{
                        Text("Buscar")
                            .foregroundColor(.gray)
                            .overlay(Rectangle().stroke(.gray).frame(width: 600,height: 30))
                        Spacer()
                        Image(systemName: "tornado")
                            .bold()
                            .font(.title3)
                    }.padding()
                    HStack{
                        Text("Historial")
                        Image(systemName: "arrow.trianglehead.clockwise")
                    }.padding(.horizontal,10)
                    VStack{
                        ForEach(0..<6){item in rutas(image: images[item],rata: ratas[item])
                        }
                        .padding(.horizontal,10)
                    }
                }
            }
        }
    }
}

#Preview {
    buscador()
}
