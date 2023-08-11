import 'dart:convert';

import 'package:http/http.dart' as http;

class Album {


 final String title;
 final String author;
  final String description;
 final String urlToImage;
 final DateTime publshedAt;
 final String content;
 final String articleUrl;

  const Album({
  
    required this.title,
    required this.articleUrl,
    required this.author,
    required this.content,
    required this.description,
    required this.publshedAt,
    required this.urlToImage,

  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
    title: json['title'],
    articleUrl: json['articleUrl'],
    author: json['author'],
    content: json['content'],
    description :json['description'],
    publshedAt: json['publshedAt'],
    urlToImage: json['urlToImage'],




    );

  }


  static Future<List<Album>> fetchBreakingNews() async {
    final String apiKey = '3dab9fd5aad741c191f2bf23f56a104d';
    final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch breaking news');
    }
  }

  static Future<List<Album>> fetchRecentNews() async {
    final String apiKey = '3dab9fd5aad741c191f2bf23f56a104d';
    final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch recent news');
    }
  }

}
