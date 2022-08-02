import 'package:flutter/material.dart';

Widget SingleTab(bool pressed, String catagory) {
  return AspectRatio(
    aspectRatio: 2.2 / 1,
    child: GestureDetector(
      onTap: () {
        pressed = true;
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          color: pressed ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            catagory,
            style: TextStyle(
              fontSize: pressed ? 20 : 17,
              color: pressed ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget InformativeBox({required String model, required String img, required String price, required String type,}) {
  return Container(
    height: 250.0,
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 20.0),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey[400]!,
          blurRadius: 10,
          offset: const Offset(0, 10),
        )
      ],
      borderRadius: BorderRadius.circular(20.0),
      image: DecorationImage(
        image: NetworkImage(img),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column
                (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(model, style: TextStyle(color: Colors.white, fontSize: 25,),),
                  SizedBox(height: 10,),
                  Text(price, style: TextStyle(color: Colors.white, fontSize: 25,),),

              ],),
              SizedBox(width: 5,),
              Text(type, style: TextStyle(color: Colors.red, fontSize: 20,),),
              //price

            ],
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Center(
              child: Icon(Icons.favorite_border, size: 20, color: Colors.white,),
            ),
          ),
        ],
      ),
    ),
  );
}
