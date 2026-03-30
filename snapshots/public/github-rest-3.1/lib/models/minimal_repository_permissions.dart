// GENERATED CODE - DO NOT MODIFY BY HAND

final class MinimalRepositoryPermissions {const MinimalRepositoryPermissions({this.admin, this.maintain, this.push, this.triage, this.pull, });

factory MinimalRepositoryPermissions.fromJson(Map<String, dynamic> json) { return MinimalRepositoryPermissions(
  admin: json['admin'] as bool?,
  maintain: json['maintain'] as bool?,
  push: json['push'] as bool?,
  triage: json['triage'] as bool?,
  pull: json['pull'] as bool?,
); }

final bool? admin;

final bool? maintain;

final bool? push;

final bool? triage;

final bool? pull;

Map<String, dynamic> toJson() { return {
  'admin': ?admin,
  'maintain': ?maintain,
  'push': ?push,
  'triage': ?triage,
  'pull': ?pull,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'admin', 'maintain', 'push', 'triage', 'pull'}.contains(key)); } 
MinimalRepositoryPermissions copyWith({bool Function()? admin, bool Function()? maintain, bool Function()? push, bool Function()? triage, bool Function()? pull, }) { return MinimalRepositoryPermissions(
  admin: admin != null ? admin() : this.admin,
  maintain: maintain != null ? maintain() : this.maintain,
  push: push != null ? push() : this.push,
  triage: triage != null ? triage() : this.triage,
  pull: pull != null ? pull() : this.pull,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MinimalRepositoryPermissions &&
          admin == other.admin &&
          maintain == other.maintain &&
          push == other.push &&
          triage == other.triage &&
          pull == other.pull; } 
@override int get hashCode { return Object.hash(admin, maintain, push, triage, pull); } 
@override String toString() { return 'MinimalRepositoryPermissions(admin: $admin, maintain: $maintain, push: $push, triage: $triage, pull: $pull)'; } 
 }
