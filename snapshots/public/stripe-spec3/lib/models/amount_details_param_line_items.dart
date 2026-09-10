// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param_line_items_variant1.dart';@immutable final class AmountDetailsParamLineItemsVariant2 {const AmountDetailsParamLineItemsVariant2._(this.value);

factory AmountDetailsParamLineItemsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParamLineItemsVariant2._(json),
}; }

static const AmountDetailsParamLineItemsVariant2 $empty = AmountDetailsParamLineItemsVariant2._('');

static const List<AmountDetailsParamLineItemsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParamLineItemsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParamLineItemsVariant2($value)'; } 
 }

@immutable
final class AmountDetailsParamLineItems {
  const AmountDetailsParamLineItems({this.listAmountDetailsParamLineItemsVariant1 = const Omittable.absent(),
this.amountDetailsParamLineItemsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParamLineItems._({required this.rawValue, required this.listAmountDetailsParamLineItemsVariant1,
required this.amountDetailsParamLineItemsVariant2,});
  factory AmountDetailsParamLineItems.fromJson(Object? json) => AmountDetailsParamLineItems._(
    rawValue: Omittable(json),
    listAmountDetailsParamLineItemsVariant1: parseAnyOfVariant<List<AmountDetailsParamLineItemsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => AmountDetailsParamLineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
amountDetailsParamLineItemsVariant2: parseAnyOfVariant<AmountDetailsParamLineItemsVariant2>(json, (value) => AmountDetailsParamLineItemsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<AmountDetailsParamLineItemsVariant1>> listAmountDetailsParamLineItemsVariant1;
final Omittable<AmountDetailsParamLineItemsVariant2> amountDetailsParamLineItemsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listAmountDetailsParamLineItemsVariant1.isPresent || amountDetailsParamLineItemsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listAmountDetailsParamLineItemsVariant1.isPresent) listAmountDetailsParamLineItemsVariant1.value?.map((e) => e.toJson()).toList(),
if (amountDetailsParamLineItemsVariant2.isPresent) amountDetailsParamLineItemsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParamLineItems && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParamLineItems(${toJson()})';
}
