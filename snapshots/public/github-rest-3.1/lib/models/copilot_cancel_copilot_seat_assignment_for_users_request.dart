// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class CopilotCancelCopilotSeatAssignmentForUsersRequest {const CopilotCancelCopilotSeatAssignmentForUsersRequest({required this.selectedUsernames});

factory CopilotCancelCopilotSeatAssignmentForUsersRequest.fromJson(Map<String, dynamic> json) { return CopilotCancelCopilotSeatAssignmentForUsersRequest(
  selectedUsernames: (json['selected_usernames'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The usernames of the organization members for which to revoke access to GitHub Copilot.
final List<String> selectedUsernames;

Map<String, dynamic> toJson() { return {
  'selected_usernames': selectedUsernames,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selected_usernames'); } 
CopilotCancelCopilotSeatAssignmentForUsersRequest copyWith({List<String>? selectedUsernames}) { return CopilotCancelCopilotSeatAssignmentForUsersRequest(
  selectedUsernames: selectedUsernames ?? this.selectedUsernames,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotCancelCopilotSeatAssignmentForUsersRequest &&
          listEquals(selectedUsernames, other.selectedUsernames); } 
@override int get hashCode { return Object.hashAll(selectedUsernames).hashCode; } 
@override String toString() { return 'CopilotCancelCopilotSeatAssignmentForUsersRequest(selectedUsernames: $selectedUsernames)'; } 
 }
