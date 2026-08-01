// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_namespace_details.dart';/// Contains the list of namespaces with optional pagination.
@immutable final class R2DataCatalogNamespaceListResponse {const R2DataCatalogNamespaceListResponse({required this.namespaces, this.details = const Omittable.absent(), this.namespaceUuids = const Omittable.absent(), this.nextPageToken = const Omittable.absent(), });

factory R2DataCatalogNamespaceListResponse.fromJson(Map<String, dynamic> json) { return R2DataCatalogNamespaceListResponse(
  details: json.containsKey('details') ? Omittable((json['details'] as List<dynamic>?)?.map((e) => R2DataCatalogNamespaceDetails.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  namespaceUuids: json.containsKey('namespace_uuids') ? Omittable((json['namespace_uuids'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  namespaces: (json['namespaces'] as List<dynamic>).map((e) => (e as List<dynamic>).map((e) => e as String).toList()).toList(),
  nextPageToken: json.containsKey('next_page_token') ? Omittable(json['next_page_token'] as String?) : const Omittable.absent(),
); }

/// Contains detailed metadata for each namespace when return_details is true.
/// Each object includes the namespace, UUID, and timestamps.
/// 
final Omittable<List<R2DataCatalogNamespaceDetails>?> details;

/// Contains UUIDs for each namespace when return_uuids is true.
/// The order corresponds to the namespaces array.
/// 
final Omittable<List<String>?> namespaceUuids;

/// Lists namespaces in the catalog.
final List<List<String>> namespaces;

/// Use this opaque token to fetch the next page of results.
/// A null or absent value indicates the last page.
/// 
final Omittable<String?> nextPageToken;

Map<String, dynamic> toJson() { return {
  if (details.isPresent) 'details': details.value?.map((e) => e.toJson()).toList(),
  if (namespaceUuids.isPresent) 'namespace_uuids': namespaceUuids.value,
  'namespaces': namespaces.map((e) => e).toList(),
  if (nextPageToken.isPresent) 'next_page_token': nextPageToken.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('namespaces'); } 
R2DataCatalogNamespaceListResponse copyWith({Omittable<List<R2DataCatalogNamespaceDetails>?>? details, Omittable<List<String>?>? namespaceUuids, List<List<String>>? namespaces, Omittable<String?>? nextPageToken, }) { return R2DataCatalogNamespaceListResponse(
  details: details ?? this.details,
  namespaceUuids: namespaceUuids ?? this.namespaceUuids,
  namespaces: namespaces ?? this.namespaces,
  nextPageToken: nextPageToken ?? this.nextPageToken,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogNamespaceListResponse &&
          details.isPresent == other.details.isPresent &&
          listEquals(details.value, other.details.value) &&
          namespaceUuids.isPresent == other.namespaceUuids.isPresent &&
          listEquals(namespaceUuids.value, other.namespaceUuids.value) &&
          listEquals(namespaces, other.namespaces) &&
          nextPageToken == other.nextPageToken; } 
@override int get hashCode { return Object.hash(Object.hashAll(details.value ?? const []), Object.hashAll(namespaceUuids.value ?? const []), Object.hashAll(namespaces), nextPageToken); } 
@override String toString() { return 'R2DataCatalogNamespaceListResponse(details: $details, namespaceUuids: $namespaceUuids, namespaces: $namespaces, nextPageToken: $nextPageToken)'; } 
 }
