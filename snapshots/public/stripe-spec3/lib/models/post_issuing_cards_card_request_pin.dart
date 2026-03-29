// GENERATED CODE - DO NOT MODIFY BY HAND

/// The desired new PIN for this card.
final class PostIssuingCardsCardRequestPin {const PostIssuingCardsCardRequestPin({this.encryptedNumber});

factory PostIssuingCardsCardRequestPin.fromJson(Map<String, dynamic> json) { return PostIssuingCardsCardRequestPin(
  encryptedNumber: json['encrypted_number'] as String?,
); }

final String? encryptedNumber;

Map<String, dynamic> toJson() { return {
  'encrypted_number': ?encryptedNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'encrypted_number'}.contains(key)); } 
PostIssuingCardsCardRequestPin copyWith({String Function()? encryptedNumber}) { return PostIssuingCardsCardRequestPin(
  encryptedNumber: encryptedNumber != null ? encryptedNumber() : this.encryptedNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardsCardRequestPin &&
          encryptedNumber == other.encryptedNumber; } 
@override int get hashCode { return encryptedNumber.hashCode; } 
@override String toString() { return 'PostIssuingCardsCardRequestPin(encryptedNumber: $encryptedNumber)'; } 
 }
