// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Duplicate2CardStatementVariant2 {const Duplicate2CardStatementVariant2._(this.value);

factory Duplicate2CardStatementVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => Duplicate2CardStatementVariant2._(json),
}; }

static const Duplicate2CardStatementVariant2 $empty = Duplicate2CardStatementVariant2._('');

static const List<Duplicate2CardStatementVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Duplicate2CardStatementVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Duplicate2CardStatementVariant2($value)'; } 
 }

@immutable
final class Duplicate2CardStatement {
  const Duplicate2CardStatement({this.string = const Omittable.absent(),
this.duplicate2CardStatementVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Duplicate2CardStatement._({required this.rawValue, required this.string,
required this.duplicate2CardStatementVariant2,});
  factory Duplicate2CardStatement.fromJson(Object? json) => Duplicate2CardStatement._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicate2CardStatementVariant2: parseAnyOfVariant<Duplicate2CardStatementVariant2>(json, (value) => Duplicate2CardStatementVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Duplicate2CardStatementVariant2> duplicate2CardStatementVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicate2CardStatementVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicate2CardStatementVariant2.isPresent) duplicate2CardStatementVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Duplicate2CardStatement && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Duplicate2CardStatement(${toJson()})';
}
