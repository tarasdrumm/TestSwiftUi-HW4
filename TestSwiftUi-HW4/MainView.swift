//
//  MainView.swift
//  TestSwiftUi-HW4
//
//  Created by Тарас Андреев on 15.08.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("Авторизация прошла успешно")
            .padding()
            .onAppear {
                
            // Сброс badge number после авторизации
            UIApplication.shared.applicationIconBadgeNumber = 0
                
            // Разрешение на показ уведомлений
            if !UserDefaults.standard.bool(forKey: "alertPermissionsShowed") {
                LocalNotificationsService.requestPermissions()
                UserDefaults.standard.set(true, forKey: "alertPermissionsShowed")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
