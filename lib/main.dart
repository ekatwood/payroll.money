import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';
import 'package:supabase/supabase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  final client = SupabaseClient('https://iornghtidhexrbbvoanf.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlvcm5naHRpZGhleHJiYnZvYW5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTE2MjIzNzAsImV4cCI6MTk2NzE5ODM3MH0.a2Gyhz4KqHy8jXK3MDmgs7dP0ubkh7LBfn4oqKA2CkM');
  
  // Select from table `countries` ordering by `name`
  final response = await client
      .from('employer')
      .select()
      .execute();

  var walletAddress = 'terra123456789';
  var payPeriodStart = new DateTime(2022,5,19,0,0,0);
  
  var payPeriodLength = 14;

  final res = await client
  .rpc('instantiate_business', params: { 'walletaddress': walletAddress, 'businessname': 'asdf','businessemail':'sadf','payperiodstart':payPeriodStart.toString(),
    'payperiodlength': payPeriodLength })
  .execute();
  
  print('hello world');
  print(res.toJson());
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'payroll',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: HomePageWidget(),
    );
  }
}
