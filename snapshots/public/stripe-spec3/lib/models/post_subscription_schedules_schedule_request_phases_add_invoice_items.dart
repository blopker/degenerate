// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_phases_add_invoice_items_discounts.dart';import 'post_subscription_schedules_schedule_request_phases_add_invoice_items_period.dart';import 'post_subscription_schedules_schedule_request_phases_add_invoice_items_price_data.dart';import 'post_subscription_schedules_schedule_request_phases_add_invoice_items_tax_rates.dart';final class PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems {const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems({this.discounts, this.metadata, this.period, this.price, this.priceData, this.quantity, this.taxRates, });

factory PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems(
  discounts: (json['discounts'] as List<dynamic>?)?.map((e) => PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsDiscounts.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  period: json['period'] != null ? PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod.fromJson(json['period'] as Map<String, dynamic>) : null,
  price: json['price'] as String?,
  priceData: json['price_data'] != null ? PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData.fromJson(json['price_data'] as Map<String, dynamic>) : null,
  quantity: json['quantity'] != null ? (json['quantity'] as num).toInt() : null,
  taxRates: json['tax_rates'] != null ? OneOf2.parse(json['tax_rates'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(v as String),) : null,
); }

final List<PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsDiscounts>? discounts;

final Map<String,String>? metadata;

final PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod? period;

final String? price;

final PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData? priceData;

final int? quantity;

final PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates? taxRates;

Map<String, dynamic> toJson() { return {
  if (discounts != null) 'discounts': discounts?.map((e) => e.toJson()).toList(),
  'metadata': ?metadata,
  if (period != null) 'period': period?.toJson(),
  'price': ?price,
  if (priceData != null) 'price_data': priceData?.toJson(),
  'quantity': ?quantity,
  if (taxRates != null) 'tax_rates': taxRates?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems copyWith({List<PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsDiscounts> Function()? discounts, Map<String, String> Function()? metadata, PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod Function()? period, String Function()? price, PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPriceData Function()? priceData, int Function()? quantity, PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates Function()? taxRates, }) { return PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems(
  discounts: discounts != null ? discounts() : this.discounts,
  metadata: metadata != null ? metadata() : this.metadata,
  period: period != null ? period() : this.period,
  price: price != null ? price() : this.price,
  priceData: priceData != null ? priceData() : this.priceData,
  quantity: quantity != null ? quantity() : this.quantity,
  taxRates: taxRates != null ? taxRates() : this.taxRates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems &&
          listEquals(discounts, other.discounts) &&
          metadata == other.metadata &&
          period == other.period &&
          price == other.price &&
          priceData == other.priceData &&
          quantity == other.quantity &&
          taxRates == other.taxRates; } 
@override int get hashCode { return Object.hash(Object.hashAll(discounts ?? const []), metadata, period, price, priceData, quantity, taxRates); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItems(discounts: $discounts, metadata: $metadata, period: $period, price: $price, priceData: $priceData, quantity: $quantity, taxRates: $taxRates)'; } 
 }
