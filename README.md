<h1>Ghibli Film Finder & Friend Zone</h1>

 <p>
A community of people who love Studio Ghibli films!
<br></br>
<br>"Let's Lose Our Way, Together." ♥︎</br>
</p>

<h2>General Info</h2>

<p>abc</p>

<h2>Intro Video</h2>

<p>abc</p>

<h2>Technologies</h2>

<ul>
 <li>Ruby - version 2.6.1</li>
 <li>Active Record - version 6.0</li>
 <li>Sinatra-activerecord - version 2.0</li>
 <li>Rake - version 13.0</li>
 <li>SQLite3 - version 1.4</li>
 <li>Rest-client - version 2.1</li>
 <li>JSON - version 2.3</li>
 <li>tty-prompt - version 11.1</li>
 <li>Colorize - version 0.8.1</li> 
</ul>

<h2>Setup</h2>
To run this project, install it locally by cloning this GitHub repository and opening it in your code editor.<br><br>
From there, use the command to install all required Ruby gems: <code>bundle install</code><br><br>
To create your local database for this project use the rake command: <code>rake db:migrate</code><br><br>
Then to seed your database tables from the Studio Ghibli API, use the command: <code>rake db:seed</code><br><br>
You are now ready to start using the first iteration of Friend Zone! Run the app by entering: <code>ruby runner.rb</code><br><br>
<i>*Please note that some features are still a work in progress.</i>

<h2>Instructions</h2>
If you are a new user, please sign up by navigating to ‘Sign up’ and entering your information, then hit enter/return.<br><br>
Once you have finished signing up, please re-enter:
<code>ruby runner.rb</code><br><br>
For returning users, navigate to ‘Log in’ and enter your name.<br><br>
For each menu, use the arrow keys to highlight an option and press enter to make your selection.

<h2>Code Examples</h2>
```ruby
self.user_login
Ascii.totoro
prompt = TTY::Prompt.new
user_input = prompt.ask('What is your name?')
@@existing_user = all.find_by(name: user_input)
if @@existing_user
    puts 'Welcome back!'.yellow
    @@existing_user.user_menu
else
puts 'Sorry, you need to sign up!'
end
end
```
    <br>
    <code>def self.top_ten_films
           list = order(rt_score: :desc).limit(10).pluck(:title)
            list.each_with_index {|film, index| puts "#{index + 1}:".yellow + "#{film}"}
          end</code>
<p>abc</p>

<h2>User Stories</h2>

<p>abc</p>

<h2>Status</h2>

<p>abc</p>

<h2>Inspiration</h2>

<p>abc</p>

<h2>Contact</h2>

<p>abc</p>
