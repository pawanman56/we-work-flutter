import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:test_we_work/widgets/logo_container.dart';
import 'package:test_we_work/screens/home_input_card.dart';

class WeWork extends StatelessWidget {
  static const String _title = 'We Work';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
          title: Text(_title),
        ),*/
        appBar: PreferredSize(
          child: Row(
            children: <Widget>[
              LogoContainer(),
            ],
          ),
          preferredSize: Size.fromRadius(90),
        ),
        body: HomeInputCard(),
      ),
    );
  }
}
