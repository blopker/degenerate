// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsLocationRequestDisplayNameKanaVariant2 {const PostTerminalLocationsLocationRequestDisplayNameKanaVariant2._(this.value);

factory PostTerminalLocationsLocationRequestDisplayNameKanaVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestDisplayNameKanaVariant2._(json),
};}

static const PostTerminalLocationsLocationRequestDisplayNameKanaVariant2 $empty = PostTerminalLocationsLocationRequestDisplayNameKanaVariant2._('');

static const List<PostTerminalLocationsLocationRequestDisplayNameKanaVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestDisplayNameKanaVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTerminalLocationsLocationRequestDisplayNameKanaVariant2($value)';}
}
/// The Kana variation of the name for the location (Japan only).
@immutable
final class PostTerminalLocationsLocationRequestDisplayNameKana {
  const PostTerminalLocationsLocationRequestDisplayNameKana({this.string = const Omittable.absent(),
this.postTerminalLocationsLocationRequestDisplayNameKanaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalLocationsLocationRequestDisplayNameKana._({required this.rawValue, required this.string,
required this.postTerminalLocationsLocationRequestDisplayNameKanaVariant2,});
  factory PostTerminalLocationsLocationRequestDisplayNameKana.fromJson(Object? json) => PostTerminalLocationsLocationRequestDisplayNameKana._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalLocationsLocationRequestDisplayNameKanaVariant2: parseAnyOfVariant<PostTerminalLocationsLocationRequestDisplayNameKanaVariant2>(json, (value) => PostTerminalLocationsLocationRequestDisplayNameKanaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalLocationsLocationRequestDisplayNameKanaVariant2> postTerminalLocationsLocationRequestDisplayNameKanaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalLocationsLocationRequestDisplayNameKanaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalLocationsLocationRequestDisplayNameKanaVariant2.isPresent) postTerminalLocationsLocationRequestDisplayNameKanaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalLocationsLocationRequestDisplayNameKana && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalLocationsLocationRequestDisplayNameKana(${toJson()})';
}
