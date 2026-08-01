// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shipping.dart';import 'source_order_item.dart';/// 
@immutable final class SourceOrder {const SourceOrder({required this.amount, required this.currency, this.email, this.items = const Omittable.absent(), this.shipping, });

factory SourceOrder.fromJson(Map<String, dynamic> json) { return SourceOrder(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  email: json['email'] as String?,
  items: json.containsKey('items') ? Omittable((json['items'] as List<dynamic>?)?.map((e) => SourceOrderItem.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  shipping: json['shipping'] != null ? Shipping.fromJson(json['shipping'] as Map<String, dynamic>) : null,
); }

/// A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
final int amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// The email address of the customer placing the order.
final String? email;

/// List of items constituting the order.
final Omittable<List<SourceOrderItem>?> items;

final Shipping? shipping;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'currency': currency,
  'email': ?email,
  if (items.isPresent) 'items': items.value?.map((e) => e.toJson()).toList(),
  if (shipping != null) 'shipping': shipping?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String; } 
SourceOrder copyWith({int? amount, String? currency, String? Function()? email, Omittable<List<SourceOrderItem>?>? items, Shipping? Function()? shipping, }) { return SourceOrder(
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  email: email != null ? email() : this.email,
  items: items ?? this.items,
  shipping: shipping != null ? shipping() : this.shipping,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceOrder &&
          amount == other.amount &&
          currency == other.currency &&
          email == other.email &&
          items.isPresent == other.items.isPresent &&
          listEquals(items.value, other.items.value) &&
          shipping == other.shipping; } 
@override int get hashCode { return Object.hash(amount, currency, email, Object.hashAll(items.value ?? const []), shipping); } 
@override String toString() { return 'SourceOrder(amount: $amount, currency: $currency, email: $email, items: $items, shipping: $shipping)'; } 
 }
