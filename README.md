<h1>Imaginanny</h1>


Welcome to the Imaginanny App! This app allows users to book their favorite characters to babysit their children. Each character has a unique description, price, and availability. Users can browse characters, view detailed profiles, and make bookings.

<h3>Features</h3>

- **Character Listings:** Browse through a list of characters available for babysitting.
- **Character Profiles:** View detailed profiles of each character including their description, price, and image.
- **Booking System:** Users can book characters for specific dates and times.
- **User Authentication:** Secure user authentication for booking management.
- **Image Hosting:** Character images hosted on Cloudinary for seamless integration.

<h3>Getting Started</h3>

These instructions will help you set up the project on your local machine for development and testing purposes.

<h4>Prerequisites</h4>

- Ruby 3.x
- Rails 6.x
- PostgreSQL
- Bundler
- Cloudinary account (for image hosting)

<h4>Installation</h4>

1. **Clone the repository:**

```bash
git clone https://github.com/your-username/imaginanny.git
cd imaginanny-app
```

2. **Install dependencies:**

```bash
bundle install
yarn install
```

3. **Set up the database:**

```bash
rails db:create
rails db:migrate
rails db:seed
```

4. **Configure Cloudinary:**

- Create a .env file in the root directory.
- Add your Cloudinary configuration details:

```bash
CLOUDINARY_URL=cloudinary://your-cloudinary-url
```

5. **Running the App**

Start the Rails server:

```bash
rails server
```

6. **Visit the app in your browser:**

```bash
http://localhost:3000
```


<h3>Usage</h3>

- **Browse Characters:** Visit the homepage to see a list of available characters.
- **View Character Profiles:** Click on a character's name to view their detailed profile.
- **Make a Booking:** Use the booking form on a character's profile page to schedule a babysitting session.

<h3>File Structure</h3>

- **app/controllers:** Controllers for handling requests.
- **app/models:** Models for managing data and business logic.
- **app/views:** Views for rendering HTML responses.
- **db:** Database schema, migrations, and seeds.
- **config:** Application configuration files.
- **public:** Static files and assets.

<h3>Contributing</h3>

We welcome contributions to enhance the app. Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch **git checkout -b feature-branch**.
3. Make your changes and commit **git commit -am 'Add new feature'**.
4. Push to the branch **git push origin feature-branch**.
5. Create a new Pull Request.
   
<h3>License</h3>

This project is licensed under the MIT License. See the LICENSE file for details.
