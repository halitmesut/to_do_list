import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "what Todo eyy",
              style: TextStyle(fontSize: 20, color: Colors.orange),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.orange,
                            Colors.orange,
                            Colors.orange,
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text('Add'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
