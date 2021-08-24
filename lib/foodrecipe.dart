import 'dart:ui';

import 'package:flutter/material.dart';

class Foodrecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(0.0),
          child: ListView(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250.0,
                    decoration: BoxDecoration(color: Colors.pink.shade200),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 340.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              color: Colors.grey.shade200),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon:
                                      Icon(Icons.search, color: Colors.black),
                                  hintText: "Search your favourite recipe",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              width: 7.0,
                              height: 100.0,
                              color: Colors.amber,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              "POPULAR RECIPIES\nTHIS WEAK",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 130.0,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildItems(
                                "assets/food.jpg",
                                "Grilled Chicken\nWith Food Salad",
                                "assets/chris.jpg",
                                "James Oliven"),
                            buildItems(
                                "assets/food.jpg",
                                "Grilled Chicken\nWith Food Salad",
                                "assets/chris.jpg",
                                "James Oliven"),
                            buildItems(
                                "assets/food.jpg",
                                "Grilled Chicken\nWith Food Salad",
                                "assets/chris.jpg",
                                "James Oliven"),
                            buildItems(
                                "assets/food.jpg",
                                "Grilled Chicken\nWith Food Salad",
                                "assets/chris.jpg",
                                "James Oliven"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "September 7",
                      style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "TODAY",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height - 490,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.amber.shade100,
                              image: DecorationImage(
                                  image: AssetImage("assets/breakfast.jpg"),
                                  fit: BoxFit.cover)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 80.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "BEST OF\nTHE DAY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  buildItems(String dishpic, String dishname, String chefpic, String chefname) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
            height: 135.0,
            width: 260.0,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(dishpic), fit: BoxFit.cover))),
                ),
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      dishname,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      width: 100.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.all(Radius.circular(22.0))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(chefpic),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(chefname)
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
