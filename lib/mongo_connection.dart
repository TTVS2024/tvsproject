import 'package:mongo_dart/mongo_dart.dart';
class MongoDatabase {
  static Db? _db;
  static const String _connectionString = 'mongodb+srv://TTVS:nJrU4QNNMBpDRQta@cluster0.v909e.mongodb.net/tvs';
  static const String _collectionName = 'stafflogin'; // Your MongoDB collection name


  // Connect to MongoDB
  static Future<void> connect() async {
    _db = await Db.create(_connectionString);
    await _db?.open();
    print('Connected to MongoDB');
  }

  // Insert user data into MongoDB (optional method if you want to add users)
  static Future<void> insertUser(Map<String, dynamic> userData) async {
    var collection = _db?.collection(_collectionName);
    await collection?.insertOne(userData);
    print('User inserted: $userData');
  }

  // Validate user credentials
  static Future<bool> validateUser(String staffid, String password) async {
    var collection = _db?.collection(_collectionName);

    // Debug: Retrieve and print all users in the collection
    var allUsers = await collection?.find().toList();
    print('All users in the database: $allUsers');

    // Debugging input values
    print('Validating user with staffid: $staffid and password: $password');

    // Query for user with matching staffid and password
    var user = await collection?.findOne({
      'staffid': staffid,
      'password': password,
    });

    // Debugging query result
    print('User found: $user');

    // Return true if user exists, otherwise false
    return user != null;
  }
}
//mongodb+srv://TTVS:nJrU4QNNMBpDRQta@cluster0.v909e.mongodb.net/TTVS