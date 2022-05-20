//
//  LocalNotification.swift
//  Travoila
//
//  Created by Patrick Louis on 20/05/22.
//

import SwiftUI
import UserNotifications

class NotificationManager {
    
    static let instance = NotificationManager()
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (success, error) in
            if let error = error {
                print("ERROR: \(error)")
            } else {
                print("SUCCESS")
            }
        }
    }
}

struct LocalNotification: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Request permission") {
                NotificationManager.instance.requestAuthorization()
            }
        }
    }
}

struct LocalNotification_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotification()
    }
}
