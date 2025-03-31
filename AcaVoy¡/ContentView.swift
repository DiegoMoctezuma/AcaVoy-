//
//  ContentView.swift
//  AcaVoy¡
//
//  Created by MAC13 on 31/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical){
                VStack{
                    HStack{
                        Text("AcaVoy!")
                            .bold()
                            .font(.title)
                            .foregroundColor(.yellow)
                        NavigationLink{
                            buscador()
                        }
                        label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                        }
                        Spacer()
                        AsyncImage(url: URL(string: "https://picsum.photos/200"))
                            .frame(width: 60, height: 60)
                            .cornerRadius(32)
                            .overlay(Circle().stroke(.gray))
                    }
                    HStack{
                        Text("Lily Allen")
                            .bold()
                            .font(.title)
                        Spacer()
                        Text("Online")
                            .font(.title2)
                            .foregroundColor(.green)
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(.green)
                    }
                    Spacer()
                    Text("Recomendados")
                        .font(.title)
                        .foregroundColor(.cyan)
                    HStack{
                        VStack(alignment:.leading){
                            HStack{
                                Text("Ruta 1")
                                    .bold()
                                Image(systemName: "clock")
                                    .font(.title2)
                                Text("15 min")
                                    .frame(width: 55)
                                Image(systemName: "person.2.fill")
                                    .font(.title2)
                            }
                            .overlay(Rectangle().stroke(.black))
                            .padding(.vertical,1)
                            HStack{
                                Text("Ruta 2")
                                    .bold()
                                Image(systemName: "clock")
                                    .font(.title2)
                                Text("15 min")
                                    .frame(width: 55)
                                Image(systemName: "person.fill")
                                    .font(.title2)
                            }
                            .overlay(Rectangle().stroke(.black))
                            .padding(.vertical,1)
                            HStack{
                                Text("Ruta 3")
                                    .bold()
                                Image(systemName: "clock")
                                    .font(.title2)
                                Text("15 min")
                                    .frame(width: 55)
                                Image(systemName: "person.3.fill")
                                    .font(.title2)
                            }
                            .overlay(Rectangle().stroke(.black))
                            .padding(.vertical,1)
                        }
                        VStack{
                            HStack{
                                Image(systemName: "cloud.sun")
                                    .font(.title)
                                Text("15°")
                            }
                            Text("Naucalpan")
                                .bold()
                                .font(.caption)
                        }
                        .overlay(Rectangle().stroke(.black).frame(width: 80, height: 95))
                    }
                    Spacer()
                    //Anuncio
                    Image("watch")
                        .resizable()
                        .scaledToFit()
                        .padding(.vertical)
                    Spacer()
                    //Recomendaciones
                    ScrollView(.horizontal){
                        HStack{
                            HStack{
                                VStack(alignment:.leading){
                                    HStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/200"))
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(32)
                                            .overlay(Circle().stroke(.gray))
                                        Text("Moctezuma")
                                    }
                                    Text("Ruta A -> B")
                                        .bold()
                                    Text("Esta ruta es muy segura y bien iluminada.")
                                }
                                .frame(width: 150,height: 150)
                                .overlay(Rectangle().stroke())
                                .padding(.horizontal,5)
                            }
                            HStack{
                                VStack(alignment:.leading){
                                    HStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/200"))
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(32)
                                            .overlay(Circle().stroke(.gray))
                                        Text("Segura C")
                                    }
                                    Text("Ruta D -> B")
                                        .bold()
                                    Text("Esta ruta no la recomiendo de noche.")
                                }
                                .frame(width: 150,height: 150)
                                .overlay(Rectangle().stroke())
                                .padding(.horizontal,5)
                            }
                            HStack{
                                VStack(alignment:.leading){
                                    HStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/200"))
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(32)
                                            .overlay(Circle().stroke(.gray))
                                        Text("Snatiago Jair")
                                    }
                                    Text("Ruta A -> L")
                                        .bold()
                                    Text("La ruta no es muy segura, pero si barata. ")
                                }
                                .frame(width: 150,height: 150)
                                .overlay(Rectangle().stroke())
                                .padding(.horizontal,5)
                            }
                            HStack{
                                VStack(alignment:.leading){
                                    HStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/200"))
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(32)
                                            .overlay(Circle().stroke(.gray))
                                        Text("Moctezuma")
                                    }
                                    Text("Ruta A -> B")
                                        .bold()
                                    Text("Esta ruta es muy segura y bien iluminada.")
                                }
                                .frame(width: 150,height: 150)
                                .overlay(Rectangle().stroke())
                                .padding(.horizontal,5)
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .refreshable{}
    }
}

#Preview {
    ContentView()
}
