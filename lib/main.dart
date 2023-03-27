import 'package:baraka/authentication/signin_page.dart';
import 'package:baraka/authentication/signup_page.dart';
import 'package:baraka/firebase_options.dart';
import 'package:baraka/screens/details/food_details.dart';
import 'package:baraka/screens/home/home_page.dart';
import 'package:baraka/screens/order/food_order_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'auth/bloc/authentication_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'mont'),
        initialRoute: SignInPage.id,
        routes: {
          SignInPage.id: (context) => const SignInPage(),
          SignUpPage.id: (context) => const SignUpPage(),
          HomeScreen.id: (context) => const HomeScreen(),
          FoodDetailsPage.id: (context) => const FoodDetailsPage(),
          FoodOrderPage.id: (context) => const FoodOrderPage(),
        },
      ),
    );
  }
}
