import 'package:flutter/material.dart';
import 'package:onboarding/screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ImageSelectionProvider(),
          lazy: false,
        )
      ],
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      initialRoute: 'SignIn',
      routes: {
        'Home': (_) => const HomeScreen(),
        'HomePageCars': (_) => const HomePageCars(),
        'Register': (_) => const RegisterScreen(),
        'SignIn': (_) => const SignInScreen(),
      },
      theme: ThemeData.dark()
          .copyWith(buttonTheme: ButtonThemeData(buttonColor: Colors.black)),
    );
  }
}
