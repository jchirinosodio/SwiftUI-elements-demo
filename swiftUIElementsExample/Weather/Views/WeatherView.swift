//
//  Home.swift
//  simpleWeatherApp
//
//  Created by Jose Chirinos Odio on 13/10/21.
//

import SwiftUI

struct WeatherView: View {
    @StateObject var weatherVM: WeatherViewModel = WeatherViewModel()
    @State private var shouldShowErrorBox = false
    @State private var city: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    Image("backgroundImage")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(width: geometry.size.width)
                    
                    AsyncImage(url: URL(string: weatherVM.backgroundImageUrl))  { image in
                        image.resizable().ignoresSafeArea()
                    } placeholder: {}
                    ScrollView {
                        VStack(spacing: 30) {
                            Text("Hoy Llueve? ☔️").font(.largeTitle)
                                .font(.callout)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 20, leading: 20, bottom: 10, trailing: 20))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(
                                    .ultraThinMaterial,
                                    in: RoundedRectangle.init(cornerRadius: 0)
                                ).ignoresSafeArea(.all, edges: .top) //: - Title
                            
                            VStack(alignment: .leading, spacing: 20) {
                                TextField("Escribe una ciudad", text: $city)
                                    .padding(.bottom, 30)
                                    .textFieldStyle(.roundedBorder)
                                    .foregroundColor(.black)
                                    .onSubmit {
                                        if (!city.isEmpty) {
                                            weatherVM.fetchData(for: city)
                                        }
                                    }
                                Text("\((weatherVM.weatherDescription ?? "").uppercased()) \(String(weatherVM.temperature ?? 0.0)) °C")
                                    .font(.callout).fontWeight(.heavy).foregroundColor(.white)
                                Divider()
                                Text("Presión: \(String(weatherVM.pressure ?? 0.0))")
                                    .font(.callout)
                                    .foregroundColor(.white)
                                Text("Humedad: \(String(weatherVM.humidity ?? 0.0))")
                                    .font(.callout)
                                    .foregroundColor(.white)
                            }.padding().background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 20)).foregroundColor(.black)
                            Spacer()
                            VStack {
                                Text("Code example: ").fontWeight(.bold).padding().foregroundColor(.white)
                                Image("weatherViewImage")
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFill()
                                    .cornerRadius(5)
                            }.frame(maxWidth: geometry.size.width).background(.ultraThinMaterial)
                        }
                    }
                }
            }
        }
    }
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            WeatherView()
        }
    }
}
