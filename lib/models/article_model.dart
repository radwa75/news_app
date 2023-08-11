import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  final String title;
  final String author;
  final String description;
  final String urlToImage;
  final DateTime publishedAt;
  // final String content;
  final String articleUrl;

  const Album({
    required this.title,
    required this.articleUrl,
    required this.author,
    // required this.content,
    required this.description,
    required this.publishedAt,
    required this.urlToImage,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
      articleUrl: json['url'],
      author: json['author'],
      // content: json['content'],
      description: json['description'],
      publishedAt: DateTime.parse(json['publishedAt']),
      urlToImage: json['urlToImage'],
    );
  }

  static Future<List<Album>> fetchBreakingNews() async {
  
    final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=3dab9fd5aad741c191f2bf23f56a104d'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> jsonList = jsonData['articles'];
      return jsonList.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch breaking news');
    }
  }

  static Future<List<Album>> fetchRecentNews() async {
  
    final response = await http.get(Uri.parse('https://newsapi.org/v2/everything?q=recent&apiKey=3dab9fd5aad741c191f2bf23f56a104d'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> jsonList = jsonData['articles'];
      return jsonList.map((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch recent news');
    }
  }
}
void main() async {
  try {
    final breakingNewsList = await Album.fetchBreakingNews();
    final recentNewsList = await Album.fetchRecentNews();

    print('Breaking News APIs:');
    for (final album in breakingNewsList) {
      print(album.articleUrl);
    }

    print('\nRecent News APIs:');
    for (final album in recentNewsList) {
      print(album.articleUrl);
    }
  } catch (e) {
    print('Error: $e');
  }
}