// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Poll permissions
@immutable final class RealtimekitUpdatePresetPermissionsPolls {const RealtimekitUpdatePresetPermissionsPolls({this.canCreate, this.canView, this.canVote, });

factory RealtimekitUpdatePresetPermissionsPolls.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissionsPolls(
  canCreate: json['can_create'] as bool?,
  canView: json['can_view'] as bool?,
  canVote: json['can_vote'] as bool?,
); }

/// Can create polls
final bool? canCreate;

/// Can view polls
final bool? canView;

/// Can vote on polls
final bool? canVote;

Map<String, dynamic> toJson() { return {
  'can_create': ?canCreate,
  'can_view': ?canView,
  'can_vote': ?canVote,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_create', 'can_view', 'can_vote'}.contains(key)); } 
RealtimekitUpdatePresetPermissionsPolls copyWith({bool Function()? canCreate, bool Function()? canView, bool Function()? canVote, }) { return RealtimekitUpdatePresetPermissionsPolls(
  canCreate: canCreate != null ? canCreate() : this.canCreate,
  canView: canView != null ? canView() : this.canView,
  canVote: canVote != null ? canVote() : this.canVote,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissionsPolls &&
          canCreate == other.canCreate &&
          canView == other.canView &&
          canVote == other.canVote; } 
@override int get hashCode { return Object.hash(canCreate, canView, canVote); } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsPolls(canCreate: $canCreate, canView: $canView, canVote: $canVote)'; } 
 }
