// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudforce_one_requests_time.dart';/// Sort order (asc or desc).
final class CloudforceOneRequestsRequestMessageListSortOrder {const CloudforceOneRequestsRequestMessageListSortOrder._(this.value);

factory CloudforceOneRequestsRequestMessageListSortOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => CloudforceOneRequestsRequestMessageListSortOrder._(json),
}; }

static const CloudforceOneRequestsRequestMessageListSortOrder asc = CloudforceOneRequestsRequestMessageListSortOrder._('asc');

static const CloudforceOneRequestsRequestMessageListSortOrder desc = CloudforceOneRequestsRequestMessageListSortOrder._('desc');

static const List<CloudforceOneRequestsRequestMessageListSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudforceOneRequestsRequestMessageListSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudforceOneRequestsRequestMessageListSortOrder($value)'; } 
 }
final class CloudforceOneRequestsRequestMessageList {const CloudforceOneRequestsRequestMessageList({this.after, this.before, required this.page, required this.perPage, this.sortBy, this.sortOrder, });

factory CloudforceOneRequestsRequestMessageList.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestMessageList(
  after: json['after'] != null ? CloudforceOneRequestsTime.fromJson(json['after'] as String) : null,
  before: json['before'] != null ? CloudforceOneRequestsTime.fromJson(json['before'] as String) : null,
  page: (json['page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  sortBy: json['sort_by'] as String?,
  sortOrder: json['sort_order'] != null ? CloudforceOneRequestsRequestMessageListSortOrder.fromJson(json['sort_order'] as String) : null,
); }

/// Retrieve mes  ges created after this time.
final CloudforceOneRequestsTime? after;

/// Retrieve messages created before this time.
final CloudforceOneRequestsTime? before;

/// Page number of results.
final int page;

/// Number of results per page.
final int perPage;

/// Field to sort results by.
final String? sortBy;

/// Sort order (asc or desc).
final CloudforceOneRequestsRequestMessageListSortOrder? sortOrder;

Map<String, dynamic> toJson() { return {
  if (after != null) 'after': after?.toJson(),
  if (before != null) 'before': before?.toJson(),
  'page': page,
  'per_page': perPage,
  'sort_by': ?sortBy,
  if (sortOrder != null) 'sort_order': sortOrder?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('page') && json['page'] is num &&
      json.containsKey('per_page') && json['per_page'] is num; } 
CloudforceOneRequestsRequestMessageList copyWith({CloudforceOneRequestsTime Function()? after, CloudforceOneRequestsTime Function()? before, int? page, int? perPage, String Function()? sortBy, CloudforceOneRequestsRequestMessageListSortOrder Function()? sortOrder, }) { return CloudforceOneRequestsRequestMessageList(
  after: after != null ? after() : this.after,
  before: before != null ? before() : this.before,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  sortBy: sortBy != null ? sortBy() : this.sortBy,
  sortOrder: sortOrder != null ? sortOrder() : this.sortOrder,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestMessageList &&
          after == other.after &&
          before == other.before &&
          page == other.page &&
          perPage == other.perPage &&
          sortBy == other.sortBy &&
          sortOrder == other.sortOrder; } 
@override int get hashCode { return Object.hash(after, before, page, perPage, sortBy, sortOrder); } 
@override String toString() { return 'CloudforceOneRequestsRequestMessageList(after: $after, before: $before, page: $page, perPage: $perPage, sortBy: $sortBy, sortOrder: $sortOrder)'; } 
 }
