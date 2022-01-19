list_of_pasta <- c("Pesto", "Lemon Chicken", "Mushroom Alfredo", 
                   "Eggplant&Mushroom Tomato", "Huancaina", "Cajun", "Tomato Primavera",
                   "Turkey Bolognese")
list_of_meals <- c("Stir Fry", "Greek", "Butter Chicken", "Arroz chaufa", "Escabeche", 
                   "Aji de gallina", "Nachos", "Quesadillas", "Burgers", "Pizza", 
                   "Chili", "Pollo saltado", "Eggplant Parmesan", "Roasted Chicken",
                   "Fish & Rice")
p <- head(sample(list_of_pasta), n = 1)
m <- head(sample(list_of_meals), n = 2)
print(c(p,m))

if(p == last_week[1]){
  p <- head(sample(list_of_pasta), n = 1)
}
else{
  replace(last_week, 1, p)
  }

if(m == last_week[2] | m == last_week[3]){
  m <- head(sample(list_of_meals), n = 2)
}
else{
  replace(last_week, c(2, 3), m)
}

last_week <- c(p,m)
print(c(p,m))
