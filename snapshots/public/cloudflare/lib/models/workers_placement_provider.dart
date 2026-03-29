// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_placement_region.dart';final class WorkersPlacementProvider {const WorkersPlacementProvider({required this.id, required this.regions, });

factory WorkersPlacementProvider.fromJson(Map<String, dynamic> json) { return WorkersPlacementProvider(
  id: json['id'] as String,
  regions: (json['regions'] as List<dynamic>).map((e) => WorkersPlacementRegion.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The cloud provider identifier.
final String id;

/// List of regions available for this provider.
final List<WorkersPlacementRegion> regions;

Map<String, dynamic> toJson() { return {
  'id': id,
  'regions': regions.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('regions'); } 
WorkersPlacementProvider copyWith({String? id, List<WorkersPlacementRegion>? regions, }) { return WorkersPlacementProvider(
  id: id ?? this.id,
  regions: regions ?? this.regions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementProvider &&
          id == other.id &&
          listEquals(regions, other.regions); } 
@override int get hashCode { return Object.hash(id, Object.hashAll(regions)); } 
@override String toString() { return 'WorkersPlacementProvider(id: $id, regions: $regions)'; } 
 }
