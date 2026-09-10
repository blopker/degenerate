// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MerchandiseNotAsDescribedReturnDescriptionVariant2 {const MerchandiseNotAsDescribedReturnDescriptionVariant2._(this.value);

factory MerchandiseNotAsDescribedReturnDescriptionVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => MerchandiseNotAsDescribedReturnDescriptionVariant2._(json),
};}

static const MerchandiseNotAsDescribedReturnDescriptionVariant2 $empty = MerchandiseNotAsDescribedReturnDescriptionVariant2._('');

static const List<MerchandiseNotAsDescribedReturnDescriptionVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is MerchandiseNotAsDescribedReturnDescriptionVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'MerchandiseNotAsDescribedReturnDescriptionVariant2($value)';}
}

@immutable
final class MerchandiseNotAsDescribedReturnDescription {
  const MerchandiseNotAsDescribedReturnDescription({this.string = const Omittable.absent(),
this.merchandiseNotAsDescribedReturnDescriptionVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const MerchandiseNotAsDescribedReturnDescription._({required this.rawValue, required this.string,
required this.merchandiseNotAsDescribedReturnDescriptionVariant2,});
  factory MerchandiseNotAsDescribedReturnDescription.fromJson(Object? json) => MerchandiseNotAsDescribedReturnDescription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
merchandiseNotAsDescribedReturnDescriptionVariant2: parseAnyOfVariant<MerchandiseNotAsDescribedReturnDescriptionVariant2>(json, (value) => MerchandiseNotAsDescribedReturnDescriptionVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<MerchandiseNotAsDescribedReturnDescriptionVariant2> merchandiseNotAsDescribedReturnDescriptionVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || merchandiseNotAsDescribedReturnDescriptionVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (merchandiseNotAsDescribedReturnDescriptionVariant2.isPresent) merchandiseNotAsDescribedReturnDescriptionVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is MerchandiseNotAsDescribedReturnDescription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'MerchandiseNotAsDescribedReturnDescription(${toJson()})';
}
