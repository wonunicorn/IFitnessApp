import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {

  NextButton({@override this.onTap});
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 45,
      width: 45,
      margin: EdgeInsets.only(left: 20, right: 30, bottom: 50, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white.withOpacity(0.4),
      ),
      child: IconButton(
        icon: Icon(Icons.arrow_forward_ios_outlined),
        color: Colors.white,
        onPressed: onTap,
      ),
    );
  }
}
