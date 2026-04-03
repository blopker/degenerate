// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentVerifyMicrodepositsRequest {const PostPaymentIntentsIntentVerifyMicrodepositsRequest({this.amounts, this.clientSecret, this.descriptorCode, this.expand, });

factory PostPaymentIntentsIntentVerifyMicrodepositsRequest.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentVerifyMicrodepositsRequest(
  amounts: (json['amounts'] as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
  clientSecret: json['client_secret'] as String?,
  descriptorCode: json['descriptor_code'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
final List<int>? amounts;

/// The client secret of the PaymentIntent.
final String? clientSecret;

/// A six-character code starting with SM present in the microdeposit sent to the bank account.
final String? descriptorCode;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'amounts': ?amounts,
  'client_secret': ?clientSecret,
  'descriptor_code': ?descriptorCode,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amounts', 'client_secret', 'descriptor_code', 'expand'}.contains(key)); } 
PostPaymentIntentsIntentVerifyMicrodepositsRequest copyWith({List<int> Function()? amounts, String Function()? clientSecret, String Function()? descriptorCode, List<String> Function()? expand, }) { return PostPaymentIntentsIntentVerifyMicrodepositsRequest(
  amounts: amounts != null ? amounts() : this.amounts,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  descriptorCode: descriptorCode != null ? descriptorCode() : this.descriptorCode,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentVerifyMicrodepositsRequest &&
          listEquals(amounts, other.amounts) &&
          clientSecret == other.clientSecret &&
          descriptorCode == other.descriptorCode &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(Object.hashAll(amounts ?? const []), clientSecret, descriptorCode, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostPaymentIntentsIntentVerifyMicrodepositsRequest(amounts: $amounts, clientSecret: $clientSecret, descriptorCode: $descriptorCode, expand: $expand)'; } 
 }
