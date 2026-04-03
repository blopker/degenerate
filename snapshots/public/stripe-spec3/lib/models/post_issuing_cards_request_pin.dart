// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The desired PIN for this card.
@immutable final class PostIssuingCardsRequestPin {const PostIssuingCardsRequestPin({this.encryptedNumber});

factory PostIssuingCardsRequestPin.fromJson(Map<String, dynamic> json) { return PostIssuingCardsRequestPin(
  encryptedNumber: json['encrypted_number'] as String?,
); }

final String? encryptedNumber;

Map<String, dynamic> toJson() { return {
  'encrypted_number': ?encryptedNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'encrypted_number'}.contains(key)); } 
PostIssuingCardsRequestPin copyWith({String Function()? encryptedNumber}) { return PostIssuingCardsRequestPin(
  encryptedNumber: encryptedNumber != null ? encryptedNumber() : this.encryptedNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsRequestPin &&
          encryptedNumber == other.encryptedNumber; } 
@override int get hashCode { return encryptedNumber.hashCode; } 
@override String toString() { return 'PostIssuingCardsRequestPin(encryptedNumber: $encryptedNumber)'; } 
 }
