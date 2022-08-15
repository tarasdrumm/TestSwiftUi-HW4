//
//  LocalNotificationsService.swift
//  TestSwiftUi-HW4
//
//  Created by Тарас Андреев on 15.08.2022.
//

import UIKit
import UserNotifications

class LocalNotificationsService {
    
    // Запрос разрешений на показ уведомлений
    class func requestPermissions() {
        let notifyCenter = UNUserNotificationCenter.current()
        
        notifyCenter.requestAuthorization(options: [.alert, .badge, .sound, .provisional]) { granted, error in
            
            if granted {
                notifyCenter.getNotificationSettings { settings in
                    print(settings)
                    
                    // Подключение уведомлений по расписанию
                    if !UserDefaults.standard.bool(forKey: "notificationWithTimeSetted") {
                        LocalNotificationsService.sheduleNotification()
                        UserDefaults.standard.set(true, forKey: "notificationWithTimeSetted")
                    }
                }
            } else {
                print("Доступ не получен")
            }
        }
    }

    // Установка уведомлений по расписанию (каждый день в 19:00)
    class func sheduleNotification() {
        
        let center = UNUserNotificationCenter.current()
        
        var dateComponents = DateComponents()
        dateComponents.hour = 22
        dateComponents.minute = 09
        
        let trigger = UNCalendarNotificationTrigger(
            dateMatching: dateComponents, repeats: true)
        
        let content = UNMutableNotificationContent()
        content.title = "Автообновление"
        content.sound = .default
        content.body = "Содержит исправление ошибок, обновления безопасности и улучшения"
        DispatchQueue.main.async {
            content.badge = UIApplication.shared.applicationIconBadgeNumber + 1 as NSNumber
        }
    
        let request = UNNotificationRequest(identifier: "123",
                                            content: content, trigger: trigger)
        
        center.add(request) { error in
            print("error")
        }
    }
}
