import 'package:flutter/material.dart';

class InfoUserWidget extends StatelessWidget {
  InfoUserWidget({
    super.key,
    required this.title,
    required this.value,
    required this.heroTag1,
    required this.heroTag2,
    this.onPressedAdd,
    this.onPressedRemove,
  });
  String title;
  int value;
  //  heroTag: "btn1",
  String heroTag1;
  String heroTag2;
  void Function()? onPressedAdd;
  void Function()? onPressedRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff8B8C9E),
              ),
            ),
            Text(
              value.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFFFFF),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  heroTag: heroTag1,
                  onPressed: onPressedRemove,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset('assets/icons/remove_icon.png'),
                ),
                FloatingActionButton(
                  heroTag: heroTag2,
                  onPressed: onPressedAdd,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset('assets/icons/add_icon.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
