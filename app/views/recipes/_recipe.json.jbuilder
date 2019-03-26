json.extract! recipe, :id, :name, :author, :difficulty, :category, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)

# Generates some JSON based on a computation
# All difficultys over a '3' are considered "Hard"
json.difficulty_english recipe.difficulty > 3 ? "Hard" : "Easy"

# Or we can add related models,
# like we could have all the foods this recipe is for
# or all the steps for this recipe
