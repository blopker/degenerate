// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestIndividualVerificationAdditionalDocument {const PostAccountsAccountRequestIndividualVerificationAdditionalDocument({this.back, this.front, });

factory PostAccountsAccountRequestIndividualVerificationAdditionalDocument.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestIndividualVerificationAdditionalDocument(
  back: json['back'] as String?,
  front: json['front'] as String?,
); }

final String? back;

final String? front;

Map<String, dynamic> toJson() { return {
  'back': ?back,
  'front': ?front,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'back', 'front'}.contains(key)); } 
PostAccountsAccountRequestIndividualVerificationAdditionalDocument copyWith({String Function()? back, String Function()? front, }) { return PostAccountsAccountRequestIndividualVerificationAdditionalDocument(
  back: back != null ? back() : this.back,
  front: front != null ? front() : this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestIndividualVerificationAdditionalDocument &&
          back == other.back &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, front); } 
@override String toString() { return 'PostAccountsAccountRequestIndividualVerificationAdditionalDocument(back: $back, front: $front)'; } 
 }
