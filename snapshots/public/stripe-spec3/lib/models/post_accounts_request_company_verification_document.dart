// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCompanyVerificationDocument {const PostAccountsRequestCompanyVerificationDocument({this.back, this.front, });

factory PostAccountsRequestCompanyVerificationDocument.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCompanyVerificationDocument(
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
PostAccountsRequestCompanyVerificationDocument copyWith({String Function()? back, String Function()? front, }) { return PostAccountsRequestCompanyVerificationDocument(
  back: back != null ? back() : this.back,
  front: front != null ? front() : this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCompanyVerificationDocument &&
          back == other.back &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, front); } 
@override String toString() { return 'PostAccountsRequestCompanyVerificationDocument(back: $back, front: $front)'; } 
 }
