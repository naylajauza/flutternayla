import "package:flutter/material.dart";

class BelajarContainer extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(200, 44, 123, 187),
          image: DecorationImage(
             image: NetworkImage('https://i.pinimg.com/736x/ba/1c/01/ba1c0162077f108a91766523c4ecea01.jpg'),
             fit: BoxFit.cover),
        ),
        color: Color.fromARGB(255, 191, 151, 243),
        child: Center(
          child: Text("Belajar Flutter",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24
          ),
          ),
        ),
      );
    }
  }