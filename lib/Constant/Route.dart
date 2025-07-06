import 'package:flutter/cupertino.dart';
import 'package:motivee/Dashboard.dart';
import 'package:motivee/Home/ZonaKeseimbaganHidup/Spiritual.dart';

toSpiritual(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Spiritual");
          }
      )
  );
}
toFinansial(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Finansial");
          }
      )
  );
}
toKesehatan(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Kesehatan");
          }
      )
  );
}
toSosial(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Sosial");
          }
      )
  );
}
toPengembanganDiri(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Pengembangan");
          }
      )
  );
}
toPekerjaan(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Pekerjaan");
          }
      )
  );
}
toHunian(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Hunian");
          }
      )
  );
}
toRekreasi(
    BuildContext context,
    bool instant,
    ){
  Navigator.push(
      context,
      PageRouteBuilder(
          transitionDuration: Duration(seconds: instant ? 0 : 1),
          transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation,
                curve: Curves.elasticInOut
            );
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation
              )
          {
            return Dashboard(page: "Rekreasi");
          }
      )
  );
}