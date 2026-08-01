// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuePullRequest {const IssuePullRequest({required this.diffUrl, required this.htmlUrl, required this.patchUrl, required this.url, this.mergedAt = const Omittable.absent(), });

factory IssuePullRequest.fromJson(Map<String, dynamic> json) { return IssuePullRequest(
  mergedAt: json.containsKey('merged_at') ? Omittable(json['merged_at'] != null ? DateTime.parse(json['merged_at'] as String) : null) : const Omittable.absent(),
  diffUrl: json['diff_url'] != null ? Uri.parse(json['diff_url'] as String) : null,
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  patchUrl: json['patch_url'] != null ? Uri.parse(json['patch_url'] as String) : null,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

final Omittable<DateTime?> mergedAt;

final Uri? diffUrl;

final Uri? htmlUrl;

final Uri? patchUrl;

final Uri? url;

Map<String, dynamic> toJson() { return {
  if (mergedAt.isPresent) 'merged_at': mergedAt.value?.toIso8601String(),
  'diff_url': diffUrl?.toString(),
  'html_url': htmlUrl?.toString(),
  'patch_url': patchUrl?.toString(),
  'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('diff_url') && json['diff_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('patch_url') && json['patch_url'] is String &&
      json.containsKey('url') && json['url'] is String; } 
IssuePullRequest copyWith({Omittable<DateTime?>? mergedAt, Uri? Function()? diffUrl, Uri? Function()? htmlUrl, Uri? Function()? patchUrl, Uri? Function()? url, }) { return IssuePullRequest(
  mergedAt: mergedAt ?? this.mergedAt,
  diffUrl: diffUrl != null ? diffUrl() : this.diffUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  patchUrl: patchUrl != null ? patchUrl() : this.patchUrl,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuePullRequest &&
          mergedAt == other.mergedAt &&
          diffUrl == other.diffUrl &&
          htmlUrl == other.htmlUrl &&
          patchUrl == other.patchUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(mergedAt, diffUrl, htmlUrl, patchUrl, url); } 
@override String toString() { return 'IssuePullRequest(mergedAt: $mergedAt, diffUrl: $diffUrl, htmlUrl: $htmlUrl, patchUrl: $patchUrl, url: $url)'; } 
 }
