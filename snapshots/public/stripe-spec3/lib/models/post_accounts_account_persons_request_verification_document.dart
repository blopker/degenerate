// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsRequestVerificationDocument {const PostAccountsAccountPersonsRequestVerificationDocument({this.back, this.front, });

factory PostAccountsAccountPersonsRequestVerificationDocument.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsRequestVerificationDocument(
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
PostAccountsAccountPersonsRequestVerificationDocument copyWith({String Function()? back, String Function()? front, }) { return PostAccountsAccountPersonsRequestVerificationDocument(
  back: back != null ? back() : this.back,
  front: front != null ? front() : this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsRequestVerificationDocument &&
          back == other.back &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, front); } 
@override String toString() { return 'PostAccountsAccountPersonsRequestVerificationDocument(back: $back, front: $front)'; } 
 }
