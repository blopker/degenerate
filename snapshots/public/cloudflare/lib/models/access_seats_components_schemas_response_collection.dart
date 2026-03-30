// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_seats.dart';final class AccessSeatsComponentsSchemasResponseCollection {const AccessSeatsComponentsSchemasResponseCollection({this.result});

factory AccessSeatsComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessSeatsComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSeats.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessSeats>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessSeatsComponentsSchemasResponseCollection copyWith({List<AccessSeats> Function()? result}) { return AccessSeatsComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSeatsComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessSeatsComponentsSchemasResponseCollection(result: $result)'; } 
 }
