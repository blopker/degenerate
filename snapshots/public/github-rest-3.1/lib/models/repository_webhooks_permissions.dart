// GENERATED CODE - DO NOT MODIFY BY HAND

final class RepositoryWebhooksPermissions {const RepositoryWebhooksPermissions({required this.admin, required this.pull, this.triage, required this.push, this.maintain, });

factory RepositoryWebhooksPermissions.fromJson(Map<String, dynamic> json) { return RepositoryWebhooksPermissions(
  admin: json['admin'] as bool,
  pull: json['pull'] as bool,
  triage: json['triage'] as bool?,
  push: json['push'] as bool,
  maintain: json['maintain'] as bool?,
); }

final bool admin;

final bool pull;

final bool? triage;

final bool push;

final bool? maintain;

Map<String, dynamic> toJson() { return {
  'admin': admin,
  'pull': pull,
  'triage': ?triage,
  'push': push,
  'maintain': ?maintain,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('admin') && json['admin'] is bool &&
      json.containsKey('pull') && json['pull'] is bool &&
      json.containsKey('push') && json['push'] is bool; } 
RepositoryWebhooksPermissions copyWith({bool? admin, bool? pull, bool Function()? triage, bool? push, bool Function()? maintain, }) { return RepositoryWebhooksPermissions(
  admin: admin ?? this.admin,
  pull: pull ?? this.pull,
  triage: triage != null ? triage() : this.triage,
  push: push ?? this.push,
  maintain: maintain != null ? maintain() : this.maintain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryWebhooksPermissions &&
          admin == other.admin &&
          pull == other.pull &&
          triage == other.triage &&
          push == other.push &&
          maintain == other.maintain; } 
@override int get hashCode { return Object.hash(admin, pull, triage, push, maintain); } 
@override String toString() { return 'RepositoryWebhooksPermissions(admin: $admin, pull: $pull, triage: $triage, push: $push, maintain: $maintain)'; } 
 }
