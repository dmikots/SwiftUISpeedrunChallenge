//
//  ContentView.swift
//  SwiftUISpeedrunChallenge
//
//  Created by DariaMikots on 22.05.2022.
//

import SwiftUI
//Thx for watching = ) 
struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            //background
            Image("mountains")
                .resizable()
                .ignoresSafeArea()
            VStack{
                //Header
                HStack{
                    Image(systemName: "bolt.circle")
                        .resizable()
                        .foregroundColor(.white)
                        .font(.title2)
                        .frame(width: 30, height: 30)
                    Spacer()
                    Image(systemName: "chevron.up")
                        .foregroundColor(.white)
                        .background(
                        Circle()
                            .fill(.gray).opacity(0.7)
                            .frame(width: 30, height: 30)
                        )
                    Spacer()
                    ZStack{
                        Circle()
                            .stroke(.white, style: StrokeStyle(lineWidth: 2, lineCap: .butt, lineJoin: .round, miterLimit: 2, dash: [0,4], dashPhase: 40))
                            .frame(width: 30, height: 30)
                        Circle()
                            .stroke(.white,lineWidth: 2)
                            .frame(width: 20, height: 20)
                        Circle()
                            .stroke(.white,lineWidth: 5)
                            .frame(width: 5, height: 5)
                    }
                }
                .padding(.bottom)
                .padding(.horizontal)
                .frame(height: UIScreen.main.bounds.height / 8)
                .background(
                    Color.black.opacity(0.5)
                        .ignoresSafeArea(.all, edges: .top)
                )
                Spacer()
                HStack{
                    Text("0.5")
                        .fontWeight(.bold)
                        .padding(7)
                        .foregroundColor(.white)
                        .background(Circle()
                            .fill( Color.black.opacity(0.5)))
                    Text("1x")
                        .fontWeight(.bold)
                        .padding(14)
                        .foregroundColor(.yellow)
                        .background(Circle()
                            .fill( Color.black.opacity(0.5)))
                    Text("0.5")
                        .fontWeight(.bold)
                        .padding(7)
                        .foregroundColor(.white)
                        .background(Circle()
                            .fill( Color.black.opacity(0.5)))
                    
                    }
                .padding(.bottom, 20)
                VStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 14) {
                            Text("CINEMATIC")
                                .fontWeight(.semibold)
                            Text("VIDEO")
                                .fontWeight(.semibold)
                            Text("PHOTO")
                                .foregroundColor(.yellow)
                                .fontWeight(.semibold)
                            Text("PORTRAIT")
                                .fontWeight(.semibold)
                            Text("PANO")
                                .fontWeight(.semibold)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 5)
                        .font(.callout)
                        .foregroundColor(.white)
                    }
                    .padding(.vertical)
                 
                    HStack{
                        Image("mountains")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .frame(width: 50, height: 50)
                        Spacer()
                        ZStack{
                            Circle()
                                .fill(Color.white)
                                .frame(width: 80, height: 80)
                            Circle()
                                .stroke(.black,lineWidth: 3)
                                .frame(width: 70, height: 70)
                        }
                        .padding(.leading, 4)
                        Spacer()
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Circle().fill(Color(hue: 1.0, saturation: 0.072, brightness: 0.262)))
                            
                    }
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                }
          
                .frame(height: UIScreen.main.bounds.height / 6)
                .background(
                    Color.black.opacity(0.5)
                        .ignoresSafeArea(.all, edges: .bottom)
                )
            }
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
