import 'package:flutter/material.dart';

class Top10Card extends StatefulWidget {
   final AssetImage? backgroundimage;
   final VoidCallback? ontap;
 
   Top10Card({ this.backgroundimage, this.ontap});

  @override
  State<Top10Card> createState() => _Top10CardState();
}

class _Top10CardState extends State<Top10Card> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width*0.38,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          image:
              DecorationImage(image: widget.backgroundimage!, fit: BoxFit.fill),
        ),
        
      ),
    );
  }
}