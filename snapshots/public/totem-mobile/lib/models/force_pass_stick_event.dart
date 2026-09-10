// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

/// Keeper forces the current speaker to pass the stick.
/// The next speaker won't have a chance to accept — the stick will be passed immediately.
@immutable
final class ForcePassStickEvent {
  const ForcePassStickEvent({this.type});

  factory ForcePassStickEvent.fromJson(Map<String, dynamic> json) {
    return ForcePassStickEvent(type: json['type'] as String?);
  }

  final String? type;

  /// The value with the schema default applied when absent.
  String get typeOrDefault {
    return type ?? 'force_pass_stick';
  }

  Map<String, dynamic> toJson() {
    return {'type': ?type};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.keys.any((key) => const {'type'}.contains(key));
  }

  ForcePassStickEvent copyWith({String? Function()? type}) {
    return ForcePassStickEvent(type: type != null ? type() : this.type);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ForcePassStickEvent && type == other.type;
  }

  @override
  int get hashCode {
    return type.hashCode;
  }

  @override
  String toString() {
    return 'ForcePassStickEvent(type: $type)';
  }
}
