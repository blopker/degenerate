// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountPersonsRequestVerificationAdditionalDocument {const PostAccountsAccountPersonsRequestVerificationAdditionalDocument({this.back, this.front, });

factory PostAccountsAccountPersonsRequestVerificationAdditionalDocument.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsRequestVerificationAdditionalDocument(
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
PostAccountsAccountPersonsRequestVerificationAdditionalDocument copyWith({String Function()? back, String Function()? front, }) { return PostAccountsAccountPersonsRequestVerificationAdditionalDocument(
  back: back != null ? back() : this.back,
  front: front != null ? front() : this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsRequestVerificationAdditionalDocument &&
          back == other.back &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, front); } 
@override String toString() { return 'PostAccountsAccountPersonsRequestVerificationAdditionalDocument(back: $back, front: $front)'; } 
 }
