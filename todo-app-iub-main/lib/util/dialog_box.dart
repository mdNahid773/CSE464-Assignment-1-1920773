import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {


  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:Colors.white,
      alignment: Alignment(0, 1),
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(20),
          topRight: Radius.circular(20))
      ),
      
      content: Container(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Add a new task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20
                  ),
            ),
            //get user input
            TextField(
              //controller: controller,
              decoration:
                InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  ),
                  hintText: 'Add a new task...',
                
              ),
            ),
      
            SizedBox(height: 5,),
      
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                // padding: EdgeInsets.only(top: 10),
                width: 500,
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}