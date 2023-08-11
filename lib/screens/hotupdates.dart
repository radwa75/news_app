// import 'package:flutter/material.dart';

// import '../components/news_list_tile.dart';
// import 'main_screen.dart';
// import 'package:flutter/material.dart';

// class hotupdates extends StatefulWidget {
//   const hotupdates({Key? key}) : super(key: key);

//   @override
//   State<hotupdates> createState() => _hotupdatesState();
// }

// class _hotupdatesState extends State<hotupdates> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.0,
//         iconTheme: IconThemeData(color: Color(0xffff3a44)),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => MainScreen(),
//               ),
//             );
//           },
//         ),
//         title: Center(
//           child: Text(
//             'Hot Updates',
//             style: TextStyle(
//               fontSize: 22.0,
//               fontWeight: FontWeight.bold,
//               color: Color(0xffff3a44),
//             ),
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 16),
//               // Now let's create the cards for the recent news
//               Column(
//                 children: [
//                   // Replace the placeholder widget with your actual NewsListTile widget
//                   Placeholder(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }