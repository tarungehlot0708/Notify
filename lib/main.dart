import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notify/services/notificationservices.dart';
import 'home_page.dart';
void main()
async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await  NotificationServices().intialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home:HomePage(),
    );
  }
}
