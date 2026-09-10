// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DuplicateCheckImageVariant2 {const DuplicateCheckImageVariant2._(this.value);

factory DuplicateCheckImageVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => DuplicateCheckImageVariant2._(json),
};}

static const DuplicateCheckImageVariant2 $empty = DuplicateCheckImageVariant2._('');

static const List<DuplicateCheckImageVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DuplicateCheckImageVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'DuplicateCheckImageVariant2($value)';}
}

@immutable
final class DuplicateCheckImage {
  const DuplicateCheckImage({this.string = const Omittable.absent(),
this.duplicateCheckImageVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DuplicateCheckImage._({required this.rawValue, required this.string,
required this.duplicateCheckImageVariant2,});
  factory DuplicateCheckImage.fromJson(Object? json) => DuplicateCheckImage._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicateCheckImageVariant2: parseAnyOfVariant<DuplicateCheckImageVariant2>(json, (value) => DuplicateCheckImageVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<DuplicateCheckImageVariant2> duplicateCheckImageVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicateCheckImageVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicateCheckImageVariant2.isPresent) duplicateCheckImageVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DuplicateCheckImage && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DuplicateCheckImage(${toJson()})';
}
