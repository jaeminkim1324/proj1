# Q0: Why is this error being thrown?
I think we haven't made our Pokemon model yet.	


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 

The random Pokemon appear due to the db:seed that we have for record creation, and it generates one of each pokemon. All the pokemon that appear are the starter pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The line of injected ruby makes a button that allows the user to capture a pokemon. The button takes the url that is routed by the pokemon_controller, and it sends in a the parameter @pokemon as the id in params. 

# Question 3: What would you name your own Pokemon?

My own pokemon could be called Luizoro.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in the name of the html that I wanted to redirected to. It's okay not to have a path here because the routes.rb has all of the requests we need.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

The flash attribute has an error and notice accessor method that allows us to display whatever error/notice that we want to show to the user on the form.



# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://jaemin-pokeportal.herokuapp.com/

For some reason, the app is unable to route to anything. 