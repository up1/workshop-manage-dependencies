// Define database name
const dbName = 'my_database';
const user = 'my_user';
const password = 'my_password';

// Connect to the admin database
db = db.getSiblingDB(dbName);

// Create a user with read/write privileges
db.createUser({
  user: user,
  pwd: password,
  roles: [{ role: 'readWrite', db: dbName }]
});

// Insert initial data into a collection
db.my_collection.insertMany([
  { name: 'Item 1', description: 'This is item 1' },
  { name: 'Item 2', description: 'This is item 2' },
  { name: 'Item 3', description: 'This is item 3' }
]);

print('Initialization script executed successfully.');
