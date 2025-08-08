class ResponseCacheEntity {
  final String url;
  final bool withAuth;
  final String? json;

  ResponseCacheEntity({required this.url, required this.withAuth, this.json});

  Map<String, dynamic> toMap() {
    return {'url': url, 'with_auth': withAuth ? 1 : 0, 'json': json};
  }

  factory ResponseCacheEntity.fromMap(Map<String, dynamic> map) {
    return ResponseCacheEntity(
      url: map['url'] ?? '',
      withAuth: map['with_auth'] == 1,
      json: map['json'],
    );
  }
}
