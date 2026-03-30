// GENERATED CODE - DO NOT MODIFY BY HAND

final class StatusUpdateEditedChangesTargetDate {const StatusUpdateEditedChangesTargetDate({this.from, this.to, });

factory StatusUpdateEditedChangesTargetDate.fromJson(Map<String, dynamic> json) { return StatusUpdateEditedChangesTargetDate(
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
StatusUpdateEditedChangesTargetDate copyWith({String? Function()? from, String? Function()? to, }) { return StatusUpdateEditedChangesTargetDate(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StatusUpdateEditedChangesTargetDate &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'StatusUpdateEditedChangesTargetDate(from: $from, to: $to)'; } 
 }
