// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
@immutable final class PostPaymentMethodsRequestSepaDebit {const PostPaymentMethodsRequestSepaDebit({required this.iban});

factory PostPaymentMethodsRequestSepaDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostPaymentMethodsRequestSepaDebit copyWith({String? iban}) { return PostPaymentMethodsRequestSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestSepaDebit(iban: $iban)'; } 
 }
