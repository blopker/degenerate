// GENERATED CODE - DO NOT MODIFY BY HAND

final class Input {
  const Input({this.limit = 100, this.offset = 0});

  factory Input.fromJson(Map<String, dynamic> json) {
    return Input(
      limit: json.containsKey('limit') ? (json['limit'] as num).toInt() : 100,
      offset: json.containsKey('offset') ? (json['offset'] as num).toInt() : 0,
    );
  }

  final int limit;

  final int offset;

  Map<String, dynamic> toJson() {
    return {'limit': limit, 'offset': offset};
  }

  static bool canParse(Map<String, dynamic> json) {
    return true;
  }

  Input copyWith({int Function()? limit, int Function()? offset}) {
    return Input(
      limit: limit != null ? limit() : this.limit,
      offset: offset != null ? offset() : this.offset,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Input && limit == other.limit && offset == other.offset;
  }

  @override
  int get hashCode {
    return Object.hash(limit, offset);
  }

  @override
  String toString() {
    return 'Input(limit: $limit, offset: $offset)';
  }
}
