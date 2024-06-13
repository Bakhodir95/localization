import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Localizations.override(
              context: context,
              locale: const Locale("uz"),
              child: Builder(builder: (context) {
                return CalendarDatePicker(
                    initialDate: (DateTime.now()),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2200),
                    onDateChanged: (value) {});
              }),
            )
          ],
        ),
      ),
    );
  }
}
       // FlutterLogo(
            //   size: 100,
            // ),
            // Gap(30),
            // Text("Welcome to Uzabekistan!",style: TextStyle(),)