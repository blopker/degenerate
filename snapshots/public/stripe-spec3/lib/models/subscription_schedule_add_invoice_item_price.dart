// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_price.dart';import 'price.dart';/// ID of the price used to generate the invoice item.
@immutable
final class SubscriptionScheduleAddInvoiceItemPrice {
  const SubscriptionScheduleAddInvoiceItemPrice({this.string = const Omittable.absent(),
this.price = const Omittable.absent(),
this.deletedPrice = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SubscriptionScheduleAddInvoiceItemPrice._({required this.rawValue, required this.string,
required this.price,
required this.deletedPrice,});
  factory SubscriptionScheduleAddInvoiceItemPrice.fromJson(Object? json) => SubscriptionScheduleAddInvoiceItemPrice._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
price: parseAnyOfVariant<Price>(json, (value) => Price.fromJson(value! as Map<String, dynamic>)),
deletedPrice: parseAnyOfVariant<DeletedPrice>(json, (value) => DeletedPrice.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Price> price;
final Omittable<DeletedPrice> deletedPrice;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || price.isPresent || deletedPrice.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (price.isPresent) price.value?.toJson(),
if (deletedPrice.isPresent) deletedPrice.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SubscriptionScheduleAddInvoiceItemPrice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SubscriptionScheduleAddInvoiceItemPrice(${toJson()})';
}
