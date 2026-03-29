// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'traffic.dart';/// View Traffic
final class ViewTraffic {const ViewTraffic({required this.count, required this.uniques, required this.views, });

factory ViewTraffic.fromJson(Map<String, dynamic> json) { return ViewTraffic(
  count: (json['count'] as num).toInt(),
  uniques: (json['uniques'] as num).toInt(),
  views: (json['views'] as List<dynamic>).map((e) => Traffic.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int count;

final int uniques;

final List<Traffic> views;

Map<String, dynamic> toJson() { return {
  'count': count,
  'uniques': uniques,
  'views': views.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('uniques') && json['uniques'] is num &&
      json.containsKey('views'); } 
ViewTraffic copyWith({int? count, int? uniques, List<Traffic>? views, }) { return ViewTraffic(
  count: count ?? this.count,
  uniques: uniques ?? this.uniques,
  views: views ?? this.views,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ViewTraffic &&
          count == other.count &&
          uniques == other.uniques &&
          listEquals(views, other.views); } 
@override int get hashCode { return Object.hash(count, uniques, Object.hashAll(views)); } 
@override String toString() { return 'ViewTraffic(count: $count, uniques: $uniques, views: $views)'; } 
 }
