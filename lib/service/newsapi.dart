import 'dart:convert';
import 'package:http/http.dart';

import '../models/newss.dart';
import 'package:http/http.dart' as http;

class News {
  Future<List<ArticleModel>> getNews() async {
    var response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=eg&apiKey=3dab9fd5aad741c191f2bf23f56a104d'));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      List<ArticleModel> newsList = [];
      for (var element in jsonData['articles']) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            urlToImage: element['urlToImage'],
            description: element['description'],
            url: element['url'],
          );
          newsList.add(articleModel);
        }
      }
      return newsList;
    } else {
      throw Exception('Failed to fetch news');
    }
  }
}

// fetching news by  category
class CategoryNews {

  List<ArticleModel> datatobesavedin = [];


  Future<void> getNews(String category) async {

    var response = await  get(Uri.parse('http://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=52489cf346804f2eb180b8e34528aa26'));
    var jsonData = jsonDecode(response.body);


    if (jsonData['status'] == 'ok') {

      jsonData['articles'].forEach((element) {


        if (element['urlToImage']!=null && element['description']!=null) {

          // initliaze our model class

          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            urlToImage: element['urlToImage'],
            description: element['description'],
            url: element['url'],
          );


          datatobesavedin.add(articleModel);


        }


      });

    }




  }

}












