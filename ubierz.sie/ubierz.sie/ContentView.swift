import SwiftUI

struct ContentView: View {
    // Na początek proste placeholdery
    @State private var locationText = "Ładowanie lokalizacji..."
    @State private var weatherText = "Pogoda: —"
    @State private var clothingSuggestion = "Proszę odczekać..."

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("ubierz.sie")
                    .font(.largeTitle)
                    .bold()

                Text(locationText)
                    .font(.headline)
                    .foregroundColor(.gray)

                Text(weatherText)
                    .font(.title2)

                Text("Sugestia ubioru:")
                    .font(.headline)
                    .padding(.top)

                Text(clothingSuggestion)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                Spacer()

                Button(action: {
                    // Tutaj potem dodamy funkcję odświeżania danych
                    refreshData()
                }) {
                    Text("Odśwież")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
            .navigationTitle("Ubierz.sie")
        }
    }

    func refreshData() {
        // Na razie placeholder – potem dopiszemy logikę
        locationText = "Lokalizacja: Warszawa"
        weatherText = "Pogoda: 18°C, pochmurno"
        clothingSuggestion = "Zalecamy lekki sweter i kurtkę przeciwdeszczową."
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
