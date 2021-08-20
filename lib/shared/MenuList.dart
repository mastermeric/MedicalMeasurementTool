import 'package:best_medical_calculator/screens/MainPages/BirthDateCalculator.dart';
import 'package:best_medical_calculator/screens/MainPages/BodyFatPercentagePage.dart';
import 'package:best_medical_calculator/screens/MainPages/BodyMassIndexPage.dart';
import 'package:best_medical_calculator/screens/MainPages/LifeExpectancyPage.dart';
import 'package:best_medical_calculator/screens/MainPages/PregnancyCalculator.dart';
import 'package:best_medical_calculator/screens/MainPages/availablesoon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:best_medical_calculator/models/MenuItem.dart';

import 'MyGlobals.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List<Widget> _tripTiles = [];
  final GlobalKey _listKey =
      GlobalKey(); // STATE I TAKIP ETMEK ICIN GLOBAL KEY LAZIM

  @override
  void initState() {
    super.initState();
    _addTrips();
  }

  void _addTrips() {
    // get data from db
    List<MenuItem> _trips = [
      MenuItem(
          pageName: "LifeExpectancyPage",
          title: MyGlobals.lifeExpectancyTitleDesc,
          price: '350',
          symbolicName: MyGlobals.lifeExpectancyTitle,
          img: 'heart_icon.png',
          detailText:
              "Life Expectancy test is designed with statistical databases. And intentted to give an approximate idea with related criterias.",
          icon: Icon(Icons.check_box_rounded,color:Colors.green,semanticLabel: MyGlobals.lifeExpectancyTitle)),
      MenuItem(
          pageName: "BodyMassIndexPage",
          title: MyGlobals.bodyMassIndexTitleDesc,
          price: '400',
          symbolicName: MyGlobals.bodyMassIndexTitle,
          img: 'bmi_icon.png',
          detailText:
              "BMI calculation is designed with well known calculation formulas. And intentted to give an idea with body properties.",
          icon: Icon(Icons.check_box_rounded,color:Colors.green,semanticLabel: MyGlobals.bodyMassIndexTitle)),
      MenuItem(
          pageName: "BodyFatPercentagePage",
          title: MyGlobals.bodyFatRatioTitleDesc,
          price: '750',
          symbolicName: MyGlobals.bodyFatRatioTitle,
          img: 'body-fat-ration-icon.jpg',
          detailText:
              "Body-Fat Percentage calculation is designed with well known calculation formulas. And intentted to give an idea with body properties.",
          icon: Icon(Icons.check_box_rounded,color:Colors.green,semanticLabel: MyGlobals.bodyFatRatioTitle,)),
      MenuItem(
          pageName: "PregnancyCalculator",
          title: MyGlobals.pregnancyCalculationDesc,
          price: '600',
          symbolicName: MyGlobals.pregnancyCalculation,
          img: "pregnancy_icon.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.green,semanticLabel: MyGlobals.pregnancyCalculation)),
      MenuItem(
          pageName: "BirthDateCalculator",
          title: MyGlobals.birthDateCalculationDesc,
          price: '600',
          symbolicName: MyGlobals.birthDateCalculation,
          img: "Newborn_baby.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.green,semanticLabel: MyGlobals.birthDateCalculation)),
      MenuItem(
          pageName: "AvailableSoonPage",
          title:  MyGlobals.availableSoon,
          price: '600',
          symbolicName: MyGlobals.dailyCaloriCalculation,
          img: "calorie_calc.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.grey,semanticLabel: MyGlobals.dailyCaloriCalculation)),
      MenuItem(
          pageName: "AvailableSoonPage",
          title: MyGlobals.availableSoon ,
          price: '600',
          symbolicName: MyGlobals.dailyWaterCalculation,
          img: "water_icon.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.grey,semanticLabel: MyGlobals.dailyWaterCalculation)),
      MenuItem(
          pageName: "AvailableSoonPage",
          title:  MyGlobals.availableSoon,
          price: '600',
          symbolicName: MyGlobals.dailyCarboHydrateCalculation,
          img: "carbs_icon.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.grey,semanticLabel: MyGlobals.dailyCarboHydrateCalculation)),
      MenuItem(
          pageName: "AvailableSoonPage",
          title:  MyGlobals.availableSoon,
          price: '600',
          symbolicName: MyGlobals.hipWaistRatio,
          img: "hip-waist_icon.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.grey,semanticLabel: MyGlobals.hipWaistRatio)),
      MenuItem(
          pageName: "AvailableSoonPage",
          title:  MyGlobals.availableSoon,
          price: '600',
          symbolicName: MyGlobals.idealKilogramCalculation,
          img: "ideal_kilogram_icon.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.grey,semanticLabel: MyGlobals.idealKilogramCalculation)),
      MenuItem(
          pageName: "AvailableSoonPage",
          title:  MyGlobals.availableSoon,
          price: '600',
          symbolicName: MyGlobals.dailyProteinCalculation,
          img: "protein_icon.jpg",
          icon: Icon(Icons.check_box_rounded,color:Colors.grey,semanticLabel: MyGlobals.dailyProteinCalculation)),
    ];

    _trips.forEach((MenuItem trip) {
      _tripTiles.add(_buildTile(trip));
    });
  }

  Widget _buildTile(MenuItem menuItem) {
    return ListTile(
      onTap: () {
        if (menuItem.pageName == "LifeExpectancyPage")
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LifeExpectancyPage()));
        if (menuItem.pageName == "BodyMassIndexPage")
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BodyMassIndexPage()));
        if (menuItem.pageName == "BodyFatPercentagePage")
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BodyFatPercentagePage()));
        if (menuItem.pageName == "PregnancyCalculator")
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PregnancyCalculator()));
        if (menuItem.pageName == "BirthDateCalculator")
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BirthDateCalculator()));
        if (menuItem.pageName == "AvailableSoonPage")
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AvailableSoonPage()));
              

        //Navigator.push(context,MaterialPageRoute(builder: (context) => Details(menuItem: menuItem)));
      },
      contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 15),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(menuItem.symbolicName,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300])),
          Text(menuItem.title,
              style: TextStyle(fontSize: 20, color: Colors.grey[600])),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'images/' + menuItem.img,
          height: 50,
        ),
      ),
      trailing: Tooltip(message: MyGlobals.availableSoonDesc,
      child: menuItem.icon), //Text('\$${trip.price}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _tripTiles.length,
        itemBuilder: (context, index) {
          return _tripTiles[index];
        });
  }
}
