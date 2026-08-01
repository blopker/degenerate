// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class Fee {const Fee({required this.amount, required this.currency, required this.type, this.application = const Omittable.absent(), this.description = const Omittable.absent(), });

factory Fee.fromJson(Map<String, dynamic> json) { return Fee(
  amount: (json['amount'] as num).toInt(),
  application: json.containsKey('application') ? Omittable(json['application'] as String?) : const Omittable.absent(),
  currency: json['currency'] as String,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  type: json['type'] as String,
); }

/// Amount of the fee, in cents.
final int amount;

/// ID of the Connect application that earned the fee.
final Omittable<String?> application;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Type of the fee, one of: `application_fee`, `payment_method_passthrough_fee`, `stripe_fee` or `tax`.
final String type;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (application.isPresent) 'application': application.value,
  'currency': currency,
  if (description.isPresent) 'description': description.value,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('type') && json['type'] is String; } 
Fee copyWith({int? amount, Omittable<String?>? application, String? currency, Omittable<String?>? description, String? type, }) { return Fee(
  amount: amount ?? this.amount,
  application: application ?? this.application,
  currency: currency ?? this.currency,
  description: description ?? this.description,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Fee &&
          amount == other.amount &&
          application == other.application &&
          currency == other.currency &&
          description == other.description &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amount, application, currency, description, type); } 
@override String toString() { return 'Fee(amount: $amount, application: $application, currency: $currency, description: $description, type: $type)'; } 
 }
