// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit({required this.iban});

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit copyWith({String? iban}) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataSepaDebit(iban: $iban)'; } 
 }
