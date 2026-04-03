// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StatusUpdateEditedChangesBody {const StatusUpdateEditedChangesBody({this.from, this.to, });

factory StatusUpdateEditedChangesBody.fromJson(Map<String, dynamic> json) { return StatusUpdateEditedChangesBody(
  from: json['from'] as String?,
  to: json['to'] as String?,
); }

final String? from;

final String? to;

Map<String, dynamic> toJson() { return {
  'from': ?from,
  'to': ?to,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from', 'to'}.contains(key)); } 
StatusUpdateEditedChangesBody copyWith({String? Function()? from, String? Function()? to, }) { return StatusUpdateEditedChangesBody(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StatusUpdateEditedChangesBody &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'StatusUpdateEditedChangesBody(from: $from, to: $to)'; } 
 }
