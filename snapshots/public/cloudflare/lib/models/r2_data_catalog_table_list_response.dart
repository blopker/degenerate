// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_table_details.dart';import 'r2_data_catalog_table_identifier.dart';/// Contains the list of tables with optional pagination.
@immutable final class R2DataCatalogTableListResponse {const R2DataCatalogTableListResponse({required this.identifiers, this.details = const Omittable.absent(), this.nextPageToken = const Omittable.absent(), this.tableUuids = const Omittable.absent(), });

factory R2DataCatalogTableListResponse.fromJson(Map<String, dynamic> json) { return R2DataCatalogTableListResponse(
  details: json.containsKey('details') ? Omittable((json['details'] as List<dynamic>?)?.map((e) => R2DataCatalogTableDetails.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  identifiers: (json['identifiers'] as List<dynamic>).map((e) => R2DataCatalogTableIdentifier.fromJson(e as Map<String, dynamic>)).toList(),
  nextPageToken: json.containsKey('next_page_token') ? Omittable(json['next_page_token'] as String?) : const Omittable.absent(),
  tableUuids: json.containsKey('table_uuids') ? Omittable((json['table_uuids'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// Contains detailed metadata for each table when return_details is true.
/// Each object includes identifier, UUID, timestamps, and locations.
/// 
final Omittable<List<R2DataCatalogTableDetails>?> details;

/// Lists tables in the namespace.
final List<R2DataCatalogTableIdentifier> identifiers;

/// Use this opaque token to fetch the next page of results.
/// A null or absent value indicates the last page.
/// 
final Omittable<String?> nextPageToken;

/// Contains UUIDs for each table when return_uuids is true.
/// The order corresponds to the identifiers array.
/// 
final Omittable<List<String>?> tableUuids;

Map<String, dynamic> toJson() { return {
  if (details.isPresent) 'details': details.value?.map((e) => e.toJson()).toList(),
  'identifiers': identifiers.map((e) => e.toJson()).toList(),
  if (nextPageToken.isPresent) 'next_page_token': nextPageToken.value,
  if (tableUuids.isPresent) 'table_uuids': tableUuids.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('identifiers'); } 
R2DataCatalogTableListResponse copyWith({Omittable<List<R2DataCatalogTableDetails>?>? details, List<R2DataCatalogTableIdentifier>? identifiers, Omittable<String?>? nextPageToken, Omittable<List<String>?>? tableUuids, }) { return R2DataCatalogTableListResponse(
  details: details ?? this.details,
  identifiers: identifiers ?? this.identifiers,
  nextPageToken: nextPageToken ?? this.nextPageToken,
  tableUuids: tableUuids ?? this.tableUuids,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogTableListResponse &&
          details.isPresent == other.details.isPresent &&
          listEquals(details.value, other.details.value) &&
          listEquals(identifiers, other.identifiers) &&
          nextPageToken == other.nextPageToken &&
          tableUuids.isPresent == other.tableUuids.isPresent &&
          listEquals(tableUuids.value, other.tableUuids.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(details.value ?? const []), Object.hashAll(identifiers), nextPageToken, Object.hashAll(tableUuids.value ?? const [])); } 
@override String toString() { return 'R2DataCatalogTableListResponse(details: $details, identifiers: $identifiers, nextPageToken: $nextPageToken, tableUuids: $tableUuids)'; } 
 }
