import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/myCurrentLocation.dart';
import 'package:flutter_food_delivery/components/myDescriptionBox.dart';
import 'package:flutter_food_delivery/components/myDrawer.dart';
import 'package:flutter_food_delivery/components/mySliverAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppBar(
                  title: Text("title"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      // my current location
                      const MyCurrentLocation(),

                      // description box
                      const MyDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}
