// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions {const WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions({required this.admin, this.maintain, required this.pull, required this.push, this.triage, });

factory WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions(
  admin: json['admin'] as bool,
  maintain: json['maintain'] as bool?,
  pull: json['pull'] as bool,
  push: json['push'] as bool,
  triage: json['triage'] as bool?,
); }

final bool admin;

final bool? maintain;

final bool pull;

final bool push;

final bool? triage;

Map<String, dynamic> toJson() { return {
  'admin': admin,
  'maintain': ?maintain,
  'pull': pull,
  'push': push,
  'triage': ?triage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('admin') && json['admin'] is bool &&
      json.containsKey('pull') && json['pull'] is bool &&
      json.containsKey('push') && json['push'] is bool; } 
WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions copyWith({bool? admin, bool Function()? maintain, bool? pull, bool? push, bool Function()? triage, }) { return WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions(
  admin: admin ?? this.admin,
  maintain: maintain != null ? maintain() : this.maintain,
  pull: pull ?? this.pull,
  push: push ?? this.push,
  triage: triage != null ? triage() : this.triage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions &&
          admin == other.admin &&
          maintain == other.maintain &&
          pull == other.pull &&
          push == other.push &&
          triage == other.triage; } 
@override int get hashCode { return Object.hash(admin, maintain, pull, push, triage); } 
@override String toString() { return 'WebhookPullRequestAutoMergeEnabledPullRequestHeadRepoPermissions(admin: $admin, maintain: $maintain, pull: $pull, push: $push, triage: $triage)'; } 
 }
