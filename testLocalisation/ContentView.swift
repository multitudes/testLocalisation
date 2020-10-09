//
//  ContentView.swift
//  testLocalisation
//
//  Created by Laurent B on 09/10/2020.
//

import SwiftUI

struct ContentView: View {

	@Environment(\.locale) var locale: Locale

	var today: String {
		let date = Date()
		let formatter = DateFormatter()
		formatter.locale = .autoupdatingCurrent
		formatter.setLocalizedDateFormatFromTemplate("E")
		return formatter.string(from: date)
	}

    var body: some View {

			VStack {
				Text("Localisation test!").font(.title)
				Text("Language: \(locale.languageCode!)")
				Text("Region: \(locale.regionCode!)")
				Text("Today is:")
				Text(today).font(.largeTitle)
            .padding()
			}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
