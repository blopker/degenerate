// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_domains_example_com_categories.dart';import 'urlscanner_get_scan_response_result_scan_domains_example_com_dns.dart';import 'urlscanner_get_scan_response_result_scan_domains_example_com_rank.dart';final class UrlscannerGetScanResponseResultScanDomainsExampleCom {const UrlscannerGetScanResponseResultScanDomainsExampleCom({required this.categories, required this.dns, required this.name, required this.rank, required this.type, });

factory UrlscannerGetScanResponseResultScanDomainsExampleCom.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanDomainsExampleCom(
  categories: UrlscannerGetScanResponseResultScanDomainsExampleComCategories.fromJson(json['categories'] as Map<String, dynamic>),
  dns: (json['dns'] as List<dynamic>).map((e) => UrlscannerGetScanResponseResultScanDomainsExampleComDns.fromJson(e as Map<String, dynamic>)).toList(),
  name: json['name'] as String,
  rank: UrlscannerGetScanResponseResultScanDomainsExampleComRank.fromJson(json['rank'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

final UrlscannerGetScanResponseResultScanDomainsExampleComCategories categories;

final List<UrlscannerGetScanResponseResultScanDomainsExampleComDns> dns;

final String name;

final UrlscannerGetScanResponseResultScanDomainsExampleComRank rank;

final String type;

Map<String, dynamic> toJson() { return {
  'categories': categories.toJson(),
  'dns': dns.map((e) => e.toJson()).toList(),
  'name': name,
  'rank': rank.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('categories') &&
      json.containsKey('dns') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('rank') &&
      json.containsKey('type') && json['type'] is String; } 
UrlscannerGetScanResponseResultScanDomainsExampleCom copyWith({UrlscannerGetScanResponseResultScanDomainsExampleComCategories? categories, List<UrlscannerGetScanResponseResultScanDomainsExampleComDns>? dns, String? name, UrlscannerGetScanResponseResultScanDomainsExampleComRank? rank, String? type, }) { return UrlscannerGetScanResponseResultScanDomainsExampleCom(
  categories: categories ?? this.categories,
  dns: dns ?? this.dns,
  name: name ?? this.name,
  rank: rank ?? this.rank,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanDomainsExampleCom &&
          categories == other.categories &&
          listEquals(dns, other.dns) &&
          name == other.name &&
          rank == other.rank &&
          type == other.type; } 
@override int get hashCode { return Object.hash(categories, Object.hashAll(dns), name, rank, type); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanDomainsExampleCom(categories: $categories, dns: $dns, name: $name, rank: $rank, type: $type)'; } 
 }
