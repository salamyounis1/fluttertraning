import 'package:futter2/source.dart';

class news {
  source? s1;
  String? author;
  String? title;
  String? discri;
  String? url;
  String? urltoimage;
  String? pupat;
  String? content;
  news.frommap(Map<String, dynamic> map) {
    s1 = source.frommap(map['source']);
    author = map['author'];
    title = map['title'];
    discri = map['description'];
    url = map['url'];
    urltoimage = map['urlToImage'];
    pupat = map['publishedAt'];
    content = map['content'];
  }
}
