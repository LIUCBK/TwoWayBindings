//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by 刘佳雨 on 2025/2/8.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    @State private var sliderValue = 50.0
    var body: some View {
        VStack {
            Spacer()
            
            Text("Press conut: \(count)")
                
            Button("Press Me"){
                count += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Name entered: \(name)")
            
            Spacer()
            
            Toggle("Toggle is \(toggleIsOn ? "on" : "off"):", isOn: $toggleIsOn)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            
            ColorPicker("Pick a Rectangle color:", selection: $selectedColor)
            
            Spacer()
            
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper("Stepper valu: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...100)
            Text("Slider value: \(Int(sliderValue))")
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
