// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GistsGetResponse403Block {const GistsGetResponse403Block({this.reason, this.createdAt, this.htmlUrl = const Omittable.absent(), });

factory GistsGetResponse403Block.fromJson(Map<String, dynamic> json) { return GistsGetResponse403Block(
  reason: json['reason'] as String?,
  createdAt: json['created_at'] as String?,
  htmlUrl: json.containsKey('html_url') ? Omittable(json['html_url'] as String?) : const Omittable.absent(),
); }

final String? reason;

final String? createdAt;

final Omittable<String?> htmlUrl;

Map<String, dynamic> toJson() { return {
  'reason': ?reason,
  'created_at': ?createdAt,
  if (htmlUrl.isPresent) 'html_url': htmlUrl.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reason', 'created_at', 'html_url'}.contains(key)); } 
GistsGetResponse403Block copyWith({String? Function()? reason, String? Function()? createdAt, Omittable<String?>? htmlUrl, }) { return GistsGetResponse403Block(
  reason: reason != null ? reason() : this.reason,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  htmlUrl: htmlUrl ?? this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsGetResponse403Block &&
          reason == other.reason &&
          createdAt == other.createdAt &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(reason, createdAt, htmlUrl); } 
@override String toString() { return 'GistsGetResponse403Block(reason: $reason, createdAt: $createdAt, htmlUrl: $htmlUrl)'; } 
 }
