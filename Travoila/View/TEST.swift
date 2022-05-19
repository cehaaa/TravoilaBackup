//
//  TEST.swift
//  Travoila
//
//  Created by Patrick Louis on 19/05/22.
//

import SwiftUI

struct TabContainerView2: View {
    
    @State var isNoTrip: Bool = true
    @State var trips: [Trip] = []
    
    var body: some View {
        TabView {
            TEST(isNoTrip: $isNoTrip, trips: $trips)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("My trip")
                .tabItem {
                    Label("My Trips", systemImage: "airplane.circle")
                }
        }
        .accentColor(Color("CustomColor"))
    }
}

struct TEST: View {
    
    @Binding var isNoTrip: Bool
    @Binding var trips: [Trip]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello")
                
                NavigationLink(destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip)){
                    Text("Add Expense")
                        .bold()
                        .frame(width: 340, height: 50)
                        .background(Color("CustomColor"))
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
            }
            .navigationTitle("Budget Trip")
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: NewTripView(trips: $trips, isNoTrip: $isNoTrip),
                        label: {
                            Image(systemName: "plus")
                        })
                    .accentColor(Color("CustomColor"))
            )
        }
    }
}
}

struct TEST_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = false
    
    static var previews: some View {
        TEST(isNoTrip: $isNoTrip, trips: $dummyData)
    }
}
