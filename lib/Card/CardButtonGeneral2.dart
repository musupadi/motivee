import 'package:flutter/cupertino.dart';

class CardbuttonGeneral2 extends StatelessWidget {
  final Color ColorsData;
  final String TextString;
  final String imagePath;
  final bool Left;
  CardbuttonGeneral2({
    required this.ColorsData,
    required this.TextString,
    required this.Left,
    required this.imagePath,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: Left ? 12 : 10,right: Left ? 10 : 12),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: ColorsData,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: Padding(
              padding: EdgeInsets.only(left: Left ? 30 : 5,right: Left ? 5 : 30,top: 5,bottom: 5 ),
              child: Text(TextString,style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Roboto",fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            )),
          ),
        ),
        Container(
          height: 60,
          child: Align(
            alignment: Left ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
