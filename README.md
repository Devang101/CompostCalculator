# CompostCalculator

TODO: Write a project description

## Installation

1. Fork and clone the repo to your desktop.
2. You need to make sure you have MySQL installed on your laptop: `brew install mysql`
3. Once MySQL is installed you need to start up MySQL: `mysql -u root`
4. Create a local database called CompostCalc_development: `CREATE DATABASE CompostCalc_development`
5. (Optional) Create a user called user1 and set up a password: `CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password';`
6. (Optional) If you created a user make sure you grant priviledges for that user (user1) on the database of interest: `GRANT ALL PRIVILEGES ON CompostCalc_development TO 'user1'@'localhost';`
7. If you choose not to create a user make sure to update the database.yml file to reflect the name of your MySQL database and login info. (username: root)
8. Quit out of MySQL: `quit`
9. Run `bundle install` to install all neccessary gems for the application.
10. Make sure you are in the "compost" directory before typing the following command: `rails db:migrate`. This will setup the database for you.
11. Type `rails s` to start the application on a localhost server.
12. Open a browser and nagivagte to localhost:3000 to being using the application.

## Usage

TODO: Write usage instructions

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

TODO: Write history

## Credits

TODO: Write credits

## License

TODO: Write license
