// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposRenameBranchRequest {const ReposRenameBranchRequest({required this.newName});

factory ReposRenameBranchRequest.fromJson(Map<String, dynamic> json) { return ReposRenameBranchRequest(
  newName: json['new_name'] as String,
); }

/// The new name of the branch.
final String newName;

Map<String, dynamic> toJson() { return {
  'new_name': newName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('new_name') && json['new_name'] is String; } 
ReposRenameBranchRequest copyWith({String? newName}) { return ReposRenameBranchRequest(
  newName: newName ?? this.newName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposRenameBranchRequest &&
          newName == other.newName; } 
@override int get hashCode { return newName.hashCode; } 
@override String toString() { return 'ReposRenameBranchRequest(newName: $newName)'; } 
 }
