class QuoteModel {
  late String quote;
  late String author;

  QuoteModel(
      this.quote,
      this.author,
      );

  QuoteModel.fromJson(Map<dynamic, dynamic> json) {
    quote = json['q'];
    author = json['a'];
  }

  Map<dynamic, dynamic> toMap() {
    return {
      'q': quote,
      'a': author,
    };
  }
}
