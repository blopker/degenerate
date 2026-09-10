// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class AcceptStickEvent {
  const AcceptStickEvent({this.type});

  factory AcceptStickEvent.fromJson(Map<String, dynamic> json) {
    return AcceptStickEvent(type: json['type'] as String?);
  }

  final String? type;

  /// The value with the schema default applied when absent.
  String get typeOrDefault {
    return type ?? 'accept_stick';
  }

  Map<String, dynamic> toJson() {
    return {'type': ?type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'type'}.contains(key));
  }

  AcceptStickEvent copyWith({String? Function()? type}) {
    return AcceptStickEvent(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AcceptStickEvent && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'AcceptStickEvent(type: $type)';
  }
}
