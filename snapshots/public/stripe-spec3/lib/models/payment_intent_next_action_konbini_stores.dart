// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_next_action_konbini_familymart.dart';import 'payment_intent_next_action_konbini_lawson.dart';import 'payment_intent_next_action_konbini_ministop.dart';import 'payment_intent_next_action_konbini_seicomart.dart';/// 
final class PaymentIntentNextActionKonbiniStores {const PaymentIntentNextActionKonbiniStores({this.familymart, this.lawson, this.ministop, this.seicomart, });

factory PaymentIntentNextActionKonbiniStores.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionKonbiniStores(
  familymart: json['familymart'] != null ? PaymentIntentNextActionKonbiniFamilymart.fromJson(json['familymart'] as Map<String, dynamic>) : null,
  lawson: json['lawson'] != null ? PaymentIntentNextActionKonbiniLawson.fromJson(json['lawson'] as Map<String, dynamic>) : null,
  ministop: json['ministop'] != null ? PaymentIntentNextActionKonbiniMinistop.fromJson(json['ministop'] as Map<String, dynamic>) : null,
  seicomart: json['seicomart'] != null ? PaymentIntentNextActionKonbiniSeicomart.fromJson(json['seicomart'] as Map<String, dynamic>) : null,
); }

/// FamilyMart instruction details.
final PaymentIntentNextActionKonbiniFamilymart? familymart;

/// Lawson instruction details.
final PaymentIntentNextActionKonbiniLawson? lawson;

/// Ministop instruction details.
final PaymentIntentNextActionKonbiniMinistop? ministop;

/// Seicomart instruction details.
final PaymentIntentNextActionKonbiniSeicomart? seicomart;

Map<String, dynamic> toJson() { return {
  if (familymart != null) 'familymart': familymart?.toJson(),
  if (lawson != null) 'lawson': lawson?.toJson(),
  if (ministop != null) 'ministop': ministop?.toJson(),
  if (seicomart != null) 'seicomart': seicomart?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'familymart', 'lawson', 'ministop', 'seicomart'}.contains(key)); } 
PaymentIntentNextActionKonbiniStores copyWith({PaymentIntentNextActionKonbiniFamilymart? Function()? familymart, PaymentIntentNextActionKonbiniLawson? Function()? lawson, PaymentIntentNextActionKonbiniMinistop? Function()? ministop, PaymentIntentNextActionKonbiniSeicomart? Function()? seicomart, }) { return PaymentIntentNextActionKonbiniStores(
  familymart: familymart != null ? familymart() : this.familymart,
  lawson: lawson != null ? lawson() : this.lawson,
  ministop: ministop != null ? ministop() : this.ministop,
  seicomart: seicomart != null ? seicomart() : this.seicomart,
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
