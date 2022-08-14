//
//  ProfileView.swift
//  TestSwiftUi-HW4
//
//  Created by Тарас Андреев on 13.08.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isError = false
    @State var username = ""
    @State var password = ""
    
    var body: some View {
 
        VStack(alignment: .center, spacing: 10) {
            
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.top, -180)
                .ignoresSafeArea(.keyboard, edges: .top)
            
            TextField(" Email or phone", text: $username)
                    .modifier(TextFieldModifier())
            SecureField(" Password", text: $password)
                    .modifier(TextFieldModifier())
            Button(action: {
                    self.isError = true
            }, label: {
                Text("Log in")
            }).alert(isPresented: $isError, content: {
                Alert(title: Text("Введите email и password"))
            })
                .padding()
                .frame(width: 380, height: 60)
                .contentShape(Rectangle())
                .background(Color("ButtonColor"))
                .font(.system(size: 20))
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .foregroundColor(Color("TFBorderColor"))
            .font(.system(size: 18))
            .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color("TFBorderColor"), style: StrokeStyle(lineWidth: 1.0)))
            .padding(.horizontal, 16)
            .submitLabel(.done)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

