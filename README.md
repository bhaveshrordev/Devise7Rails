<html>
  <h1>Devise7Rails</h1>

  <h2>Description</h2>
  <p>Devise7Rails is a Ruby on Rails application that integrates the Devise gem with Rails 7, along with Turbo. It provides authentication functionality and includes two main pages: "landing_page" and "dashboard".</p>

  <h2>Getting Started</h2>
  <p>Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.</p>

  <h3>Prerequisites</h3>
  <p>Make sure you have the following installed on your system:</p>
  <ul>
    <li>Ruby</li>
    <li>Ruby on Rails</li>
    <li>Node.js (for JavaScript dependencies)</li>
  </ul>

  <h3>Installation</h3>
  <p>Clone the repository:</p>
  <pre><code>git clone https://github.com/yourusername/Devise7Rails.git</code></pre>
  <p>Install dependencies:</p>
  <pre><code>bundle install</code></pre>
  <p>Set up the database:</p>
  <pre><code>rails db:create
  rails db:migrate</code></pre>

  <h2>Running the Application</h2>
  <p>To start the Rails server, run:</p>
  <pre><code>rails server</code></pre>
  <p>Access the application in your browser at <a href="http://localhost:3000">http://localhost:3000</a>.</p>

  <h2>Usage</h2>
  <p>The application includes two main pages:</p>
  <ul>
    <li>landing_page: Accessible to all users, including guests and authenticated users.</li>
    <li>dashboard: Accessible only to authenticated users. Displays user-specific information and actions.</li>
  </ul>

  <h2>Access Control</h2>
  <p>The access control in the application is managed as follows:</p>
  <ul>
    <li><strong>Landing Page:</strong> Accessible to all users, including guests and authenticated users.</li>
    <li><strong>Dashboard:</strong> Accessible only to authenticated users. Unauthenticated users are redirected to the login page.</li>
  </ul>

  <h2>Controllers</h2>
  <p>The application includes the following controllers:</p>
  <ul>
    <li><strong>StaticPagesController:</strong> Manages the landing page and dashboard.</li>
    <ul>
      <li><em>landing_page:</em> Renders the landing page.</li>
      <li><em>dashboard:</em> Renders the dashboard page.</li>
    </ul>
    <li><strong>MessageController:</strong> Can create new messages.</li>
    <ul>
      <li><em>vote:</em> Logged in User can Upvote or Downvote on a message.</li>
      <li><em>bookmark:</em> Logged in User can Bookmark a message.</li>
    </ul>
  
  </ul>

  <h2>Views</h2>
  <p>The views are structured as follows:</p>
  <ul>
    <li><strong>layouts/application.html.erb:</strong> Main layout file that includes navigation links and displays flash notices and alerts.</li>
    <li><strong>static_pages/landing_page.html.erb:</strong> Landing page view.</li>
    <li><strong>static_pages/dashboard.html.erb:</strong> Dashboard view.</li>
  </ul>

  <h2>Models</h2>
  <p>The application uses the Devise gem for user authentication. It includes a default User model provided by Devise.</p>
  <p>The application also uses acts_as_votable gem on Message Model to manage upvote, downvote and bookmark functionality.</p>
</html>
