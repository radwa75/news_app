// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';

// import '../components/news_list_tile.dart';

// import '../service/newsapi.dart';

// class filterscreen extends StatefulWidget {
//   const filterscreen({super.key});

//   @override
//   State<filterscreen> createState() => _filterscreenState();
// }

// class _filterscreenState extends State<filterscreen> {

//   int _selectedindex = 0;
//   @override
//     late Future<Album> futureAlbum;

//   List<Album> breakingNewsList =Album.breakingNewsData;
//   List<Album> recentNewsList = Album.recentNewsData;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }

//   Widget build(BuildContext context) {

//   return Scaffold(
//   body: SingleChildScrollView(
//     child: Padding(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 40),
//           Row(
//             children: [
//               Expanded(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.all(10),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                       borderSide: BorderSide(
//                         width: 2,
//                         color: Color(0xffff3a44),
//                       ),
//                     ),
//                     hintText: 'Search for latest news',
//                     suffixIcon: IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.search,
//                         size: 30.0,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//             ],
//           ),
//           Container(
//             padding: EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 SizedBox(height: 20),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       for (var index = 0; index < mylist.length; index++)
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _selectedindex = index;
//                             });
//                           },
//                           child: Container(
//                             height: 40,
//                             width: 100,
//                             margin: EdgeInsets.all(5),
//                             padding: EdgeInsets.all(10),
//                             decoration: BoxDecoration(
//                               color: _selectedindex == index
//                                   ? Color(0xffff3a44)
//                                   : Color.fromARGB(255, 220, 215, 215),
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Center(
//                               child: Text(mylist[index]['title']),
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 // Now let's create the cards for the recent news
//                 Column(
//                   children: Album.recentNewsData
//                       .map((e) => NewsListTile(e))
//                       .toList(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// );
//   }
// }
// List mylist = [
//   {
//     'title': 'Healthy',
//   },
//   {
//     'title': 'Technology',
//   },
//   {
//     'title': 'Fiance',
//   },
//   {
//     'title': 'Arts',
//   },
//   {
//     'title': 'Sports',
//   },
//   {
//     'title': 'Social',
//   },
// ];
