// GENERATED CODE - DO NOT MODIFY BY HAND

/// The PII this token represents.
final class PostTokensRequestPii {const PostTokensRequestPii({this.idNumber});

factory PostTokensRequestPii.fromJson(Map<String, dynamic> json) { return PostTokensRequestPii(
  idNumber: json['id_number'] as String?,
); }

final String? idNumber;

Map<String, dynamic> toJson() { return {
  'id_number': ?idNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id_number'}.contains(key)); } 
PostTokensRequestPii copyWith({String Function()? idNumber}) { return PostTokensRequestPii(
  idNumber: idNumber != null ? idNumber() : this.idNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestPii &&
          idNumber == other.idNumber; } 
@override int get hashCode { return idNumber.hashCode; } 
@override String toString() { return 'PostTokensRequestPii(idNumber: $idNumber)'; } 
 }
