import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderSectionWidget extends StatelessWidget {
  GenderSectionWidget({
    super.key,
    required this.gender,
    required this.imagePath,
    required this.isMale,
    this.onTap,
  });
  String imagePath;
  String gender;
  void Function()? onTap;
  bool isMale;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 17, left: 30, right: 30),
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isMale ? Color(0xff24263B) : Color(0xff333244),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(imagePath),
              Text(
                gender,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8B8C9E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
