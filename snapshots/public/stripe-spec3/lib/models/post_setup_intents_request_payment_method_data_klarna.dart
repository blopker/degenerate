// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_setup_intents_request_payment_method_data_klarna_dob.dart';final class PostSetupIntentsRequestPaymentMethodDataKlarna {const PostSetupIntentsRequestPaymentMethodDataKlarna({this.dob});

factory PostSetupIntentsRequestPaymentMethodDataKlarna.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodDataKlarna(
  dob: json['dob'] != null ? PostSetupIntentsRequestPaymentMethodDataKlarnaDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
); }

final PostSetupIntentsRequestPaymentMethodDataKlarnaDob? dob;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dob'}.contains(key)); } 
PostSetupIntentsRequestPaymentMethodDataKlarna copyWith({PostSetupIntentsRequestPaymentMethodDataKlarnaDob Function()? dob}) { return PostSetupIntentsRequestPaymentMethodDataKlarna(
  dob: dob != null ? dob() : this.dob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataKlarna &&
          dob == other.dob; } 
@override int get hashCode { return dob.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataKlarna(dob: $dob)'; } 
 }
