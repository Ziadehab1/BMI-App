import 'dart:developer';
import 'package:bmi/widget/app_bar_widget.dart';
import 'package:bmi/widget/gender_section_widget.dart';
import 'package:bmi/widget/info_user_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double value = 150;
  bool isMale = true;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    log('reBuild UI');
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBarWidget(title: 'BMI Calculator'),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                GenderSectionWidget(
                  imagePath: 'assets/icons/male_icon.png',
                  gender: 'Male',
                  isMale: isMale,
                  onTap: () {
                    isMale = true;
                    setState(() {});
                  },
                ),
                GenderSectionWidget(
                  imagePath: 'assets/icons/female_icon.png',
                  gender: 'Female',
                  isMale: !isMale,
                  onTap: () {
                    isMale = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        value.round().toString(),
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: value,
                    min: 50,
                    max: 200,
                    activeColor: Color(0xffE83D67),
                    inactiveColor: Color(0xffFFFFFF),
                    onChanged: (value) {
                      this.value = value;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InfoUserWidget(
                  heroTag1: 'on1',
                  heroTag2: 'on2',
                  title: 'Weight',
                  value: weight,
                  onPressedAdd: () {
                    if (weight > 20 && weight <= 200) {
                      weight++;
                      setState(() {});
                    }
                  },
                  onPressedRemove: () {
                    if (weight > 20 && weight <= 200) {
                      weight--;
                      setState(() {});
                    }
                  },
                ),
                InfoUserWidget(
                  heroTag1: 'on3',
                  heroTag2: 'on4',
                  title: 'Age',
                  value: age,
                  onPressedAdd: () {
                    if (age > 0 && age <= 100) {
                      age++;
                      setState(() {});
                    }
                  },
                  onPressedRemove: () {
                    if (age > 0 && age <= 100) {
                      age--;
                      setState(() {});
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            'resultScreen',
            arguments: BMIData(
              gender: isMale,
              height: value.round().toInt(),
              weight: weight,
              age: age,
            ),
          );
        },
        color: Color(0xffE83D67),
        height: 100,
        child: Text(
          'Calculate',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}

class BMIData {
  bool gender;
  int height;
  int weight;
  int age;
  BMIData({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });
}
