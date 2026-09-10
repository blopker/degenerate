// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_discount.dart';import 'discount.dart';
@immutable
final class InvoiceDiscounts {
  const InvoiceDiscounts({this.string = const Omittable.absent(),
this.discount = const Omittable.absent(),
this.deletedDiscount = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoiceDiscounts._({required this.rawValue, required this.string,
required this.discount,
required this.deletedDiscount,});
  factory InvoiceDiscounts.fromJson(Object? json) => InvoiceDiscounts._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
discount: parseAnyOfVariant<Discount>(json, (value) => Discount.fromJson(value! as Map<String, dynamic>)),
deletedDiscount: parseAnyOfVariant<DeletedDiscount>(json, (value) => DeletedDiscount.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Discount> discount;
final Omittable<DeletedDiscount> deletedDiscount;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || discount.isPresent || deletedDiscount.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (discount.isPresent) discount.value?.toJson(),
if (deletedDiscount.isPresent) deletedDiscount.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoiceDiscounts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoiceDiscounts(${toJson()})';
}
