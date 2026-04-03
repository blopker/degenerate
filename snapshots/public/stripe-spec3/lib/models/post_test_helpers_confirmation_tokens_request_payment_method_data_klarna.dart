// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_confirmation_tokens_request_payment_method_data_klarna_dob.dart';@immutable final class PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna {const PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna({this.dob});

factory PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna.fromJson(Map<String, dynamic> json) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna(
  dob: json['dob'] != null ? PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob.fromJson(json['dob'] as Map<String, dynamic>) : null,
); }

final PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob? dob;

Map<String, dynamic> toJson() { return {
  if (dob != null) 'dob': dob?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'dob'}.contains(key)); } 
PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna copyWith({PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarnaDob Function()? dob}) { return PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna(
  dob: dob != null ? dob() : this.dob,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna &&
          dob == other.dob; } 
@override int get hashCode { return dob.hashCode; } 
@override String toString() { return 'PostTestHelpersConfirmationTokensRequestPaymentMethodDataKlarna(dob: $dob)'; } 
 }
