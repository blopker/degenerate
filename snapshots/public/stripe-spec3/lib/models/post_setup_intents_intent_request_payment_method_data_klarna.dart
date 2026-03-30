// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_intent_request_payment_method_data_klarna_dob.dart';final class PostSetupIntentsIntentRequestPaymentMethodDataKlarna {const PostSetupIntentsIntentRequestPaymentMethodDataKlarna({this.dob});

factory PostSetupIntentsIntentRequestPaymentMethodDataKlarna.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentRequestPaymentMethodDataKlarna(
  dob: json['dob'] != null ? PostSetupIntentsIntentRequestPaymentMethodDataKlarnaDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsIntentRequestPaymentMethodDataKlarnaDob? dob;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dob'}.contains(key)); } 
PostSetupIntentsIntentRequestPaymentMethodDataKlarna copyWith({PostSetupIntentsIntentRequestPaymentMethodDataKlarnaDob Function()? dob}) { return PostSetupIntentsIntentRequestPaymentMethodDataKlarna(
  dob: dob != null ? dob() : this.dob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataKlarna &&
          dob == other.dob; } 
@override int get hashCode { return dob.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataKlarna(dob: $dob)'; } 
 }
