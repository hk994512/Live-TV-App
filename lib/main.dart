import 'package:flutter/material.dart';

import 'models/data/sports_channels.dart';
import '/models/providers/alert.dart';
import 'models/screens/tab_bar.dart';
import 'package:provider/provider.dart';
import 'models/providers/channels_list.dart';
import 'package:google_fonts/google_fonts.dart';
// var _seed = const  Color.fromARGB(255,131,57,0);
// final theme  = ThemeData(
//   useMaterial3 : true  ,
//   colorScheme : ColorScheme.fromSeed(
//     brightness : Brightness.dark ,
//  const Color.fromARGB(255, 4, 15, 77)
//     seedColor:  const  Color.fromARGB(255, 17, 221, 24),
//     onBackground: Colors.white  ,
//     surfaceTint: const Color.fromARGB(255, 33, 56, 190)   ,

//   ) ,
//   textTheme: GoogleFonts.latoTextTheme() ,
// );
void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c) => AlertDialogBox()),
        ChangeNotifierProvider(create: (c) => SportsChannelsList()),
        ChangeNotifierProvider(create: (c) => ChannelsList()),
        ChangeNotifierProvider(create: (c) => AlertDialogBox2()),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            cardColor: Colors.black,
            primaryColor: const Color.fromARGB(255, 1, 11, 70), 
            canvasColor: Colors.white,
            textTheme: GoogleFonts.latoTextTheme()),
        initialRoute: "/",
        routes: {
          '/': (context) => const TabsScreen(),
        },
      ),
    ));
