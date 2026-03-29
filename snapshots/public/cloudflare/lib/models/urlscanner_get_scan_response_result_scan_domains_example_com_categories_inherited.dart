// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_domains_example_com_categories_inherited_content.dart';import 'urlscanner_get_scan_response_result_scan_domains_example_com_categories_inherited_risks.dart';final class UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited {const UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited({this.content, this.from, this.risks, });

factory UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited(
  content: (json['content'] as List<dynamic>?)?.map((e) => UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInheritedContent.fromJson(e as Map<String, dynamic>)).toList(),
  from: json['from'] as String?,
  risks: (json['risks'] as List<dynamic>?)?.map((e) => UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInheritedRisks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInheritedContent>? content;

final String? from;

final List<UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInheritedRisks>? risks;

Map<String, dynamic> toJson() { return {
  if (content != null) 'content': content?.map((e) => e.toJson()).toList(),
  'from': ?from,
  if (risks != null) 'risks': risks?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'content', 'from', 'risks'}.contains(key)); } 
UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited copyWith({List<UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInheritedContent> Function()? content, String Function()? from, List<UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInheritedRisks> Function()? risks, }) { return UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited(
  content: content != null ? content() : this.content,
  from: from != null ? from() : this.from,
  risks: risks != null ? risks() : this.risks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited &&
          listEquals(content, other.content) &&
          from == other.from &&
          listEquals(risks, other.risks); } 
@override int get hashCode { return Object.hash(Object.hashAll(content ?? const []), from, Object.hashAll(risks ?? const [])); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesInherited(content: $content, from: $from, risks: $risks)'; } 
 }
