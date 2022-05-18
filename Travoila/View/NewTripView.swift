//
//  Newtrip.swift
//  Travoila
//
//  Created by Patrick Louis on 15/05/22.
//

import SwiftUI

struct Newtrip: View {
    
    @State var tripTitle: String = ""
    @State var tripDestination: String = ""
    
    @State var startDate: Date = Date()
    @State var endDate: Date = Date()
    
    @State var totalBudgetEstimation: String = ""
    
    @Binding var trips: [Trip]
    @Binding var isNoTrip: Bool
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    
    var body: some View {
        VStack {
            Form {
                Section ( header: Text("Trip Title")) {
                    TextField("Trip Title", text: $tripTitle)
                }

                Section ( header: Text("Trip Destination")) {
                    TextField("Trip Destination", text: $tripDestination)
                }

                Section(header: Text("Date")){
                    DatePicker("Start Date", selection: $startDate, displayedComponents: .date)
                    DatePicker("End Date", selection: $endDate, displayedComponents: .date)
                }

                Section(header: Text("Total Budget Estimation")){
                    TextField("IDR 0",text: $totalBudgetEstimation)
                }
            }

            Button(action: {
                createNewTrip()
            }){
                Text("Save")
                    .bold()
                    .frame(width: 340, height: 50)
                    .background(Color("CustomColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10.0)
            }
            .frame(minWidth:0,  maxWidth: .infinity)
        }
        .background(Color.gray.opacity(0.1))
    }
    
    func createNewTrip(){
        trips.append(
            Trip(title: tripTitle, destination: tripDestination, startDate: startDate, endDate: endDate, totalBudgetEstimation: Int(totalBudgetEstimation) ?? 0 )
        )
        
        isNoTrip = false
        
        mode.wrappedValue.dismiss()
    }
}

struct Newtrip_Previews: PreviewProvider {
    
    @State private static var dummyData: [Trip] = []
    @State private static var isNoTrip: Bool = true
    
    static var previews: some View {
        Newtrip(trips: $dummyData, isNoTrip: $isNoTrip)
    }
}
