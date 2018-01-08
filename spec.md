# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project

- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) 
	A User can have many children, also a Child has many Cards

- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
	A Card belongs_to a Child

- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
A Card has_many milestones through card_milestones

- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
A Card can submit the title of the milestone through a custom setter

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
There are validations for presence of name, birthday, age. There are also validations for name uniqueness. There are maximum string lenght validations to prevent corrupt data.

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
Uses a custom method  - Child.latest_card to calculate and show the user the most recent card for a child. Not by date created but by the age of the child on the card.

- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
	Uses a nested routes to allow a child to edit and create cards. IE: Child.cards.new creates a new card. Child.cards.edit(@child, @card) allow user to edit the card through the associated child. The user can also edit and create a Child profile seperately from the card through the child_new_path and child_edit_path.

- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
In this case it's users/children - which show the users children profiles created with their latest cards
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
