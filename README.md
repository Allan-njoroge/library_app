# Library App
A simple book lending library application built with Ruby on Rails and Tailwind CSS. This application allows users to manage books (create, view, update, delete) and track their lending history. No authentication is required, making it easy to use.

## Features
- **Manage Books:** Add, edit, view, and delete books.
- **Track Borrowing History:** Record when a book is borrowed and returned, including the borrower's name.
- **Borrow and Return Books:** Borrow books by providing the borrower's name and return them when done.
- **View Borrowing History:** See the borrowing history for a specific book or borrower.

## Technologies Used
- **Ruby on Rails:** Backend framework for handling data and routing.
- **Tailwind CSS:** Utility-first CSS framework for styling the application.

## Setup Instructions
Follow these steps to set up and run the application locally.

### Prerequisites
**Ruby:** Ensure Ruby is installed. Check your Ruby version:
```sh
ruby -v
```
Recommended version: ```3.0.0``` or higher.
**Rails:** Ensure Rails is installed. Check your Rails version:

```sh
rails -v
```

Recommended version: ```7.0.0``` or higher.
**Node.js:** Tailwind CSS requires Node.js. Check your Node.js version:

```sh
node -v
```
Recommended version: ```16.x``` or higher.

## Step 1: Clone the Repository
Clone the repository to your local machine:
```sh
git clone https://github.com/yourusername/library_app.git
cd library_app
```

## Step 2: Install Dependencies
Install the required Ruby gems:
```sh
bundle install
```
Install JavaScript dependencies (for Tailwind CSS):
```sh
Copy
yarn install
```

## Step 3: Set Up the Database
Create and migrate the database:
```sh
rails db:create
rails db:migrate
```

## Step 4: Start the Application
Run the development server:

```sh
Copy
bin/rails server
```
This command starts both the Rails server and the Tailwind CSS watcher. The application will be available at:

## Usage
### Managing Books
1. View All Books
2. Add a New Book 
3. Edit a Book
4. Delete a Book
5. Borrowing and Returning Books
6. Return a Book
7. Viewing Borrowing History
8. Borrower History

Folder Structure
```sh
library_app/
├── app/                  # Models, views, controllers, and assets
├── bin/                  # Scripts for running the application
├── config/               # Application configuration files
├── db/                   # Database schema and migrations
├── public/               # Static files
├── test/                 # Test files
├── tailwind.config.js    # Tailwind CSS configuration
├── Gemfile               # Ruby gem dependencies
├── README.md             # Project documentation
└── ...                   # Other configuration files
```

## Acknowledgments
- **Ruby on Rails:** For providing a robust framework for building web applications.
- **Tailwind CSS:** For making it easy to create responsive and modern user interfaces.