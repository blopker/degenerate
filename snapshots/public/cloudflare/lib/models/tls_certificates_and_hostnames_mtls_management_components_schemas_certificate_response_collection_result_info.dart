// GENERATED CODE - DO NOT MODIFY BY HAND

final class TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo {const TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo({this.count, this.page, this.perPage, this.totalCount, this.totalPages, });

factory TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo(
  count: json['count'],
  page: json['page'],
  perPage: json['per_page'],
  totalCount: json['total_count'],
  totalPages: json['total_pages'] != null ? (json['total_pages'] as num).toDouble() : null,
); }

final dynamic count;

final dynamic page;

final dynamic perPage;

final dynamic totalCount;

/// Total pages available of results
final double? totalPages;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  'page': ?page,
  'per_page': ?perPage,
  'total_count': ?totalCount,
  'total_pages': ?totalPages,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'count', 'page', 'per_page', 'total_count', 'total_pages'}.contains(key)); } 
TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo copyWith({dynamic Function()? count, dynamic Function()? page, dynamic Function()? perPage, dynamic Function()? totalCount, double Function()? totalPages, }) { return TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo(
  count: count != null ? count() : this.count,
  page: page != null ? page() : this.page,
  perPage: perPage != null ? perPage() : this.perPage,
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  totalPages: totalPages != null ? totalPages() : this.totalPages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo &&
          count == other.count &&
          page == other.page &&
          perPage == other.perPage &&
          totalCount == other.totalCount &&
          totalPages == other.totalPages; } 
@override int get hashCode { return Object.hash(count, page, perPage, totalCount, totalPages); } 
@override String toString() { return 'TlsCertificatesAndHostnamesMtlsManagementComponentsSchemasCertificateResponseCollectionResultInfo(count: $count, page: $page, perPage: $perPage, totalCount: $totalCount, totalPages: $totalPages)'; } 
 }
