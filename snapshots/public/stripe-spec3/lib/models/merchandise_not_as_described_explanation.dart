// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribedExplanationVariant2 {const MerchandiseNotAsDescribedExplanationVariant2._(this.value);

factory MerchandiseNotAsDescribedExplanationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribedExplanationVariant2._(json),
};}

static const MerchandiseNotAsDescribedExplanationVariant2 $empty = MerchandiseNotAsDescribedExplanationVariant2._('');

static const List<MerchandiseNotAsDescribedExplanationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MerchandiseNotAsDescribedExplanationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MerchandiseNotAsDescribedExplanationVariant2($value)';}
}

@immutable
final class MerchandiseNotAsDescribedExplanation {
  const MerchandiseNotAsDescribedExplanation({this.string = const Omittable.absent(),
this.merchandiseNotAsDescribedExplanationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribedExplanation._({required this.rawValue, required this.string,
required this.merchandiseNotAsDescribedExplanationVariant2,});
  factory MerchandiseNotAsDescribedExplanation.fromJson(Object? json) => MerchandiseNotAsDescribedExplanation._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
merchandiseNotAsDescribedExplanationVariant2: parseAnyOfVariant<MerchandiseNotAsDescribedExplanationVariant2>(json, (value) => MerchandiseNotAsDescribedExplanationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<MerchandiseNotAsDescribedExplanationVariant2> merchandiseNotAsDescribedExplanationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || merchandiseNotAsDescribedExplanationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (merchandiseNotAsDescribedExplanationVariant2.isPresent) merchandiseNotAsDescribedExplanationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribedExplanation && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribedExplanation(${toJson()})';
}
