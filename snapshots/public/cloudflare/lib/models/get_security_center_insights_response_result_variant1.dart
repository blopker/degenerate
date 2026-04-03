// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'security_center_count.dart';import 'security_center_issue.dart';import 'security_center_page.dart';import 'security_center_per_page.dart';@immutable final class GetSecurityCenterInsightsResponseResultVariant1 {const GetSecurityCenterInsightsResponseResultVariant1({this.count, this.issues, this.page, this.perPage, });

factory GetSecurityCenterInsightsResponseResultVariant1.fromJson(Map<String, dynamic> json) { return GetSecurityCenterInsightsResponseResultVariant1(
  count: json['count'] != null ? SecurityCenterCount.fromJson(json['count'] as num) : null,
  issues: (json['issues'] as List<dynamic>?)?.map((e) => SecurityCenterIssue.fromJson(e as Map<String, dynamic>)).toList(),
  page: json['page'] != null ? SecurityCenterPage.fromJson(json['page'] as num) : null,
  perPage: json['per_page'] != null ? SecurityCenterPerPage.fromJson(json['per_page'] as num) : null,
); }

/// Indicates the total number of results.
final SecurityCenterCount? count;

final List<SecurityCenterIssue>? issues;

/// Specifies the current page within paginated list of results.
final SecurityCenterPage? page;

/// Sets the number of results per page of results.
final SecurityCenterPerPage? perPage;

Map<String, dynamic> toJson() { return {
  if (count != null) 'count': count?.toJson(),
  if (issues != null) 'issues': issues?.map((e) => e.toJson()).toList(),
  if (page != null) 'page': page?.toJson(),
  if (perPage != null) 'per_page': perPage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'issues', 'page', 'per_page'}.contains(key)); } 
GetSecurityCenterInsightsResponseResultVariant1 copyWith({SecurityCenterCount Function()? count, List<SecurityCenterIssue> Function()? issues, SecurityCenterPage Function()? page, SecurityCenterPerPage Function()? perPage, }) { return GetSecurityCenterInsightsResponseResultVariant1(
  count: count != null ? count() : this.count,
  issues: issues != null ? issues() : this.issues,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSecurityCenterInsightsResponseResultVariant1 &&
          count == other.count &&
          listEquals(issues, other.issues) &&
          page == other.page &&
          perPage == other.perPage; } 
@override int get hashCode { return Object.hash(count, Object.hashAll(issues ?? const []), page, perPage); } 
@override String toString() { return 'GetSecurityCenterInsightsResponseResultVariant1(count: $count, issues: $issues, page: $page, perPage: $perPage)'; } 
 }
