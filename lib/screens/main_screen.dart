// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../components/breaking_news_card.dart';
import '../components/news_list_tile.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../models/article_model.dart';
import '../models/category.dart';
import '../models/newss.dart';
import '../service/categoryapi.dart';
import '../service/newsapi.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    List<ArticleModel> articles = [];
    List<CategoryModel> categories =[];
  int _currentIndex = 0;
  int _selectedindex = 0;


  bool _loading = true;

  getNews() async {
    News newsdata = News();
    await newsdata.getNews();
    articles = newsdata. getNews as List<ArticleModel>;
    setState(() {
      _loading = false;
    });


  }


  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffff3a44)),
                        ),
                        hintText: 'Search for latest news',
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 35,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffff3a44),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Latest News',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text('See All'),
                  SizedBox(width: 15),
                  Icon(Icons.arrow_right_alt_outlined),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Breaking News",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
                CarouselSlider.builder(
                itemCount: articles.length,
                itemBuilder: (context, index, id) => BreakingNewsCard(articles[index]),
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                ),
              
                ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var index = 0; index < mylist.length; index++)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedindex = index;
                                });
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: _selectedindex == index
                                      ? Color(0xffff3a44)
                                      : Color.fromARGB(255, 220, 215, 215),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child:
                                    Center(child: Text(mylist[index]['title'])),
                              ),
                            ),
                        ],
                      ),
                    ),
               const SizedBox(height: 20),
FutureBuilder<List<ArticleModel>>(
  future: News().getNews(),
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      final recentNewsList = snapshot.data!;
      return Column(
        children: recentNewsList.map((article) => NewsListTile(article)).toList(),
      );
    } else if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const CircularProgressIndicator();
    }
  },
),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(25),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          selectedItemColor: Color(0xffff3a44),
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          // Add your bottom navigation bar items here
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

List mylist = [
  {
    'title': 'Healthy',
  },
  {
    'title': 'Technology',
  },
  {
    'title': 'Fiance',
  },
  {
    'title': 'Arts',
  },
  {
    'title': 'Sports',
  },
  {
    'title': 'Social',
  },
];
