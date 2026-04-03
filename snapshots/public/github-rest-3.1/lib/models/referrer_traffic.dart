// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Referrer Traffic
@immutable final class ReferrerTraffic {const ReferrerTraffic({required this.referrer, required this.count, required this.uniques, });

factory ReferrerTraffic.fromJson(Map<String, dynamic> json) { return ReferrerTraffic(
  referrer: json['referrer'] as String,
  count: (json['count'] as num).toInt(),
  uniques: (json['uniques'] as num).toInt(),
); }

final String referrer;

final int count;

final int uniques;

Map<String, dynamic> toJson() { return {
  'referrer': referrer,
  'count': count,
  'uniques': uniques,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('referrer') && json['referrer'] is String &&
      json.containsKey('count') && json['count'] is num &&
      json.containsKey('uniques') && json['uniques'] is num; } 
ReferrerTraffic copyWith({String? referrer, int? count, int? uniques, }) { return ReferrerTraffic(
  referrer: referrer ?? this.referrer,
  count: count ?? this.count,
  uniques: uniques ?? this.uniques,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReferrerTraffic &&
          referrer == other.referrer &&
          count == other.count &&
          uniques == other.uniques; } 
@override int get hashCode { return Object.hash(referrer, count, uniques); } 
@override String toString() { return 'ReferrerTraffic(referrer: $referrer, count: $count, uniques: $uniques)'; } 
 }
