// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam54OnDemandPurchaseInterval {const PaymentMethodOptionsParam54OnDemandPurchaseInterval._(this.value);

factory PaymentMethodOptionsParam54OnDemandPurchaseInterval.fromJson(String json) { return switch (json) {
  'day' => day,
  'month' => month,
  'week' => week,
  'year' => year,
  _ => PaymentMethodOptionsParam54OnDemandPurchaseInterval._(json),
}; }

static const PaymentMethodOptionsParam54OnDemandPurchaseInterval day = PaymentMethodOptionsParam54OnDemandPurchaseInterval._('day');

static const PaymentMethodOptionsParam54OnDemandPurchaseInterval month = PaymentMethodOptionsParam54OnDemandPurchaseInterval._('month');

static const PaymentMethodOptionsParam54OnDemandPurchaseInterval week = PaymentMethodOptionsParam54OnDemandPurchaseInterval._('week');

static const PaymentMethodOptionsParam54OnDemandPurchaseInterval year = PaymentMethodOptionsParam54OnDemandPurchaseInterval._('year');

static const List<PaymentMethodOptionsParam54OnDemandPurchaseInterval> values = [day, month, week, year];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam54OnDemandPurchaseInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam54OnDemandPurchaseInterval($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam54OnDemand {const PaymentMethodOptionsParam54OnDemand({this.averageAmount, this.maximumAmount, this.minimumAmount, this.purchaseInterval, this.purchaseIntervalCount, });

factory PaymentMethodOptionsParam54OnDemand.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam54OnDemand(
  averageAmount: json['average_amount'] != null ? (json['average_amount'] as num).toInt() : null,
  maximumAmount: json['maximum_amount'] != null ? (json['maximum_amount'] as num).toInt() : null,
  minimumAmount: json['minimum_amount'] != null ? (json['minimum_amount'] as num).toInt() : null,
  purchaseInterval: json['purchase_interval'] != null ? PaymentMethodOptionsParam54OnDemandPurchaseInterval.fromJson(json['purchase_interval'] as String) : null,
  purchaseIntervalCount: json['purchase_interval_count'] != null ? (json['purchase_interval_count'] as num).toInt() : null,
); }

final int? averageAmount;

final int? maximumAmount;

final int? minimumAmount;

final PaymentMethodOptionsParam54OnDemandPurchaseInterval? purchaseInterval;

final int? purchaseIntervalCount;

Map<String, dynamic> toJson() { return {
  'average_amount': ?averageAmount,
  'maximum_amount': ?maximumAmount,
  'minimum_amount': ?minimumAmount,
  if (purchaseInterval != null) 'purchase_interval': purchaseInterval?.toJson(),
  'purchase_interval_count': ?purchaseIntervalCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'average_amount', 'maximum_amount', 'minimum_amount', 'purchase_interval', 'purchase_interval_count'}.contains(key)); } 
PaymentMethodOptionsParam54OnDemand copyWith({int Function()? averageAmount, int Function()? maximumAmount, int Function()? minimumAmount, PaymentMethodOptionsParam54OnDemandPurchaseInterval Function()? purchaseInterval, int Function()? purchaseIntervalCount, }) { return PaymentMethodOptionsParam54OnDemand(
  averageAmount: averageAmount != null ? averageAmount() : this.averageAmount,
  maximumAmount: maximumAmount != null ? maximumAmount() : this.maximumAmount,
  minimumAmount: minimumAmount != null ? minimumAmount() : this.minimumAmount,
  purchaseInterval: purchaseInterval != null ? purchaseInterval() : this.purchaseInterval,
  purchaseIntervalCount: purchaseIntervalCount != null ? purchaseIntervalCount() : this.purchaseIntervalCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam54OnDemand &&
          averageAmount == other.averageAmount &&
          maximumAmount == other.maximumAmount &&
          minimumAmount == other.minimumAmount &&
          purchaseInterval == other.purchaseInterval &&
          purchaseIntervalCount == other.purchaseIntervalCount; } 
@override int get hashCode { return Object.hash(averageAmount, maximumAmount, minimumAmount, purchaseInterval, purchaseIntervalCount); } 
@override String toString() { return 'PaymentMethodOptionsParam54OnDemand(averageAmount: $averageAmount, maximumAmount: $maximumAmount, minimumAmount: $minimumAmount, purchaseInterval: $purchaseInterval, purchaseIntervalCount: $purchaseIntervalCount)'; } 
 }
