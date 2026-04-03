// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks {const ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks({required this.context, this.appId, });

factory ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks.fromJson(Map<String, dynamic> json) { return ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks(
  context: json['context'] as String,
  appId: json['app_id'] != null ? (json['app_id'] as num).toInt() : null,
); }

/// The name of the required check
final String context;

/// The ID of the GitHub App that must provide this check. Omit this field to automatically select the GitHub App that has recently provided this check, or any app if it was not set by a GitHub App. Pass -1 to explicitly allow any app to set the status.
final int? appId;

Map<String, dynamic> toJson() { return {
  'context': context,
  'app_id': ?appId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('context') && json['context'] is String; } 
ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks copyWith({String? context, int Function()? appId, }) { return ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks(
  context: context ?? this.context,
  appId: appId != null ? appId() : this.appId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks &&
          context == other.context &&
          appId == other.appId; } 
@override int get hashCode { return Object.hash(context, appId); } 
@override String toString() { return 'ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks(context: $context, appId: $appId)'; } 
 }
