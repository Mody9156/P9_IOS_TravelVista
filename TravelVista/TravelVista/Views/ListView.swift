//
//  ListSwiftUIView.swift
//  TravelVista
//
//  Created by KEITA on 01/09/2024.
//
import SwiftUI

// Simulate a View
struct ListView: View {
    let countryViewModel: CountryViewModel
    
    var body: some View {
        NavigationStack {
            List {
                // Boucle sur chaque région dans le ViewModel
                ForEach(countryViewModel.region, id: \.name) { region in
                    Section(header: Text(region.name)) {
                        // Boucle sur chaque pays dans la région
                        ForEach(region.countries, id: \.name) { country in
                            // NavigationLink pour chaque pays
                            NavigationLink(destination: DetailView(country:country) {
                                HStack {
                                    Image(country.pictureName)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .clipShape(Circle())
                                    
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(country.name)
                                            .font(.title2)
                                            .foregroundColor(Color("CustomBlue"))
                                        Text(country.capital)
                                            .foregroundColor(.black)
                                    }
                                    Spacer()
                                    Text("\(country.rate)")
                                  
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color("AccentColor"))
                                    
                                }
                            }
                        }
                    }
                }
            }
            .scrollContentBackground(.hidden) // Cache le fond de la liste
            .background(Color.clear) // Définit le fond de la liste comme transparent
            .navigationTitle("List de voyages")
        }
    }
}
struct DetailView : UIViewControllerRepresentable{
    
    var country : Country
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        //created new instance
        guard let detailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailViewController")//StoryBoard ID
                as? DetailViewController else {
            fatalError()
        }
        detailVC.country = country
        
        return detailVC // return instance
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //Update the user interface (SwiftUI) when you have an interaction
        //Our interface is static
    }
}
