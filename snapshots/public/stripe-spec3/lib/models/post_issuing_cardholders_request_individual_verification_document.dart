// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardholdersRequestIndividualVerificationDocument {const PostIssuingCardholdersRequestIndividualVerificationDocument({this.back, this.front, });

factory PostIssuingCardholdersRequestIndividualVerificationDocument.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersRequestIndividualVerificationDocument(
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
PostIssuingCardholdersRequestIndividualVerificationDocument copyWith({String Function()? back, String Function()? front, }) { return PostIssuingCardholdersRequestIndividualVerificationDocument(
  back: back != null ? back() : this.back,
  front: front != null ? front() : this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersRequestIndividualVerificationDocument &&
          back == other.back &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, front); } 
@override String toString() { return 'PostIssuingCardholdersRequestIndividualVerificationDocument(back: $back, front: $front)'; } 
 }
