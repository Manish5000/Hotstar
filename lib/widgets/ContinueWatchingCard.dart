import 'package:flutter/material.dart';

class ContinueWatchingCard extends StatefulWidget {
  final AssetImage? backgroundColor;
  final String? text;
  final VoidCallback? ontap;
   ContinueWatchingCard({this.backgroundColor, this.text, this.ontap});

  @override
  State<ContinueWatchingCard> createState() => _ContinueWatchingCardState();
}

class _ContinueWatchingCardState extends State<ContinueWatchingCard> {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.55,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(image: widget.backgroundColor!, fit: BoxFit.fill),
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
