// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit({required this.iban});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit(
  iban: json['iban'] as String,
); }

final String iban;

Map<String, dynamic> toJson() { return {
  'iban': iban,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('iban') && json['iban'] is String; } 
PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit copyWith({String? iban}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit(
  iban: iban ?? this.iban,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit &&
          iban == other.iban; } 
@override int get hashCode { return iban.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataSepaDebit(iban: $iban)'; } 
 }
