// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param2.dart';@immutable final class AmountDetailsParamTaxVariant2 {const AmountDetailsParamTaxVariant2._(this.value);

factory AmountDetailsParamTaxVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AmountDetailsParamTaxVariant2._(json),
};}

static const AmountDetailsParamTaxVariant2 $empty = AmountDetailsParamTaxVariant2._('');

static const List<AmountDetailsParamTaxVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AmountDetailsParamTaxVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AmountDetailsParamTaxVariant2($value)';}
}

@immutable
final class AmountDetailsParamTax {
  const AmountDetailsParamTax({this.amountDetailsTaxParam2 = const Omittable.absent(),
this.amountDetailsParamTaxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParamTax._({required this.rawValue, required this.amountDetailsTaxParam2,
required this.amountDetailsParamTaxVariant2,});
  factory AmountDetailsParamTax.fromJson(Object? json) => AmountDetailsParamTax._(
    rawValue: Omittable(json),
    amountDetailsTaxParam2: parseAnyOfVariant<AmountDetailsTaxParam2>(json, (value) => AmountDetailsTaxParam2.fromJson(value! as Map<String, dynamic>)),
amountDetailsParamTaxVariant2: parseAnyOfVariant<AmountDetailsParamTaxVariant2>(json, (value) => AmountDetailsParamTaxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsTaxParam2> amountDetailsTaxParam2;
final Omittable<AmountDetailsParamTaxVariant2> amountDetailsParamTaxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsTaxParam2.isPresent || amountDetailsParamTaxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsTaxParam2.isPresent) amountDetailsTaxParam2.value?.toJson(),
if (amountDetailsParamTaxVariant2.isPresent) amountDetailsParamTaxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParamTax && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParamTax(${toJson()})';
}
