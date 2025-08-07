class ServerError {
  final int? code;
  final String? message;

  ServerError({this.code, this.message});

  @override
  String toString() {
    if (code != null && message != null) {
      return '$code: $message';
    } else {
      return 'Server error';
    }
  }
}
