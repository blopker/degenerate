// GENERATED CODE - DO NOT MODIFY BY HAND

final class ProjectEditedChangesDescription {const ProjectEditedChangesDescription({this.from, this.to, });

factory ProjectEditedChangesDescription.fromJson(Map<String, dynamic> json) { return ProjectEditedChangesDescription(
  from: json['from'] as String?,
  to: json['to'] as String?,
); }

final String? from;

final String? to;

Map<String, dynamic> toJson() { return {
  'from': ?from,
  'to': ?to,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ProjectEditedChangesDescription copyWith({String? Function()? from, String? Function()? to, }) { return ProjectEditedChangesDescription(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProjectEditedChangesDescription &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'ProjectEditedChangesDescription(from: $from, to: $to)'; } 
 }
