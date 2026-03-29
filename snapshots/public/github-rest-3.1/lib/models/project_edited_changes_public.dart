// GENERATED CODE - DO NOT MODIFY BY HAND

final class ProjectEditedChangesPublic {const ProjectEditedChangesPublic({this.from, this.to, });

factory ProjectEditedChangesPublic.fromJson(Map<String, dynamic> json) { return ProjectEditedChangesPublic(
  from: json['from'] as bool?,
  to: json['to'] as bool?,
); }

final bool? from;

final bool? to;

Map<String, dynamic> toJson() { return {
  'from': ?from,
  'to': ?to,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from', 'to'}.contains(key)); } 
ProjectEditedChangesPublic copyWith({bool Function()? from, bool Function()? to, }) { return ProjectEditedChangesPublic(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectEditedChangesPublic &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'ProjectEditedChangesPublic(from: $from, to: $to)'; } 
 }
