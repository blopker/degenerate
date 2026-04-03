// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazZarazConfigReturnConsentButtonTextTranslations {const ZarazZarazConfigReturnConsentButtonTextTranslations({required this.acceptAll, required this.confirmMyChoices, required this.rejectAll, });

factory ZarazZarazConfigReturnConsentButtonTextTranslations.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnConsentButtonTextTranslations(
  acceptAll: (json['accept_all'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  confirmMyChoices: (json['confirm_my_choices'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  rejectAll: (json['reject_all'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Object where keys are language codes
final Map<String,String> acceptAll;

/// Object where keys are language codes
final Map<String,String> confirmMyChoices;

/// Object where keys are language codes
final Map<String,String> rejectAll;

Map<String, dynamic> toJson() { return {
  'accept_all': acceptAll,
  'confirm_my_choices': confirmMyChoices,
  'reject_all': rejectAll,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('accept_all') &&
      json.containsKey('confirm_my_choices') &&
      json.containsKey('reject_all'); } 
ZarazZarazConfigReturnConsentButtonTextTranslations copyWith({Map<String,String>? acceptAll, Map<String,String>? confirmMyChoices, Map<String,String>? rejectAll, }) { return ZarazZarazConfigReturnConsentButtonTextTranslations(
  acceptAll: acceptAll ?? this.acceptAll,
  confirmMyChoices: confirmMyChoices ?? this.confirmMyChoices,
  rejectAll: rejectAll ?? this.rejectAll,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturnConsentButtonTextTranslations &&
          acceptAll == other.acceptAll &&
          confirmMyChoices == other.confirmMyChoices &&
          rejectAll == other.rejectAll; } 
@override int get hashCode { return Object.hash(acceptAll, confirmMyChoices, rejectAll); } 
@override String toString() { return 'ZarazZarazConfigReturnConsentButtonTextTranslations(acceptAll: $acceptAll, confirmMyChoices: $confirmMyChoices, rejectAll: $rejectAll)'; } 
 }
