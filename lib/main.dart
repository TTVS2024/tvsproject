import 'package:flutter/material.dart';
import 'mongo_connection.dart';
import 'loginpage.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect(); // Connect to MongoDB on startup
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
//flutter build apk --release