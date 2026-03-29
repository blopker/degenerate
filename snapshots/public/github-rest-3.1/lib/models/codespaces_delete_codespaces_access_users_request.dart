// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CodespacesDeleteCodespacesAccessUsersRequest {const CodespacesDeleteCodespacesAccessUsersRequest({required this.selectedUsernames});

factory CodespacesDeleteCodespacesAccessUsersRequest.fromJson(Map<String, dynamic> json) { return CodespacesDeleteCodespacesAccessUsersRequest(
  selectedUsernames: (json['selected_usernames'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The usernames of the organization members whose codespaces should not be billed to the organization.
final List<String> selectedUsernames;

Map<String, dynamic> toJson() { return {
  'selected_usernames': selectedUsernames,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selected_usernames'); } 
CodespacesDeleteCodespacesAccessUsersRequest copyWith({List<String>? selectedUsernames}) { return CodespacesDeleteCodespacesAccessUsersRequest(
  selectedUsernames: selectedUsernames ?? this.selectedUsernames,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesDeleteCodespacesAccessUsersRequest &&
          listEquals(selectedUsernames, other.selectedUsernames); } 
@override int get hashCode { return Object.hashAll(selectedUsernames).hashCode; } 
@override String toString() { return 'CodespacesDeleteCodespacesAccessUsersRequest(selectedUsernames: $selectedUsernames)'; } 
 }
