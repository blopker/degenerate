// GENERATED CODE - DO NOT MODIFY BY HAND

/// The payload used to update the project.
final class AuditLogProjectUpdatedChangesRequested {const AuditLogProjectUpdatedChangesRequested({this.title});

factory AuditLogProjectUpdatedChangesRequested.fromJson(Map<String, dynamic> json) { return AuditLogProjectUpdatedChangesRequested(
  title: json['title'] as String?,
); }

/// The title of the project as seen on the dashboard.
final String? title;

Map<String, dynamic> toJson() { return {
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogProjectUpdatedChangesRequested copyWith({String Function()? title}) { return AuditLogProjectUpdatedChangesRequested(
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogProjectUpdatedChangesRequested &&
          title == other.title; } 
@override int get hashCode { return title.hashCode; } 
@override String toString() { return 'AuditLogProjectUpdatedChangesRequested(title: $title)'; } 
 }
