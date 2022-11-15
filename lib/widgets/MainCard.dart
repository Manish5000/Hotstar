import 'package:flutter/material.dart';

class MainCard extends StatefulWidget {
  final AssetImage? backgroundimage;
  final String? text;
  final VoidCallback? ontap;
  const MainCard({this.text, this.backgroundimage,this.ontap});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          image:
              DecorationImage(image: widget.backgroundimage!,fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.play_arrow,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text(
                    widget.text!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
