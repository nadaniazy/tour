import 'package:flutter/material.dart';
class des extends StatefulWidget {
  const des({Key? key}) : super(key: key);

  @override
  State<des> createState() => _desState();
}

class _desState extends State<des> {
    Color color=Colors.white ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(Icons.share),
              SizedBox(width: 15,),
              IconButton(onPressed: (){
              setState(() {
                color=Colors.redAccent;
              });
              }, icon: Icon(Icons.favorite),color: color,)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage("images/u.jpg")),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("the pyramid",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("iformation about pyramid",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("The Giza Pyramids, built to endure an eternity, have done just that. The monumental tombs are relics of Egypt's Old Kingdom era and were constructed some 4,500 years ago.",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Egypt's pharaohs expected to become gods in the afterlife. To prepare for the next world they erected temples to the gods and massive pyramid tombs for themselves—filled with all the things each ruler would need to guide and sustain himself in the next world.",style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
