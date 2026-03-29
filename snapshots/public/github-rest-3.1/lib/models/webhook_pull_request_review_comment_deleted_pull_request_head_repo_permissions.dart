// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions {const WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions({required this.admin, this.maintain, required this.pull, required this.push, this.triage, });

factory WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions(
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
WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions copyWith({bool? admin, bool Function()? maintain, bool? pull, bool? push, bool Function()? triage, }) { return WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions(
  admin: admin ?? this.admin,
  maintain: maintain != null ? maintain() : this.maintain,
  pull: pull ?? this.pull,
  push: push ?? this.push,
  triage: triage != null ? triage() : this.triage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions &&
          admin == other.admin &&
          maintain == other.maintain &&
          pull == other.pull &&
          push == other.push &&
          triage == other.triage; } 
@override int get hashCode { return Object.hash(admin, maintain, pull, push, triage); } 
@override String toString() { return 'WebhookPullRequestReviewCommentDeletedPullRequestHeadRepoPermissions(admin: $admin, maintain: $maintain, pull: $pull, push: $push, triage: $triage)'; } 
 }
