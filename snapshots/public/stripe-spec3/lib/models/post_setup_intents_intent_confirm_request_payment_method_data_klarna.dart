// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_setup_intents_intent_confirm_request_payment_method_data_klarna_dob.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna({this.dob});

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna(
  dob: json['dob'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarnaDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarnaDob? dob;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dob'}.contains(key)); } 
PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarnaDob Function()? dob}) { return PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna(
  dob: dob != null ? dob() : this.dob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna &&
          dob == other.dob; } 
@override int get hashCode { return dob.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataKlarna(dob: $dob)'; } 
 }
