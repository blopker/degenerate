// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DuplicateCardStatementVariant2 {const DuplicateCardStatementVariant2._(this.value);

factory DuplicateCardStatementVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => DuplicateCardStatementVariant2._(json),
};}

static const DuplicateCardStatementVariant2 $empty = DuplicateCardStatementVariant2._('');

static const List<DuplicateCardStatementVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is DuplicateCardStatementVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'DuplicateCardStatementVariant2($value)';}
}

@immutable
final class DuplicateCardStatement {
  const DuplicateCardStatement({this.string = const Omittable.absent(),
this.duplicateCardStatementVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const DuplicateCardStatement._({required this.rawValue, required this.string,
required this.duplicateCardStatementVariant2,});
  factory DuplicateCardStatement.fromJson(Object? json) => DuplicateCardStatement._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
duplicateCardStatementVariant2: parseAnyOfVariant<DuplicateCardStatementVariant2>(json, (value) => DuplicateCardStatementVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<DuplicateCardStatementVariant2> duplicateCardStatementVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || duplicateCardStatementVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (duplicateCardStatementVariant2.isPresent) duplicateCardStatementVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is DuplicateCardStatement && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'DuplicateCardStatement(${toJson()})';
}
