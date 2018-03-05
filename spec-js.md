# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements

- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
This is implemented with a card serializer. The card serializer uses AMS to render json with the needed key/values - I also used AMS to render the cards to JSON with belongs to child to pass the child's id and data into the rendered json.

- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
This is achieved by again using AMS to render the JSON of the requested card with milestones associcated to it. I think iterate through the milestone json returned and render it to the html. 

- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
A child has many cards and a cards have many milestones.

- [x] Use your Rails API and a form to create a resource and render the response without a page refresh.
Users can create a new milestone on the spot - it renders to the page without a refresh and sends that new info to db in the background.

- [x] Translate JSON responses into js model objects.
The JSON responce is then sent to a card constructor function. A prototype function is invoked which renders the card object created to html.

- [x] At least one of the js model objects must have at least one method added by your code to the prototype.
There is a method that detects the existence of an uploaded image and appends the html accordingly. 

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
