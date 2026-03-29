// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_payment_intents_intent_request_payment_method_data_klarna_dob.dart';final class PostPaymentIntentsIntentRequestPaymentMethodDataKlarna {const PostPaymentIntentsIntentRequestPaymentMethodDataKlarna({this.dob});

factory PostPaymentIntentsIntentRequestPaymentMethodDataKlarna.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestPaymentMethodDataKlarna(
  dob: json['dob'] != null ? PostPaymentIntentsIntentRequestPaymentMethodDataKlarnaDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
); }

final PostPaymentIntentsIntentRequestPaymentMethodDataKlarnaDob? dob;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dob'}.contains(key)); } 
PostPaymentIntentsIntentRequestPaymentMethodDataKlarna copyWith({PostPaymentIntentsIntentRequestPaymentMethodDataKlarnaDob Function()? dob}) { return PostPaymentIntentsIntentRequestPaymentMethodDataKlarna(
  dob: dob != null ? dob() : this.dob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataKlarna &&
          dob == other.dob; } 
@override int get hashCode { return dob.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataKlarna(dob: $dob)'; } 
 }
