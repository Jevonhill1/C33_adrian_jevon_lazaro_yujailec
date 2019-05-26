class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    params[:recipe][:categories].reject!(&:empty?).each do |category| 
      RecipeCategory.create(recipe: @recipe, category: Category.find(category.to_i))
    end
    if @recipe.save
      redirect_to @recipe, notice: "Recipe was successfully created"
    else
      render 'new'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
   
    redirect_to '/recipes', notice: 'Recipe was successfully destroyed.'
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :servings, :difficulty, :calories, :carbs, :protein, :fat, :sugar, :fiber, :vegan, :gluten_free, :image_url, :categories, :recipe_details)
  end

end
