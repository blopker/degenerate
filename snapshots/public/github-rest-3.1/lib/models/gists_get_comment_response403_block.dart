// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GistsGetCommentResponse403Block {const GistsGetCommentResponse403Block({this.reason, this.createdAt, this.htmlUrl, });

factory GistsGetCommentResponse403Block.fromJson(Map<String, dynamic> json) { return GistsGetCommentResponse403Block(
  reason: json['reason'] as String?,
  createdAt: json['created_at'] as String?,
  htmlUrl: json['html_url'] as String?,
); }

final String? reason;

final String? createdAt;

final String? htmlUrl;

Map<String, dynamic> toJson() { return {
  'reason': ?reason,
  'created_at': ?createdAt,
  'html_url': ?htmlUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reason', 'created_at', 'html_url'}.contains(key)); } 
GistsGetCommentResponse403Block copyWith({String Function()? reason, String Function()? createdAt, String? Function()? htmlUrl, }) { return GistsGetCommentResponse403Block(
  reason: reason != null ? reason() : this.reason,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsGetCommentResponse403Block &&
          reason == other.reason &&
          createdAt == other.createdAt &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(reason, createdAt, htmlUrl); } 
@override String toString() { return 'GistsGetCommentResponse403Block(reason: $reason, createdAt: $createdAt, htmlUrl: $htmlUrl)'; } 
 }
