import 'package:flutter/cupertino.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'car_vars.dart';

DaCars daCars = DaCars();

class Cars extends StatefulWidget {
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  int addOne() {
    setState(() {
      if (daCars.carNumber < 8) {
        daCars.carNumber++;
        return daCars.carNumber;
      } else {
        daCars.carNumber = 0;
        return daCars.carNumber;
      }
    });
  }

  int subtractOne() {
    setState(() {
      if (daCars.carNumber > 0) {
        daCars.carNumber--;
        return daCars.carNumber;
      } else {
        daCars.carNumber = 8;
        return daCars.carNumber;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              daCars.getCarName(),
              style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            Image(
              image: NetworkImage(
                daCars.getCarImage(),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(12, 0.0, 12, 0.0),
                    child: ElevatedButton(
                      onPressed: subtractOne,
                      child: Icon(
                        Icons.arrow_left,
                        size: 150,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(12, 0.0, 12, 0.0),
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: addOne,
                      child: Icon(
                        Icons.arrow_right,
                        size: 150,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
