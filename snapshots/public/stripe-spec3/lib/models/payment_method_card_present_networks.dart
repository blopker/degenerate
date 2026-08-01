// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodCardPresentNetworks {const PaymentMethodCardPresentNetworks({required this.available, this.preferred = const Omittable.absent(), });

factory PaymentMethodCardPresentNetworks.fromJson(Map<String, dynamic> json) { return PaymentMethodCardPresentNetworks(
  available: (json['available'] as List<dynamic>).map((e) => e as String).toList(),
  preferred: json.containsKey('preferred') ? Omittable(json['preferred'] as String?) : const Omittable.absent(),
); }

/// All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
final List<String> available;

/// The preferred network for the card.
final Omittable<String?> preferred;

Map<String, dynamic> toJson() { return {
  'available': available,
  if (preferred.isPresent) 'preferred': preferred.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('available'); } 
PaymentMethodCardPresentNetworks copyWith({List<String>? available, Omittable<String?>? preferred, }) { return PaymentMethodCardPresentNetworks(
  available: available ?? this.available,
  preferred: preferred ?? this.preferred,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodCardPresentNetworks &&
          listEquals(available, other.available) &&
          preferred == other.preferred; } 
@override int get hashCode { return Object.hash(Object.hashAll(available), preferred); } 
@override String toString() { return 'PaymentMethodCardPresentNetworks(available: $available, preferred: $preferred)'; } 
 }
