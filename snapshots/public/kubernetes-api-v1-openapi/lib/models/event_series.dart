// GENERATED CODE - DO NOT MODIFY BY HAND

import 'micro_time.dart';/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time.
final class EventSeries {const EventSeries({this.count, this.lastObservedTime, });

factory EventSeries.fromJson(Map<String, dynamic> json) { return EventSeries(
  count: json['count'] != null ? (json['count'] as num).toInt() : null,
  lastObservedTime: json['lastObservedTime'] != null ? MicroTime.fromJson(json['lastObservedTime'] as String) : null,
); }

/// Number of occurrences in this series up to the last heartbeat time
final int? count;

/// Time of the last occurrence observed
final MicroTime? lastObservedTime;

Map<String, dynamic> toJson() { return {
  'count': ?count,
  if (lastObservedTime != null) 'lastObservedTime': lastObservedTime?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
EventSeries copyWith({int Function()? count, MicroTime Function()? lastObservedTime, }) { return EventSeries(
  count: count != null ? count() : this.count,
  lastObservedTime: lastObservedTime != null ? lastObservedTime() : this.lastObservedTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EventSeries &&
          count == other.count &&
          lastObservedTime == other.lastObservedTime; } 
@override int get hashCode { return Object.hash(count, lastObservedTime); } 
@override String toString() { return 'EventSeries(count: $count, lastObservedTime: $lastObservedTime)'; } 
 }
