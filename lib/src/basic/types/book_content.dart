import 'dart:convert';

import 'package:gson/gson.dart';
import 'package:objd/src/basic/widgets.dart';

class WrittenBookContent {
  final List<BookPage> pages;
  final String title;
  final String author;
  final BookStatus? generation;
  final bool? resolved;

  const WrittenBookContent({required this.pages, required this.title, required this.author, this.generation, this.resolved});

  Map<String, dynamic> getMap() {
    Map<String, dynamic> map = {
      'pages':pages.map((p) => p.getJson()).toList(),
      'title':title,
      'author':author,
    };
    if(generation != null){
      map['generation'] = generation!.index;
    }
    if(resolved != null){
      map['resolved'] = resolved;
    }

    return map;
  }

  String getNbt() {
    return gson.encode(getMap());
  }
}

class WritableBookContent {
  final List<String> pages;

  const WritableBookContent({required this.pages});
}

class BookPage {
  final List<TextComponent> raw;

  const BookPage(this.raw);

  String getJson() {
    return json.encode(raw.map((t) => t.toMap()).toList());
  }
}

enum BookStatus {
  original,
  copy_of_original,
  copy_of_copy,
  tattered
}