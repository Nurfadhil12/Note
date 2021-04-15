import 'package:flutter/material.dart';
import 'package:note_flutter/models/Notes.dart';
import 'package:note_flutter/models/NotesOperation.dart';
import 'package:note_flutter/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) =>NotesOperation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}
// Color firstColor = Color(0xff0000ff );
// Color secondColor = Color(0xff0000ff );
//
// ThemeData appTheme =
// ThemeData(primaryColor: Color(0xff0000ff ), fontFamily: 'Oxygen');
//
// List<String> locations = ['Boston (BOS)', 'New York City (JFK)'];
//
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
//
// const TextStyle dropDownLabelStyle =
// TextStyle(color: Colors.white, fontSize: 16.0);
//
// const TextStyle dropDownMenuItemsStyle =
// TextStyle(color: Colors.black, fontSize: 16.0);
//
// class HomeScreenTopPart extends StatefulWidget {
//   @override
//   _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
// }
//
// class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
//   var selectedLocationIndex = 0;
//   var isFlightSelected = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         ClipPath(
//           clipper: CustomShapeClipper(),
//           child: Container(
//             height: 300.0,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [firstColor, secondColor])),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 50.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         "Hello!",
//                         style: TextStyle(fontSize: 28.0, color: Colors.white),
//                         textAlign: TextAlign.center,
//                       ),
//                       Spacer(),
//                       Icon(
//                         Icons.search,
//                         color: Colors.white,
//                         size: 28,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       Text(
//                         "Let's take a note!",
//                         style: TextStyle(fontSize: 15.0, color: Colors.white),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class CustomShapeClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, 0);
//     path.lineTo(0, size.height - 40);
//     path.quadraticBezierTo(
//         size.width / 4, size.height, size.width / 2, size.height);
//     path.quadraticBezierTo(
//         size.width - size.width / 4, size.height, size.width, size.height - 40);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

