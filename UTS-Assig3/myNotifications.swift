//
//  mynNotifications.swift
//  UTS-Assig3
//
//  Created by Asher on 16/5/18.
//  Copyright © 2018 Asher. All rights reserved.
//

import Foundation
import UserNotifications


class myNotifications {
    init () {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            self.makeRandomNotification()
        })
    }
    
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        //displaying the ios local notification when app is in foreground
        completionHandler([.alert, .badge, .sound])
    }

    func makeRandomNotification(){
        let content = UNMutableNotificationContent()
        print("notification being creatd wait 15 seconds")
        //adding title, subtitle, body and badge
        content.title = "Quizmaster 2000"
        content.subtitle = "How about doing a question?"
        content.body = "We send you questions to complete every now and again..."
        content.badge = 1
        
        //getting the notification trigger
        //it will be called after 5 seconds
        //        60 seconds * 60 min... 3600
        let nagOften: TimeInterval = 15
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: nagOften, repeats: false)
        
        //getting the notification request
        let request = UNNotificationRequest(identifier: "QuizMaster2000", content: content, trigger: trigger)
        
        //adding the notification to notification center
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

}
