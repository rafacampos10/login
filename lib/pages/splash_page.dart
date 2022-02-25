import 'package:flutter/material.dart';
import 'package:login/services/prefs_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    
    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(Duration(seconds: 3)),
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed("/home")
        : Navigator.of(context).pushReplacementNamed("/login"));
    
    /*Future.delayed(Duration(seconds: 5)).then(
            (_) => Navigator.of(context).pushReplacementNamed("/login")
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
