// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsRequestPaymentMethodDataSepaDebit {const PostSetupIntentsRequestPaymentMethodDataSepaDebit({required this.iban});

factory PostSetupIntentsRequestPaymentMethodDataSepaDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodDataSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostSetupIntentsRequestPaymentMethodDataSepaDebit copyWith({String? iban}) { return PostSetupIntentsRequestPaymentMethodDataSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataSepaDebit(iban: $iban)'; } 
 }
