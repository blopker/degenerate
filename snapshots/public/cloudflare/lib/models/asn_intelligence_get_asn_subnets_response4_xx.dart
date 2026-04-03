// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'intel_asn.dart';import 'intel_count.dart';import 'intel_messages2.dart';import 'intel_page.dart';import 'intel_per_page.dart';@immutable final class AsnIntelligenceGetAsnSubnetsResponse4Xx {const AsnIntelligenceGetAsnSubnetsResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, this.asn, this.count, this.ipCountTotal, this.page, this.perPage, this.subnets, });

factory AsnIntelligenceGetAsnSubnetsResponse4Xx.fromJson(Map<String, dynamic> json) { return AsnIntelligenceGetAsnSubnetsResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IntelMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
  asn: json['asn'] != null ? IntelAsn.fromJson(json['asn'] as num) : null,
  count: json['count'] != null ? IntelCount.fromJson(json['count'] as num) : null,
  ipCountTotal: json['ip_count_total'] != null ? (json['ip_count_total'] as num).toInt() : null,
  page: json['page'] != null ? IntelPage.fromJson(json['page'] as num) : null,
  perPage: json['per_page'] != null ? IntelPerPage.fromJson(json['per_page'] as num) : null,
  subnets: (json['subnets'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<IntelMessages2> errors;

final List<IntelMessages2> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful.
final bool success;

final IntelAsn? asn;

/// Total results returned based on your search parameters.
final IntelCount? count;

final int? ipCountTotal;

/// Current page within paginated list of results.
final IntelPage? page;

/// Number of results per page of results.
final IntelPerPage? perPage;

final List<String>? subnets;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (asn != null) 'asn': asn?.toJson(),
  if (count != null) 'count': count?.toJson(),
  'ip_count_total': ?ipCountTotal,
  if (page != null) 'page': page?.toJson(),
  if (perPage != null) 'per_page': perPage?.toJson(),
  'subnets': ?subnets,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AsnIntelligenceGetAsnSubnetsResponse4Xx copyWith({List<IntelMessages2>? errors, List<IntelMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, IntelAsn Function()? asn, IntelCount Function()? count, int Function()? ipCountTotal, IntelPage Function()? page, IntelPerPage Function()? perPage, List<String> Function()? subnets, }) { return AsnIntelligenceGetAsnSubnetsResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  asn: asn != null ? asn() : this.asn,
  count: count != null ? count() : this.count,
  ipCountTotal: ipCountTotal != null ? ipCountTotal() : this.ipCountTotal,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  subnets: subnets != null ? subnets() : this.subnets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AsnIntelligenceGetAsnSubnetsResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          asn == other.asn &&
          count == other.count &&
          ipCountTotal == other.ipCountTotal &&
          page == other.page &&
          perPage == other.perPage &&
          listEquals(subnets, other.subnets); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, asn, count, ipCountTotal, page, perPage, Object.hashAll(subnets ?? const [])); } 
@override String toString() { return 'AsnIntelligenceGetAsnSubnetsResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success, asn: $asn, count: $count, ipCountTotal: $ipCountTotal, page: $page, perPage: $perPage, subnets: $subnets)'; } 
 }
