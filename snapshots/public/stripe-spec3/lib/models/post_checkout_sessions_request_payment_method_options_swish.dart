// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsSwish {const PostCheckoutSessionsRequestPaymentMethodOptionsSwish({this.reference});

factory PostCheckoutSessionsRequestPaymentMethodOptionsSwish.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestPaymentMethodOptionsSwish(
  reference: json['reference'] as String?,
); }

final String? reference;

Map<String, dynamic> toJson() { return {
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference'}.contains(key)); } 
PostCheckoutSessionsRequestPaymentMethodOptionsSwish copyWith({String Function()? reference}) { return PostCheckoutSessionsRequestPaymentMethodOptionsSwish(
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsSwish &&
          reference == other.reference; } 
@override int get hashCode { return reference.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsSwish(reference: $reference)'; } 
 }
