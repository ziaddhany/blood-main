import 'package:flutter/material.dart';
import 'package:mahmoud/screans/Home_Screen.dart';
import 'package:mahmoud/screans/auth.dart';
import 'package:mahmoud/screans/guidelines.dart';
import 'package:mahmoud/screans/login_screen.dart';
import 'package:mahmoud/screans/search.dart';
import 'package:mahmoud/screans/signup.dart';
import 'package:mahmoud/screans/social%20screen/scoial%20login/social%20login%20screen.dart';
import 'package:mahmoud/screans/splash_screen.dart';
import 'package:mahmoud/screans/test_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(blood_bank());
}

class blood_bank extends StatelessWidget {
  const blood_bank({super.key});

  @override
  Widget build(BuildContext context) {



    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:const Splash(),
      routes: {
        '/':(context) => Splash(),
        'homeScreen':(context) =>  HomeScreen(),
        'signup':(context) =>  SocialSignupScreen(),
        'loginScreen':(context) => SocialloginScreen(),


      },

    );

  }


}
