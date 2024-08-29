class Pokemon {
  final String name;
  final String url;

  Pokemon({
    required this.name,
    required this.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final url = json['url'];

    return Pokemon(
      name: name,
      url: url,
    );
  }
}
