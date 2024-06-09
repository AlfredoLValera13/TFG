import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  final String apiKey = '0d7cfe6dcd944326a9420eeaadd33fff';  
  final String baseUrl = 'https://newsapi.org/v2/everything';

  Future<List<NewsArticle>> fetchNews() async {
    final response = await http.get(Uri.parse('$baseUrl?q=energy%20drink%20OR%20Monster%20OR%20Red%20Bull%20OR%20Eneryeti%20OR%20Rockstar&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      return articles.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}

class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;

  NewsArticle({required this.title, required this.description, required this.urlToImage});

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'] ?? 'https://via.placeholder.com/150', 
    );
  }
}
