// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class Phase {
  const Phase._(this.value);

  factory Phase.fromJson(String json) {
    return switch (json) {
      'new' => $new,
      'full' => full,
      '🌑' => $empty,
      '🌕' => $empty2,
      'yes' => yes,
      'no' => no,
      'on' => $on,
      'off' => off,
      'true' => $true,
      'false' => $false,
      '~' => $empty3,
      '.inf' => inf,
      '-.inf' => inf2,
      '.nan' => nan,
      'null' => $null,
      _ => Phase._(json),
    };
  }

  static const Phase $new = Phase._('new');

  static const Phase full = Phase._('full');

  static const Phase $empty = Phase._('🌑');

  static const Phase $empty2 = Phase._('🌕');

  static const Phase yes = Phase._('yes');

  static const Phase no = Phase._('no');

  static const Phase $on = Phase._('on');

  static const Phase off = Phase._('off');

  static const Phase $true = Phase._('true');

  static const Phase $false = Phase._('false');

  static const Phase $empty3 = Phase._('~');

  static const Phase inf = Phase._('.inf');

  static const Phase inf2 = Phase._('-.inf');

  static const Phase nan = Phase._('.nan');

  static const Phase $null = Phase._('null');

  static const List<Phase> values = [
    $new,
    full,
    $empty,
    $empty2,
    yes,
    no,
    $on,
    off,
    $true,
    $false,
    $empty3,
    inf,
    inf2,
    nan,
    $null,
  ];

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
    return identical(this, other) || other is Phase && other.value == value;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  @override
  String toString() {
    return 'Phase($value)';
  }
}
