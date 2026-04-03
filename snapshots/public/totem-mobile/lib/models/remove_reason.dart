// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class RemoveReason {
  const RemoveReason._(this.value);

  factory RemoveReason.fromJson(String json) {
    return switch (json) {
      'remove' => remove,
      'ban' => ban,
      _ => RemoveReason._(json),
    };
  }

  static const RemoveReason remove = RemoveReason._('remove');

  static const RemoveReason ban = RemoveReason._('ban');

  static const List<RemoveReason> values = [remove, ban];

  final String value;

  String toJson() {
    return value;
  }

  /// Whether this value is unknown (not defined in the OpenAPI spec).
  bool get isUnknown {
    return !values.contains(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is RemoveReason && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'RemoveReason($value)';
  }
}
