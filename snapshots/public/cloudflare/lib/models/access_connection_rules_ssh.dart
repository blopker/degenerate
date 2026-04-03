// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Enables using Identity Provider email alias as SSH username.
extension type const AccessAllowEmailAlias(bool value) {
factory AccessAllowEmailAlias.fromJson(bool json) => AccessAllowEmailAlias(json);

bool toJson() => value;

}
/// The SSH-specific rules that define how users may connect to the targets secured by your application.
@immutable final class AccessConnectionRulesSsh {const AccessConnectionRulesSsh({required this.usernames, this.allowEmailAlias, });

factory AccessConnectionRulesSsh.fromJson(Map<String, dynamic> json) { return AccessConnectionRulesSsh(
  allowEmailAlias: json['allow_email_alias'] != null ? AccessAllowEmailAlias.fromJson(json['allow_email_alias'] as bool) : null,
  usernames: (json['usernames'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Enables using Identity Provider email alias as SSH username.
final AccessAllowEmailAlias? allowEmailAlias;

final List<String> usernames;

Map<String, dynamic> toJson() { return {
  if (allowEmailAlias != null) 'allow_email_alias': allowEmailAlias?.toJson(),
  'usernames': usernames,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('usernames'); } 
AccessConnectionRulesSsh copyWith({AccessAllowEmailAlias Function()? allowEmailAlias, List<String>? usernames, }) { return AccessConnectionRulesSsh(
  allowEmailAlias: allowEmailAlias != null ? allowEmailAlias() : this.allowEmailAlias,
  usernames: usernames ?? this.usernames,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessConnectionRulesSsh &&
          allowEmailAlias == other.allowEmailAlias &&
          listEquals(usernames, other.usernames); } 
@override int get hashCode { return Object.hash(allowEmailAlias, Object.hashAll(usernames)); } 
@override String toString() { return 'AccessConnectionRulesSsh(allowEmailAlias: $allowEmailAlias, usernames: $usernames)'; } 
 }
