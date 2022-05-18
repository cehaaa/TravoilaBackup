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
    
    var body: some View {
        
//        ScrollView(.vertical) {
//            VStack (alignment: .leading) {
//                VStack {
//                    Text("Trip Title")
//                    TextField("Trip Title", text: $tripTitle)
//                        .textFieldStyle(.roundedBorder)
//                }
//
//            }
//            .frame(minHeight: 0, maxHeight: .infinity)
//        }
    
        
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
                TextField("Total Budget Estimation",text: $totalBudgetEstimation)
            }

//            Section {
//                Button(action: {}){
//                    Text("Create Budget Trip")
//                        .bold()
//                        .padding(.horizontal, 30.0)
//                        .padding(.vertical, 20.0)
//                        .background(Color("CustomColor"))
//                        .foregroundColor(.white)
//                        .cornerRadius(10.0)
//                }
//            }
        }
        .background(.white)
    }
}

struct Newtrip_Previews: PreviewProvider {
    static var previews: some View {
        Newtrip()
    }
}
