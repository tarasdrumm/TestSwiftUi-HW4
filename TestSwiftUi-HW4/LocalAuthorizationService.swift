//
//  LocalAuthorizationService.swift
//  TestSwiftUi-HW4
//
//  Created by Тарас Андреев on 15.08.2022.
//

import Foundation
import LocalAuthentication

enum BioAuth {
    case faceID
    case touchID
    case none
}

class LocalAuthorizationService {
    
    var login = "123"
    var password = "456"
    let context = LAContext()
    var error: NSError?
    
    // Метод проверки на использование авторизации по биометрии
    func checkBioAuthPossibility() -> BioAuth {
        
        guard context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) else { return BioAuth.none}
        
        switch context.biometryType.rawValue {
        case 2:
            return BioAuth.faceID
        case 1:
            return BioAuth.touchID
        default:
            return BioAuth.none
        }
    }
    
    func authorizeIfPossible(_ authorizationFinished: @escaping (Bool) -> Void) {
        
        // Текст для TouchID (текст для FaceID задается в info.plist во вкладке Privacy - Face ID Usage Description)
        let reason = "Хотите использовать Touch ID для авторизации?"
        
        // Вызов биометрии
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
            
            if success {
                authorizationFinished(success)
            }
        }
    }
    
    func authorizationFinished() -> Bool {
        return true
    }
    
    // Метод проверки логина и пароля
    func loginSuccess(login: String, password: String) -> Bool {
        
        if login == self.login && password == self.password {
            return true
        } else {
            return false
        }
    }
}
