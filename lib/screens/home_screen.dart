import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_flutter/models/Notes.dart';
import 'package:note_flutter/models/NotesOperation.dart';
import 'package:note_flutter/models/palette.dart';
import 'package:note_flutter/screens/add_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           HomeScreenTopPart(),
//         ],
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    var _icon = Icons.wb_sunny;
    Color firstColor = Color(0xff0000ff);
    // TODO: implement build
    return Scaffold(

      backgroundColor: Colors.white70,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddScreen()));
        },
        child: Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlue,
      ),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: Container(
          height: 300.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.lightBlue, Colors.blueAccent]),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
          ),

          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Hello!",
                      style: TextStyle(fontSize: 28.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Let's take a note!",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      body: Consumer<NotesOperation>(
        builder: (context, NotesOperation data, child) {
          return ListView.builder(
            itemCount: data.getnotes.length,
            itemBuilder: (context, index) {
              return NotesCard(data.getnotes[index]);
            },
          );
        },
        // child: Column(
        //   children: <Widget>[
        //     HomeScreenTopPart(),
        //   ],
        // ),

      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  final Note note;

  NotesCard(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: 100,
      width: 75,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(note.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text(note.desc, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

Color firstColor = Color(0xff0000ff);
Color secondColor = Color(0xff0000ff);

ThemeData appTheme =
    ThemeData(primaryColor: Color(0xff0000ff), fontFamily: 'Oxygen');

List<String> locations = ['Boston (BOS)', 'New York City (JFK)'];

const TextStyle dropDownLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16.0);

const TextStyle dropDownMenuItemsStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedLocationIndex = 0;
  var isFlightSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 300.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Hello!",
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Let's take a note!",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width - size.width / 4, size.height, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
