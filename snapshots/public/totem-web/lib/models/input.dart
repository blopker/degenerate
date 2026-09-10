// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Input {const Input({this.limit, this.offset, });

factory Input.fromJson(Map<String, dynamic> json) {return Input(
  limit: json['limit'] != null ? (json['limit'] as num).toInt() : null,
  offset: json['offset'] != null ? (json['offset'] as num).toInt() : null,
);}

final int? limit;

final int? offset;

/// The value with the schema default applied when absent.
int get limitOrDefault {return limit ?? 100;}
/// The value with the schema default applied when absent.
int get offsetOrDefault {return offset ?? 0;}
Map<String, dynamic> toJson() {return {
  'limit': ?limit,
  'offset': ?offset,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'limit', 'offset'}.contains(key));}
Input copyWith({int? Function()? limit, int? Function()? offset, }) {return Input(
  limit: limit != null ? limit() : this.limit,
  offset: offset != null ? offset() : this.offset,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is Input &&
          limit == other.limit &&
          offset == other.offset;}
@override int get hashCode {return Object.hash(limit, offset);}
@override String toString() {return 'Input(limit: $limit, offset: $offset)';}
}
