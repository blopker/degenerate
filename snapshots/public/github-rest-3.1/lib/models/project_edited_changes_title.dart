// GENERATED CODE - DO NOT MODIFY BY HAND

final class ProjectEditedChangesTitle {const ProjectEditedChangesTitle({this.from, this.to, });

factory ProjectEditedChangesTitle.fromJson(Map<String, dynamic> json) { return ProjectEditedChangesTitle(
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
ProjectEditedChangesTitle copyWith({String Function()? from, String Function()? to, }) { return ProjectEditedChangesTitle(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectEditedChangesTitle &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'ProjectEditedChangesTitle(from: $from, to: $to)'; } 
 }
