// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'volume_file.dart';/// Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
@immutable final class Projection {const Projection({this.items});

factory Projection.fromJson(Map<String, dynamic> json) { return Projection(
  items: (json['items'] as List<dynamic>?)?.map((e) => VolumeFile.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Items is a list of DownwardAPIVolume file
final List<VolumeFile>? items;

Map<String, dynamic> toJson() { return {
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'items'}.contains(key)); } 
Projection copyWith({List<VolumeFile> Function()? items}) { return Projection(
  items: items != null ? items() : this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Projection &&
          listEquals(items, other.items); } 
@override int get hashCode { return Object.hashAll(items ?? const []).hashCode; } 
@override String toString() { return 'Projection(items: $items)'; } 
 }
