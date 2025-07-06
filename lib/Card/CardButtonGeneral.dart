import 'package:flutter/cupertino.dart';

class CardbuttonGeneral extends StatelessWidget {
  final Color ColorsData;
  final String TextString;
  final bool Left;
  CardbuttonGeneral({
    required this.ColorsData,
    required this.TextString,
    required this.Left,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Left ? 0 : 10,right: Left ? 10 : 0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: ColorsData,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(TextString,style: TextStyle(fontFamily: "Roboto",fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
        )),
      ),
    );
  }
}
