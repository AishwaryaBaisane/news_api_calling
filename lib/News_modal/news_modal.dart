class NewsModal {
  final List<Articles> articles;

  NewsModal({required this.articles});

  factory NewsModal.fromApi(Map<dynamic, dynamic> json) {
    return NewsModal(
      articles: (json['articles'] as List<dynamic>?)
          !.map((e) => Articles.fromApi(e as Map<dynamic, dynamic>))
          .toList(),
    );
  }
}

class Articles {
  final Source source;
  final String author;
  final String title;
  final String description;
  final String publishedAt;
  final String content;
  final String url;
  final String urlToImage;

  Articles({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.content,
    required this.url,
    required this.urlToImage
  });

  factory Articles.fromApi(Map json) {
    return Articles(
      source: Source.fromApi(json['source'] as Map<dynamic, dynamic>),
      author: json['author'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['urlToImage']?? '',

    );
  }
}

class Source {
  final String name;

  Source({required this.name});

  factory Source.fromApi(Map json) {
    return Source(name: json['name'] ?? '');
  }
}

