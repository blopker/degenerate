// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2 {const PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2._(this.value);

factory PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2._(json),
}; }

static const PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2 $empty = PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2._('');

static const List<PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2($value)'; } 
 }
/// The Kanji variation of the name for the location (Japan only).
@immutable
final class PostTerminalLocationsLocationRequestDisplayNameKanji {
  const PostTerminalLocationsLocationRequestDisplayNameKanji({this.string = const Omittable.absent(),
this.postTerminalLocationsLocationRequestDisplayNameKanjiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTerminalLocationsLocationRequestDisplayNameKanji._({required this.rawValue, required this.string,
required this.postTerminalLocationsLocationRequestDisplayNameKanjiVariant2,});
  factory PostTerminalLocationsLocationRequestDisplayNameKanji.fromJson(Object? json) => PostTerminalLocationsLocationRequestDisplayNameKanji._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTerminalLocationsLocationRequestDisplayNameKanjiVariant2: parseAnyOfVariant<PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2>(json, (value) => PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTerminalLocationsLocationRequestDisplayNameKanjiVariant2> postTerminalLocationsLocationRequestDisplayNameKanjiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTerminalLocationsLocationRequestDisplayNameKanjiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTerminalLocationsLocationRequestDisplayNameKanjiVariant2.isPresent) postTerminalLocationsLocationRequestDisplayNameKanjiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTerminalLocationsLocationRequestDisplayNameKanji && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTerminalLocationsLocationRequestDisplayNameKanji(${toJson()})';
}
