// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GollumEventPages {const GollumEventPages({this.pageName = const Omittable.absent(), this.title = const Omittable.absent(), this.summary = const Omittable.absent(), this.action, this.sha, this.htmlUrl, });

factory GollumEventPages.fromJson(Map<String, dynamic> json) { return GollumEventPages(
  pageName: json.containsKey('page_name') ? Omittable(json['page_name'] as String?) : const Omittable.absent(),
  title: json.containsKey('title') ? Omittable(json['title'] as String?) : const Omittable.absent(),
  summary: json.containsKey('summary') ? Omittable(json['summary'] as String?) : const Omittable.absent(),
  action: json['action'] as String?,
  sha: json['sha'] as String?,
  htmlUrl: json['html_url'] as String?,
); }

final Omittable<String?> pageName;

final Omittable<String?> title;

final Omittable<String?> summary;

final String? action;

final String? sha;

final String? htmlUrl;

Map<String, dynamic> toJson() { return {
  if (pageName.isPresent) 'page_name': pageName.value,
  if (title.isPresent) 'title': title.value,
  if (summary.isPresent) 'summary': summary.value,
  'action': ?action,
  'sha': ?sha,
  'html_url': ?htmlUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'page_name', 'title', 'summary', 'action', 'sha', 'html_url'}.contains(key)); } 
GollumEventPages copyWith({Omittable<String?>? pageName, Omittable<String?>? title, Omittable<String?>? summary, String? Function()? action, String? Function()? sha, String? Function()? htmlUrl, }) { return GollumEventPages(
  pageName: pageName ?? this.pageName,
  title: title ?? this.title,
  summary: summary ?? this.summary,
  action: action != null ? action() : this.action,
  sha: sha != null ? sha() : this.sha,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GollumEventPages &&
          pageName == other.pageName &&
          title == other.title &&
          summary == other.summary &&
          action == other.action &&
          sha == other.sha &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(pageName, title, summary, action, sha, htmlUrl); } 
@override String toString() { return 'GollumEventPages(pageName: $pageName, title: $title, summary: $summary, action: $action, sha: $sha, htmlUrl: $htmlUrl)'; } 
 }
