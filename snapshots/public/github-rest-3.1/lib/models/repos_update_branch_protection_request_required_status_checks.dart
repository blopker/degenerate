// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repos_update_branch_protection_request_required_status_checks_checks.dart';/// Require status checks to pass before merging. Set to `null` to disable.
final class ReposUpdateBranchProtectionRequestRequiredStatusChecks {const ReposUpdateBranchProtectionRequestRequiredStatusChecks({required this.strict, required this.contexts, this.checks, });

factory ReposUpdateBranchProtectionRequestRequiredStatusChecks.fromJson(Map<String, dynamic> json) { return ReposUpdateBranchProtectionRequestRequiredStatusChecks(
  strict: json['strict'] as bool,
  contexts: (json['contexts'] as List<dynamic>).map((e) => e as String).toList(),
  checks: (json['checks'] as List<dynamic>?)?.map((e) => ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Require branches to be up to date before merging.
final bool strict;

/// **Closing down notice**: The list of status checks to require in order to merge into this branch. If any of these checks have recently been set by a particular GitHub App, they will be required to come from that app in future for the branch to merge. Use `checks` instead of `contexts` for more fine-grained control.
final List<String> contexts;

/// The list of status checks to require in order to merge into this branch.
final List<ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks>? checks;

Map<String, dynamic> toJson() { return {
  'strict': strict,
  'contexts': contexts,
  if (checks != null) 'checks': checks?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('strict') && json['strict'] is bool &&
      json.containsKey('contexts'); } 
ReposUpdateBranchProtectionRequestRequiredStatusChecks copyWith({bool? strict, List<String>? contexts, List<ReposUpdateBranchProtectionRequestRequiredStatusChecksChecks> Function()? checks, }) { return ReposUpdateBranchProtectionRequestRequiredStatusChecks(
  strict: strict ?? this.strict,
  contexts: contexts ?? this.contexts,
  checks: checks != null ? checks() : this.checks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateBranchProtectionRequestRequiredStatusChecks &&
          strict == other.strict &&
          listEquals(contexts, other.contexts) &&
          listEquals(checks, other.checks); } 
@override int get hashCode { return Object.hash(strict, Object.hashAll(contexts), Object.hashAll(checks ?? const [])); } 
@override String toString() { return 'ReposUpdateBranchProtectionRequestRequiredStatusChecks(strict: $strict, contexts: $contexts, checks: $checks)'; } 
 }
