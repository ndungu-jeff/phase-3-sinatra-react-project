puts "🌱 Seeding spices..."

# Seed your database here

#create a user instance
 u1 = User.create(
    full_name: "Jeff Smith",
    image_url: "https://rb.gy/rn3ae2",
    email: "jeffsmith@gmail.com",
    phone_number: "0757483554",
    post_recipe: "Toast and blend the pilau masala: In a medium saucepan over medium heat. 
    Brown the onions by frying it in oil until it caramelizes. This should take about 10 to 15 minutes. Stir in the Garlic, ginger and serrano pepper.
    Add the meat stock cubes, pilau masala, cilantro, bay leaves, and salt to taste and brown the meat for about 
    Stir in the tomatoes and cook till it dissolves. Then stir in the potatoes.
    Add water and bring everything to a rolling boil and leave the potatoes to cook for about 10 minutes.
    Stir in the rice then cover tightly. You can use an aluminum foil to cover it first, this will help keep the steam in. Then place the lid over it and leave to cook on a low heat for 20 minutes until the liquid has been absorbed.
     Serve hot! You can sprinkle the rice pilaf with some chopped cilantro, then fluff with a fork. Enjoy.",
    comment: "This is awesome"

 )

#  create a recipe instance
   r1 = Recipe.create(
    image_url:"https://jayne-rain.com/wp-content/uploads/2019/12/beef-pilau-rice-15.jpg",
    video_url:"https://youtu.be/2kh9m7VLqho",
    cooking_instructions:"Toast and blend the pilau masala: In a medium saucepan over medium heat. 
    Brown the onions by frying it in oil until it caramelizes. This should take about 10 to 15 minutes. Stir in the Garlic, ginger and serrano pepper.
    Add the meat stock cubes, pilau masala, cilantro, bay leaves, and salt to taste and brown the meat for about 
    Stir in the tomatoes and cook till it dissolves. Then stir in the potatoes.
    Add water and bring everything to a rolling boil and leave the potatoes to cook for about 10 minutes.
    Stir in the rice then cover tightly. You can use an aluminum foil to cover it first, this will help keep the steam in. Then place the lid over it and leave to cook on a low heat for 20 minutes until the liquid has been absorbed.
     Serve hot! You can sprinkle the rice pilaf with some chopped cilantro, then fluff with a fork. Enjoy.",
    
    star_rating: 5,
    category_id: 1,
    user_id: 1
   )


#    create a category instance
     c1 = Category.create(
        # user_id: u1.id,
        # recipe_id: r1.id
        name:"African food"
     )
puts "✅ Done seeding!"
