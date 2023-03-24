import 'package:flutter/material.dart';
import 'package:yaumigsp/pages/absen_page/absen_form.dart';
import 'package:yaumigsp/pages/absen_page/absen_page.dart';
import 'package:yaumigsp/pages/home/homepage.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:yaumigsp/pages/yaumi_form/yaumi_form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID', null)
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yaumi GSP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Homepage(),
          '/yaumiForm': (context) => const YaumiForm(),
          '/absenPage': (context) => const AbsenPage(),
          '/absenForm': (context) => const AbsenForm(),
        });
  }
}
