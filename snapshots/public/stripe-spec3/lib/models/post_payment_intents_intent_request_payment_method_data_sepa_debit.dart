// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit {const PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit({required this.iban});

factory PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit copyWith({String? iban}) { return PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataSepaDebit(iban: $iban)'; } 
 }
