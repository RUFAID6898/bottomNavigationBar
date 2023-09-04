import 'package:flutter/material.dart';
import 'package:flutter_application_trail/Fourthpage.dart';
import 'package:flutter_application_trail/fifthpage.dart';
import 'package:flutter_application_trail/thirdpage.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  List screen = [ThirdPage(), FourthPage(), FifthPage()];
  ValueNotifier notifar = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: notifar,
        builder: (context, value, _) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black54,
              title: Text('MyApp', style: TextStyle(color: Colors.black)),
            ),
            body: screen[value],
            bottomNavigationBar: BottomNavigationBar(
              // showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: Color.fromARGB(255, 226, 9, 9),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'HOME',
                    backgroundColor: Color.fromARGB(221, 22, 212, 79)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'PROFIL',
                    backgroundColor: Colors.black87),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'SETTINGS   ',
                  backgroundColor: Colors.black87,
                )
              ],
              currentIndex: notifar.value,
              onTap: (value) {
                notifar.value = value;
              },
            ),
          );
        });
  }
}
