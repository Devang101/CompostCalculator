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

## License

MIT License

Copyright (c) 2017 Devang Patel, Maya Thomas, Evan Chrisinger, Amberlee Baugus

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
