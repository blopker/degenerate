// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataSepaDebit {const PostPaymentIntentsRequestPaymentMethodDataSepaDebit({required this.iban});

factory PostPaymentIntentsRequestPaymentMethodDataSepaDebit.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestPaymentMethodDataSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostPaymentIntentsRequestPaymentMethodDataSepaDebit copyWith({String? iban}) { return PostPaymentIntentsRequestPaymentMethodDataSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodDataSepaDebit(iban: $iban)'; } 
 }
