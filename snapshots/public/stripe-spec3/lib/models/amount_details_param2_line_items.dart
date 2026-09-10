// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param2_line_items_variant1.dart';@immutable final class AmountDetailsParam2LineItemsVariant2 {const AmountDetailsParam2LineItemsVariant2._(this.value);

factory AmountDetailsParam2LineItemsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParam2LineItemsVariant2._(json),
}; }

static const AmountDetailsParam2LineItemsVariant2 $empty = AmountDetailsParam2LineItemsVariant2._('');

static const List<AmountDetailsParam2LineItemsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParam2LineItemsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParam2LineItemsVariant2($value)'; } 
 }

@immutable
final class AmountDetailsParam2LineItems {
  const AmountDetailsParam2LineItems({this.listAmountDetailsParam2LineItemsVariant1 = const Omittable.absent(),
this.amountDetailsParam2LineItemsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParam2LineItems._({required this.rawValue, required this.listAmountDetailsParam2LineItemsVariant1,
required this.amountDetailsParam2LineItemsVariant2,});
  factory AmountDetailsParam2LineItems.fromJson(Object? json) => AmountDetailsParam2LineItems._(
    rawValue: Omittable(json),
    listAmountDetailsParam2LineItemsVariant1: parseAnyOfVariant<List<AmountDetailsParam2LineItemsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => AmountDetailsParam2LineItemsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
amountDetailsParam2LineItemsVariant2: parseAnyOfVariant<AmountDetailsParam2LineItemsVariant2>(json, (value) => AmountDetailsParam2LineItemsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<AmountDetailsParam2LineItemsVariant1>> listAmountDetailsParam2LineItemsVariant1;
final Omittable<AmountDetailsParam2LineItemsVariant2> amountDetailsParam2LineItemsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listAmountDetailsParam2LineItemsVariant1.isPresent || amountDetailsParam2LineItemsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listAmountDetailsParam2LineItemsVariant1.isPresent) listAmountDetailsParam2LineItemsVariant1.value?.map((e) => e.toJson()).toList(),
if (amountDetailsParam2LineItemsVariant2.isPresent) amountDetailsParam2LineItemsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParam2LineItems && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParam2LineItems(${toJson()})';
}
