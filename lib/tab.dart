import 'package:flutter/material.dart';
import './tabs/tab1.dart';
import './tabs/tab2.dart';
import './tabs/tab3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.phone_android)),
                Tab(icon: Icon(Icons.tablet_android)),
                Tab(icon: Icon(Icons.laptop_windows)),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Tab1(),
              Tab2(),
              Tab3(),
            ],
          )),
    );
  }
}
