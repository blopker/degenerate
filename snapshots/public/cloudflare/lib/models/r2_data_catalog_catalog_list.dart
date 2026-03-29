// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_catalog.dart';/// Contains the list of catalogs.
final class R2DataCatalogCatalogList {const R2DataCatalogCatalogList({required this.warehouses});

factory R2DataCatalogCatalogList.fromJson(Map<String, dynamic> json) { return R2DataCatalogCatalogList(
  warehouses: (json['warehouses'] as List<dynamic>).map((e) => R2DataCatalogCatalog.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Lists catalogs in the account.
final List<R2DataCatalogCatalog> warehouses;

Map<String, dynamic> toJson() { return {
  'warehouses': warehouses.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('warehouses'); } 
R2DataCatalogCatalogList copyWith({List<R2DataCatalogCatalog>? warehouses}) { return R2DataCatalogCatalogList(
  warehouses: warehouses ?? this.warehouses,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogCatalogList &&
          listEquals(warehouses, other.warehouses); } 
@override int get hashCode { return Object.hashAll(warehouses).hashCode; } 
@override String toString() { return 'R2DataCatalogCatalogList(warehouses: $warehouses)'; } 
 }
