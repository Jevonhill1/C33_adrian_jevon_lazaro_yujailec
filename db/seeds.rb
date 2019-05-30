Category.destroy_all
Recipe.destroy_all
RecipeCategory.destroy_all

categories  = [
                {name: 'latin'},
                {name: 'japanese'},
                {name: 'italian'},
                {name: 'comfort food'},
                {name: 'dessert'},
                {name: 'healthy'},
                {name: 'vegan'},
                {name: 'gluten free'}
              ]

categories.each { |category| Category.create(category) }

eggs = Recipe.create(
  name:           "Fried Eggs",
  cook_time:      10,
  servings:       4,
  difficulty:     "easy",
  calories:       94,
  carbs:          0,
  protein:        6,
  fat:            5,
  sugar:          0,
  fiber:          0,
  recipe_details: "Cook the food....doesnt get much easier than this!"
)

arroz_pollo = Recipe.create(
  name:           "Arroz con Pollo",
  cook_time:      60,
  servings:       4,
  difficulty:     "medium",
  calories:       430,
  carbs:          50,
  protein:        20,
  fat:            16,
  sugar:          1,
  fiber:          2,
  recipe_details: "Cook the food. Comer la comida!"
)

ramen = Recipe.create(
  name:           "Tonkatsu Ramen",
  cook_time:      40,
  servings:       4,
  difficulty:     "medium",
  calories:       250,
  carbs:          40,
  protein:        21,
  fat:            33,
  sugar:          3,
  fiber:          10,
  recipe_details: "Cook the food, Enjoy the food! Slurp it down!"
)

lasgna = Recipe.create(
  name:           "100 layer Lasgna",
  cook_time:      240,
  servings:       20,
  difficulty:     "hard",
  calories:       762,
  carbs:          43,
  protein:        52,
  fat:            34,
  sugar:          14,
  fiber:          5,
  recipe_details: "Cook the food, Enjoy the food!...Thats alot of pasta!"
)

tofu_nuggets = Recipe.create(
  name:           "Popcorn Tofu Nuggets",
  cook_time:      90,
  servings:       6,
  difficulty:     "medium",
  calories:       231,
  carbs:          18,
  protein:        10,
  fat:            22,
  sugar:          1,
  fiber:          2,
  recipe_details: "Cook the food, Enjoy the food!...These look real good!"
)

cinnamon_rolls = Recipe.create(
  name:           "Vegan Gluten-free Cinnamon Rolls",
  cook_time:      75,
  servings:       4,
  difficulty:     "medium",
  calories:       406,
  carbs:          57,
  protein:        6,
  fat:            19,
  sugar:          28,
  fiber:          5,
  recipe_details: "Cook the food, Enjoy the food!...No animals were harmed in the making of this recipe!"
)

RecipeCategory.create(recipe: eggs, category: Category.find_by(name: "comfort food"))
RecipeCategory.create(recipe: arroz_pollo, category: Category.find_by(name: "comfort food"))
RecipeCategory.create(recipe: arroz_pollo, category: Category.find_by(name: "latin"))
RecipeCategory.create(recipe: ramen, category: Category.find_by(name: "japanese"))
RecipeCategory.create(recipe: lasgna, category: Category.find_by(name: "italian"))
RecipeCategory.create(recipe: lasgna, category: Category.find_by(name: "comfort food"))
RecipeCategory.create(recipe: tofu_nuggets, category: Category.find_by(name: "comfort food"))
RecipeCategory.create(recipe: tofu_nuggets, category: Category.find_by(name: "healthy"))
RecipeCategory.create(recipe: tofu_nuggets, category: Category.find_by(name: "vegan"))
RecipeCategory.create(recipe: cinnamon_rolls, category: Category.find_by(name: "vegan"))
RecipeCategory.create(recipe: cinnamon_rolls, category: Category.find_by(name: "dessert"))
RecipeCategory.create(recipe: cinnamon_rolls, category: Category.find_by(name: "gluten free"))

puts "#{Recipe.count} recipes and"
puts "#{Category.count} categories and"
puts "#{RecipeCategory.count} entries in Recipe Category."
