import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ipa/router/router.dart';
import 'package:ipa/screen/pages/mainmenu/screen.dart';
import 'package:ipa/screen/pages/state/symbol.dart';
import 'package:provider/provider.dart';

import 'constant/constantroute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      child: MaterialApp(
        title: 'International Phonetic Alphabet',
        debugShowCheckedModeBanner: false,
        home: MainMenu(),
        onGenerateRoute: Router.generateRoute,
        initialRoute: mainRoute,
      ),
      providers: <SingleChildCloneableWidget>[
        ChangeNotifierProvider<Simbol>(create: (_) => Simbol()),
      ],
    );
  }
}
