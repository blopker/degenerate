// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class ActiveDetail {
  const ActiveDetail({this.type});

  factory ActiveDetail.fromJson(Map<String, dynamic> json) {
    return ActiveDetail(type: json['type'] as String?);
  }

  final String? type;

  /// The value with the schema default applied when absent.
  String get typeOrDefault {
    return type ?? 'active';
  }

  Map<String, dynamic> toJson() {
    return {'type': ?type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'type'}.contains(key));
  }

  ActiveDetail copyWith({String? Function()? type}) {
    return ActiveDetail(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ActiveDetail && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'ActiveDetail(type: $type)';
  }
}
