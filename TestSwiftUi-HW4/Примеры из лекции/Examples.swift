//
//  Examples.swift
//  TestSwiftUi-HW4
//
//  Created by Тарас Андреев on 15.08.2022.
//

import SwiftUI


// Пример из лекции №1
/*
struct ContentView: View {
    @State var tapCount = 0
    var body: some View {
        VStack {
            Button(action: {self.tapCount += 1},
                   label: { Text("Tap count \(tapCount)")
            })
        }
    }
}
*/

//struct frameFromSize: ViewModifier {
//    let size: CGSize
//    func body(content: Content) -> some View {
//        content
//            .frame(width: size.width,
//                   height: size.height)
//    }
//}

// Пример из лекции №2

//struct ContentView: View {
//    @State var state: Bool = false
//
//    @State private var speed = 50.0
//    @State private var isEditing = false
//
//    var body: some View {
//        VStack {
//            HStack {
//            Text("Aaaaa")
//                .padding(10)
//                .background(.red)
//            Toggle("Enabled", isOn: $state)
//        }
//            Slider(
//                value: $speed,
//                in: 0...100,
//                onEditingChanged: { editing
//                    in
//                    print("editing: ",
//                        editing)
//                    isEditing = editing
//                }
//            )
//            Text("\(speed)")
//                .foregroundColor(isEditing ? .red : .blue)
//        }
//    }
//}


// Пример из лекции №3

//struct ContentView: View {
//    @State private var isPushEnable = false
//
//    var body: some View {
//        Form {
//            Section {
//                Toggle(isOn: $isPushEnable) {
//                    Text("Toggle")
//                }
//            }
//        }
//    }
//}


// Пример из лекции №4

//struct Universe: Identifiable {
//    var id: String { name }
//    let name: String
//}
//
//struct ContentView: View {
//    @State private var selectedShow: Universe?
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Какая киновселенная вам нравится больше?")
//                .font(.headline)
//            Button("Marvel") {
//                selectedShow = Universe(name: "Вы выбрали Marvel")
//            }
//            Button("DC") {
//                selectedShow = Universe(name: "Вы выбрали DC")
//            }
//        }
//        .alert(item: $selectedShow) { show in
//            Alert(title: Text(show.name), message: Text("Нажмите чтобы вернуться"), dismissButton: .cancel())
//        }
//    }
//}


//Пример из лекции №5

//struct ContentView: View {
//    var colors = ["Red", "Green", "Blue", "Tartan"]
//    @State private var selectedColor = "Red"
//
//    var body: some View {
//        VStack {
//            Picker("Please choose a color", selection: $selectedColor) {
//                ForEach(colors, id: \.self) {
//                    Text($0)
//                }
//            }
//            Text("You selected: \(selectedColor)")
//        }
//    }
//}


// Пример из лекции №6

//struct SecondView: View {
//    var body: some View {
//        Text("This is the detail view")
//    }
//}
//
//struct Navi: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                NavigationLink(
//                    destination: SecondView()
//                ) {
//                    Text("Show Detail View")
//                }
//                .navigationTitle("Navigation")
//                .onAppear {
//                    print("Appeared")
//                }
//            }
//        }
//    }
//}
//struct Navi_Previews: PreviewProvider {
//    static var previews: some View {
//        Navi()
//    }
//}

// Title модификатор

struct LargeTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        Text("Hello")
            .modifier(LargeTitle())
    }
}

struct RegularTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.black)
            .padding()
            .clipShape(RoundedRectangle(cornerRadius: 10))
        Text("Hello")
            .modifier(RegularTitle())
    }
}

