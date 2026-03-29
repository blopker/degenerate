// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudforce_one_requests_request_status.dart';import 'cloudforce_one_requests_request_type.dart';import 'cloudforce_one_requests_time.dart';/// Sort order (asc or desc).
final class CloudforceOneRequestsRequestListSortOrder {const CloudforceOneRequestsRequestListSortOrder._(this.value);

factory CloudforceOneRequestsRequestListSortOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => CloudforceOneRequestsRequestListSortOrder._(json),
}; }

static const CloudforceOneRequestsRequestListSortOrder asc = CloudforceOneRequestsRequestListSortOrder._('asc');

static const CloudforceOneRequestsRequestListSortOrder desc = CloudforceOneRequestsRequestListSortOrder._('desc');

static const List<CloudforceOneRequestsRequestListSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudforceOneRequestsRequestListSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudforceOneRequestsRequestListSortOrder($value)'; } 
 }
final class CloudforceOneRequestsRequestList {const CloudforceOneRequestsRequestList({this.completedAfter, this.completedBefore, this.createdAfter, this.createdBefore, required this.page, required this.perPage, this.requestType, this.sortBy, this.sortOrder, this.status, });

factory CloudforceOneRequestsRequestList.fromJson(Map<String, dynamic> json) { return CloudforceOneRequestsRequestList(
  completedAfter: json['completed_after'] != null ? CloudforceOneRequestsTime.fromJson(json['completed_after'] as String) : null,
  completedBefore: json['completed_before'] != null ? CloudforceOneRequestsTime.fromJson(json['completed_before'] as String) : null,
  createdAfter: json['created_after'] != null ? CloudforceOneRequestsTime.fromJson(json['created_after'] as String) : null,
  createdBefore: json['created_before'] != null ? CloudforceOneRequestsTime.fromJson(json['created_before'] as String) : null,
  page: (json['page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  requestType: json['request_type'] != null ? CloudforceOneRequestsRequestType.fromJson(json['request_type'] as String) : null,
  sortBy: json['sort_by'] as String?,
  sortOrder: json['sort_order'] != null ? CloudforceOneRequestsRequestListSortOrder.fromJson(json['sort_order'] as String) : null,
  status: json['status'] != null ? CloudforceOneRequestsRequestStatus.fromJson(json['status'] as String) : null,
); }

/// Retrieve requests completed after this time.
final CloudforceOneRequestsTime? completedAfter;

/// Retrieve requests completed before this time.
final CloudforceOneRequestsTime? completedBefore;

/// Retrieve requests created after this time.
final CloudforceOneRequestsTime? createdAfter;

/// Retrieve requests created before this time.
final CloudforceOneRequestsTime? createdBefore;

/// Page number of results.
final int page;

/// Number of results per page.
final int perPage;

final CloudforceOneRequestsRequestType? requestType;

/// Field to sort results by.
final String? sortBy;

/// Sort order (asc or desc).
final CloudforceOneRequestsRequestListSortOrder? sortOrder;

final CloudforceOneRequestsRequestStatus? status;

Map<String, dynamic> toJson() { return {
  if (completedAfter != null) 'completed_after': completedAfter?.toJson(),
  if (completedBefore != null) 'completed_before': completedBefore?.toJson(),
  if (createdAfter != null) 'created_after': createdAfter?.toJson(),
  if (createdBefore != null) 'created_before': createdBefore?.toJson(),
  'page': page,
  'per_page': perPage,
  if (requestType != null) 'request_type': requestType?.toJson(),
  'sort_by': ?sortBy,
  if (sortOrder != null) 'sort_order': sortOrder?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('page') && json['page'] is num &&
      json.containsKey('per_page') && json['per_page'] is num; } 
CloudforceOneRequestsRequestList copyWith({CloudforceOneRequestsTime Function()? completedAfter, CloudforceOneRequestsTime Function()? completedBefore, CloudforceOneRequestsTime Function()? createdAfter, CloudforceOneRequestsTime Function()? createdBefore, int? page, int? perPage, CloudforceOneRequestsRequestType Function()? requestType, String Function()? sortBy, CloudforceOneRequestsRequestListSortOrder Function()? sortOrder, CloudforceOneRequestsRequestStatus Function()? status, }) { return CloudforceOneRequestsRequestList(
  completedAfter: completedAfter != null ? completedAfter() : this.completedAfter,
  completedBefore: completedBefore != null ? completedBefore() : this.completedBefore,
  createdAfter: createdAfter != null ? createdAfter() : this.createdAfter,
  createdBefore: createdBefore != null ? createdBefore() : this.createdBefore,
  page: page ?? this.page,
  perPage: perPage ?? this.perPage,
  requestType: requestType != null ? requestType() : this.requestType,
  sortBy: sortBy != null ? sortBy() : this.sortBy,
  sortOrder: sortOrder != null ? sortOrder() : this.sortOrder,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudforceOneRequestsRequestList &&
          completedAfter == other.completedAfter &&
          completedBefore == other.completedBefore &&
          createdAfter == other.createdAfter &&
          createdBefore == other.createdBefore &&
          page == other.page &&
          perPage == other.perPage &&
          requestType == other.requestType &&
          sortBy == other.sortBy &&
          sortOrder == other.sortOrder &&
          status == other.status; } 
@override int get hashCode { return Object.hash(completedAfter, completedBefore, createdAfter, createdBefore, page, perPage, requestType, sortBy, sortOrder, status); } 
@override String toString() { return 'CloudforceOneRequestsRequestList(completedAfter: $completedAfter, completedBefore: $completedBefore, createdAfter: $createdAfter, createdBefore: $createdBefore, page: $page, perPage: $perPage, requestType: $requestType, sortBy: $sortBy, sortOrder: $sortOrder, status: $status)'; } 
 }
