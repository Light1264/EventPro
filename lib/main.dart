import 'package:eventpro/utils/constants.dart';
import 'package:eventpro/utils/locator.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/bottom_nav_bar.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/cards_screen/view-model/card_view-model.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/event_screens/view_model/events_view_model.dart';
import 'package:eventpro/view/bottom_nav_bar_screens/profile_screen/view_model.dart/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'base_view_model.dart';
import 'view/auth_screens/view_model/sign_up_view_model.dart';
import 'view/onboarding_screens/onboarding_screen1.dart';
import 'view/sign_up_as/view_model/sign_up_as_view_model.dart';

Constants constant = Constants();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignUpAsViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => EventsViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => CardsViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => BaseViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EventPro',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: OnboardingScreen1(),
      ),
    );
  }
}
