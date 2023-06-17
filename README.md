# Alpha Blog

Alpha Blog is a web application built on Ruby on Rails 7, designed to provide a platform for users to create, read, update, and delete blog articles. It incorporates essential features such as user authentication, article management, and user-friendly interfaces.

This README file serves as a guide to set up and run the Alpha Blog project locally. It includes information about prerequisites, installation steps, configuration, and usage.

## Prerequisites

To run Alpha Blog on your local machine, ensure you have the following prerequisites:

- Ruby (version 3.2.2)
- Ruby on Rails (version 7.0.5)
- Sqlite3 database

## Installation

Follow the steps below to install and set up the Alpha Blog project:

1. Clone the repository to your local machine:

   ```
   git clone https://github.com/PavelShep/alpha_blog.git
   ```

2. Change into the project directory:

   ```
   cd alpha_blog
   ```

3. Install the required gems:

   ```
   bundle install
   ```

4. Set up the database configuration by editing `config/database.yml`

5. Create the database and run migrations:

   ```
   rails db:create
   rails db:migrate
   ```

## Configuration

The Alpha Blog project requires minimal configuration. However, you can customize certain aspects based on your needs. Some of the important configuration files and directories are listed below:

- `config/database.yml`: Contains the database configuration settings.
- `config/application.rb`: Can be modified for additional project-wide configurations.
- `app/views/`: Contains the views that define the user interface.

## Usage

To start the Alpha Blog application, follow these steps:

1. Start the Rails server:

   ```
   rails server
   ```

2. Open your web browser and visit `http://localhost:3000` to access the application.

3. Create a new user account by registering with your email address.

4. Once logged in, you can create, edit, and delete articles.

## Contributing

Contributions to the Alpha Blog project are welcome. If you find any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue on the project's repository.

When contributing, please adhere to the existing coding style and ensure your changes align with the project's purpose.

## License

The Alpha Blog project is open-source and released under the [MIT License](https://opensource.org/licenses/MIT).

## Acknowledgments

The Alpha Blog project is inspired by various blog platforms and is intended for educational purposes. Special thanks to the Ruby on Rails community for their continuous support and valuable contributions.

If you have any questions or need further assistance, please don't hesitate to contact me at pshepel03@gmail.com.
