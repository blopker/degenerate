// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_price.dart';import 'discounts_resource_stackable_discount_with_discount_end.dart';import 'price.dart';import 'subscription_schedule_add_invoice_item_period.dart';import 'subscription_schedule_add_invoice_item_price.dart';import 'tax_rate.dart';/// An Add Invoice Item describes the prices and quantities that will be added as pending invoice items when entering a phase.
@immutable final class SubscriptionScheduleAddInvoiceItem {const SubscriptionScheduleAddInvoiceItem({required this.discounts, required this.period, required this.price, this.metadata = const Omittable.absent(), this.quantity = const Omittable.absent(), this.taxRates = const Omittable.absent(), });

factory SubscriptionScheduleAddInvoiceItem.fromJson(Map<String, dynamic> json) { return SubscriptionScheduleAddInvoiceItem(
  discounts: (json['discounts'] as List<dynamic>).map((e) => DiscountsResourceStackableDiscountWithDiscountEnd.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  period: SubscriptionScheduleAddInvoiceItemPeriod.fromJson(json['period'] as Map<String, dynamic>),
  price: OneOf3.parse(json['price'], fromA: (v) => v as String, fromB: (v) => Price.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedPrice.fromJson(v as Map<String, dynamic>),),
  quantity: json.containsKey('quantity') ? Omittable(json['quantity'] != null ? (json['quantity'] as num).toInt() : null) : const Omittable.absent(),
  taxRates: json.containsKey('tax_rates') ? Omittable((json['tax_rates'] as List<dynamic>?)?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
); }

/// The stackable discounts that will be applied to the item.
final List<DiscountsResourceStackableDiscountWithDiscountEnd> discounts;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

final SubscriptionScheduleAddInvoiceItemPeriod period;

/// ID of the price used to generate the invoice item.
final SubscriptionScheduleAddInvoiceItemPrice price;

/// The quantity of the invoice item.
final Omittable<int?> quantity;

/// The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
final Omittable<List<TaxRate>?> taxRates;

Map<String, dynamic> toJson() { return {
  'discounts': discounts.map((e) => e.toJson()).toList(),
  if (metadata.isPresent) 'metadata': metadata.value,
  'period': period.toJson(),
  'price': price.toJson(),
  if (quantity.isPresent) 'quantity': quantity.value,
  if (taxRates.isPresent) 'tax_rates': taxRates.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('discounts') &&
      json.containsKey('period') &&
      json.containsKey('price'); } 
SubscriptionScheduleAddInvoiceItem copyWith({List<DiscountsResourceStackableDiscountWithDiscountEnd>? discounts, Omittable<Map<String,String>?>? metadata, SubscriptionScheduleAddInvoiceItemPeriod? period, SubscriptionScheduleAddInvoiceItemPrice? price, Omittable<int?>? quantity, Omittable<List<TaxRate>?>? taxRates, }) { return SubscriptionScheduleAddInvoiceItem(
  discounts: discounts ?? this.discounts,
  metadata: metadata ?? this.metadata,
  period: period ?? this.period,
  price: price ?? this.price,
  quantity: quantity ?? this.quantity,
  taxRates: taxRates ?? this.taxRates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionScheduleAddInvoiceItem &&
          listEquals(discounts, other.discounts) &&
          metadata == other.metadata &&
          period == other.period &&
          price == other.price &&
          quantity == other.quantity &&
          taxRates.isPresent == other.taxRates.isPresent &&
          listEquals(taxRates.value, other.taxRates.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(discounts), metadata, period, price, quantity, Object.hashAll(taxRates.value ?? const [])); } 
@override String toString() { return 'SubscriptionScheduleAddInvoiceItem(discounts: $discounts, metadata: $metadata, period: $period, price: $price, quantity: $quantity, taxRates: $taxRates)'; } 
 }
