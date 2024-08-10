//
//  ArticlesView.swift
//  GetFit
//
//  Created by Arnav Oruganty on 06/08/24.
//

import SwiftUI

struct Article: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let url: String
}

struct ArticlesView: View {
    let articles = [
        Article(image: "article1",
                title: "Our Favorite Nutrition Takeaways From 2024, So Far",
                url: "https://www.nytimes.com/2024/07/03/well/eat/nutrition-food-tips-2024.html"),
        
        Article(image: "article2",
                title: "Vegetables and Fruits",
                url: "https://nutritionsource.hsph.harvard.edu/what-should-you-eat/vegetables-and-fruits/"),
        
        Article(image: "article3",
                title: "What Happens to Your Body When You Eat Walnuts Every Day",
                url: "https://www.eatingwell.com/article/8069681/benefits-of-walnuts/"),
        
        Article(image: "article4",
                title: "29 nutrition tips for better health and longevity",
                url: "https://www.medicalnewstoday.com/articles/nutrition-tips"),
        
        Article(image: "article5",
                title: "What To Eat Before A Workout",
                url: "https://www.forbes.com/health/nutrition/what-to-eat-before-workout/"),
        
        Article(image: "article6",
                title: "7 Fitness Hacks to Sneak in Exercise Painlessly Every Day",
                url: "https://www.cnet.com/health/fitness/7-fitness-hacks-to-sneak-in-exercise-painlessly-every-day/"),
        
        Article(image: "article7",
                title: "The Top 10 Benefits of Regular Exercise",
                url: "https://www.healthline.com/nutrition/10-benefits-of-exercise"),
        
        Article(image: "article8",
                title: "How often should you switch up your workout routine?",
                url: "https://www.cnet.com/health/fitness/how-often-should-you-switch-up-your-workout-routine/"),
        
        Article(image: "article9",
                title: "Tips to increase stamina",
                url: "https://www.medicalnewstoday.com/articles/324904"),
        
        Article(image: "article10",
                title: "How AI Could Shake Up Your Future Fitness Routine",
                url: "https://www.cnet.com/health/fitness/ai-in-fitness-could-your-future-workout-buddy-be-a-robot/")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(articles) {article in
                        Button(action: {
                            if let url = URL(string: article.url) {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            
                            ZStack {
                                Color(.white)
                                    .opacity(0.1)
                                    .clipShape(.rect(cornerRadius: 10))
                                
                                HStack(spacing: 5) {
                                    Image(article.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 80, height: 80)
                                        .clipShape(.rect(cornerRadius: 10))
                                    
                                    Spacer()
                                    
                                    Text(article.title)
                                        .font(.headline)
                                        .multilineTextAlignment(.center)
                                        .lineLimit(2)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundStyle(.white.opacity(0.5))
                                }
                                .padding()
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Articles")
        }
    }
}

#Preview {
    ArticlesView()
}
