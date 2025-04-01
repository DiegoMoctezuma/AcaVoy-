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
                            .foregroundColor(.white)
                        Spacer()
                        NavigationLink{
                            buscador()
                        }
                        label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .foregroundColor(.white)
                            
                        }
                        
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
                        .padding(10)
                        .padding(.top, 40)
                        .background(Color(UIColor(red:30/255,green: 75/255,blue: 128/255,alpha: 1.0)))
                    //favoritos
                    Text("Favoritos")
                        .font(.title)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            HStack(alignment:.top){
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                VStack(alignment: .leading){
                                    Text("Metro San Juan")
                                    Text("Ruta A -> B")
                                        .bold()
                                }
                            }
                            HStack(alignment:.top){
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                VStack(alignment: .leading){
                                    Text("FES Acatlan")
                                    Text("Ruta A -> B")
                                        .bold()
                                }
                            }
                            HStack(alignment:.top){
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                VStack{
                                    Text("Huastes")
                                    Text("Ruta A -> B")
                                        .bold()
                                }
                            }
                        }
                    }.padding()
                    Spacer()
                    HStack{
                        VStack {
                            NavigationLink{
                                RouteDetailView()
                            }
                            label: {
                                Text("Recomendados")
                                    .font(.title2)
                                    .foregroundColor(.blue)
                            }
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
                                .padding(.vertical,1)
                            }
                        }
                        VStack{
                            Image("climaApp")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 130, height: 130)
                                .cornerRadius(20)
                        }
                    }
                        .padding(30)
                        .background(Color(UIColor.systemGray5))
                        
                    
                    Spacer()
                    //Anuncio
                    Image("watch")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(30)
                        .padding()
                    Spacer()
                    //Recomendaciones
                    ScrollView(.horizontal,showsIndicators: false){
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
                                .foregroundColor(.white)
                                .frame(width: 150,height: 150)
                                .background(Color.orange)
                                .cornerRadius(10)
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
                                .foregroundColor(.white)
                                .frame(width: 150,height: 150)
                                .background(Color.red)
                                .cornerRadius(10)
                                .padding(.horizontal,5)
                            }
                            HStack{
                                VStack(alignment:.leading){
                                    HStack{
                                        AsyncImage(url: URL(string: "https://picsum.photos/200"))
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(32)
                                            .overlay(Circle().stroke(.gray))
                                        Text("Santiago Jair")
                                    }
                                    Text("Ruta A -> L")
                                        .bold()
                                    Text("La ruta no es muy segura, pero si barata. ")
                                }
                                .foregroundColor(.white)
                                .frame(width: 150,height: 150)
                                .background(Color.green)
                                .cornerRadius(10)
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
                                .foregroundColor(.white)
                                .frame(width: 150,height: 150)
                                .background(Color.purple)
                                .cornerRadius(10)
                                .padding(.horizontal,5)
                            }
                        }
                    }
                    .padding()
                }
            }
            .ignoresSafeArea(.all)
        }
        .refreshable{}
    }
}

#Preview {
    ContentView()
}
