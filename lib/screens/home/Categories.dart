import 'package:flutter/material.dart';
import 'package:extended_tabs/extended_tabs.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> numbers = ["Culture","Culture","Culture","Culture"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Book'),
          centerTitle: true,
        ),
        body: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                height: MediaQuery.of(context).size.height * 0.35 - 150.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbers.length, itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.6 - 20.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Card(
                        color: Colors.blue,
                        child: Container(
                          child: Center(child: Text(numbers[index], style: TextStyle(color: Colors.white, fontSize: 20.0),)),
                        ),
                      ),
                    ),
                  );
                }),
              ),
      ),


      );
  }
}
