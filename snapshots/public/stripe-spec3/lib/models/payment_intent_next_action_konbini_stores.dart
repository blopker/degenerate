// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_next_action_konbini_familymart.dart';import 'payment_intent_next_action_konbini_lawson.dart';import 'payment_intent_next_action_konbini_ministop.dart';import 'payment_intent_next_action_konbini_seicomart.dart';/// 
@immutable final class PaymentIntentNextActionKonbiniStores {const PaymentIntentNextActionKonbiniStores({this.familymart = const Omittable.absent(), this.lawson = const Omittable.absent(), this.ministop = const Omittable.absent(), this.seicomart = const Omittable.absent(), });

factory PaymentIntentNextActionKonbiniStores.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionKonbiniStores(
  familymart: json.containsKey('familymart') ? Omittable(json['familymart'] != null ? PaymentIntentNextActionKonbiniFamilymart.fromJson(json['familymart'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  lawson: json.containsKey('lawson') ? Omittable(json['lawson'] != null ? PaymentIntentNextActionKonbiniLawson.fromJson(json['lawson'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  ministop: json.containsKey('ministop') ? Omittable(json['ministop'] != null ? PaymentIntentNextActionKonbiniMinistop.fromJson(json['ministop'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  seicomart: json.containsKey('seicomart') ? Omittable(json['seicomart'] != null ? PaymentIntentNextActionKonbiniSeicomart.fromJson(json['seicomart'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// FamilyMart instruction details.
final Omittable<PaymentIntentNextActionKonbiniFamilymart?> familymart;

/// Lawson instruction details.
final Omittable<PaymentIntentNextActionKonbiniLawson?> lawson;

/// Ministop instruction details.
final Omittable<PaymentIntentNextActionKonbiniMinistop?> ministop;

/// Seicomart instruction details.
final Omittable<PaymentIntentNextActionKonbiniSeicomart?> seicomart;

Map<String, dynamic> toJson() { return {
  if (familymart.isPresent) 'familymart': familymart.value?.toJson(),
  if (lawson.isPresent) 'lawson': lawson.value?.toJson(),
  if (ministop.isPresent) 'ministop': ministop.value?.toJson(),
  if (seicomart.isPresent) 'seicomart': seicomart.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'familymart', 'lawson', 'ministop', 'seicomart'}.contains(key)); } 
PaymentIntentNextActionKonbiniStores copyWith({Omittable<PaymentIntentNextActionKonbiniFamilymart?>? familymart, Omittable<PaymentIntentNextActionKonbiniLawson?>? lawson, Omittable<PaymentIntentNextActionKonbiniMinistop?>? ministop, Omittable<PaymentIntentNextActionKonbiniSeicomart?>? seicomart, }) { return PaymentIntentNextActionKonbiniStores(
  familymart: familymart ?? this.familymart,
  lawson: lawson ?? this.lawson,
  ministop: ministop ?? this.ministop,
  seicomart: seicomart ?? this.seicomart,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionKonbiniStores &&
          familymart == other.familymart &&
          lawson == other.lawson &&
          ministop == other.ministop &&
          seicomart == other.seicomart; } 
@override int get hashCode { return Object.hash(familymart, lawson, ministop, seicomart); } 
@override String toString() { return 'PaymentIntentNextActionKonbiniStores(familymart: $familymart, lawson: $lawson, ministop: $ministop, seicomart: $seicomart)'; } 
 }
