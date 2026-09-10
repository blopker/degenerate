// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CanceledExplanationVariant2 {const CanceledExplanationVariant2._(this.value);

factory CanceledExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => CanceledExplanationVariant2._(json),
};}

static const CanceledExplanationVariant2 $empty = CanceledExplanationVariant2._('');

static const List<CanceledExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is CanceledExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'CanceledExplanationVariant2($value)';}
}

@immutable
final class CanceledExplanation {
  const CanceledExplanation({this.string = const Omittable.absent(),
this.canceledExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CanceledExplanation._({required this.rawValue, required this.string,
required this.canceledExplanationVariant2,});
  factory CanceledExplanation.fromJson(Object? json) => CanceledExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
canceledExplanationVariant2: parseAnyOfVariant<CanceledExplanationVariant2>(json, (value) => CanceledExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CanceledExplanationVariant2> canceledExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || canceledExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (canceledExplanationVariant2.isPresent) canceledExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CanceledExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CanceledExplanation(${toJson()})';
}
