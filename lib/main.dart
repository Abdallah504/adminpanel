import 'package:adminpanel/view/screens/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: 'https://fgtauxvpvifiapiclizg.supabase.co',
   anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZndGF1eHZwdmlmaWFwaWNsaXpnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY5NTMyOTksImV4cCI6MjA1MjUyOTI5OX0.oNQ8bsAI_2wBSqIByM2LzbtLYS-MoJ2yHgNneJYeQ18'
   );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.black38,
              textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                  .apply(bodyColor: Colors.white),
              canvasColor: Colors.red,
            ),
      home: MainScreen(),
    );
  }
}

