// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit {const PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit({required this.iban});

factory PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit copyWith({String? iban}) { return PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataSepaDebit(iban: $iban)'; } 
 }
