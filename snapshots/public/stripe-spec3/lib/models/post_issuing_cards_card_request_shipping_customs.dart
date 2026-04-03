// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardsCardRequestShippingCustoms {const PostIssuingCardsCardRequestShippingCustoms({this.eoriNumber});

factory PostIssuingCardsCardRequestShippingCustoms.fromJson(Map<String, dynamic> json) { return PostIssuingCardsCardRequestShippingCustoms(
  eoriNumber: json['eori_number'] as String?,
); }

final String? eoriNumber;

Map<String, dynamic> toJson() { return {
  'eori_number': ?eoriNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'eori_number'}.contains(key)); } 
PostIssuingCardsCardRequestShippingCustoms copyWith({String Function()? eoriNumber}) { return PostIssuingCardsCardRequestShippingCustoms(
  eoriNumber: eoriNumber != null ? eoriNumber() : this.eoriNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsCardRequestShippingCustoms &&
          eoriNumber == other.eoriNumber; } 
@override int get hashCode { return eoriNumber.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestShippingCustoms(eoriNumber: $eoriNumber)'; } 
 }
