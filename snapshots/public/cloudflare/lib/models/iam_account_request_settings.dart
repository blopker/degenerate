// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Account settings
@immutable final class IamAccountRequestSettings {const IamAccountRequestSettings({this.abuseContactEmail, this.enforceTwofactor, });

factory IamAccountRequestSettings.fromJson(Map<String, dynamic> json) {return IamAccountRequestSettings(
  abuseContactEmail: json['abuse_contact_email'] as String?,
  enforceTwofactor: json['enforce_twofactor'] as bool?,
);}

/// Sets an abuse contact email to notify for abuse reports.
final String? abuseContactEmail;

/// Indicates whether membership in this account requires that
/// Two-Factor Authentication is enabled
final bool? enforceTwofactor;

/// The value with the schema default applied when absent.
bool get enforceTwofactorOrDefault {return enforceTwofactor ?? false;}
Map<String, dynamic> toJson() {return {
  'abuse_contact_email': ?abuseContactEmail,
  'enforce_twofactor': ?enforceTwofactor,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'abuse_contact_email', 'enforce_twofactor'}.contains(key));}
IamAccountRequestSettings copyWith({String? Function()? abuseContactEmail, bool? Function()? enforceTwofactor, }) {return IamAccountRequestSettings(
  abuseContactEmail: abuseContactEmail != null ? abuseContactEmail() : this.abuseContactEmail,
  enforceTwofactor: enforceTwofactor != null ? enforceTwofactor() : this.enforceTwofactor,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is IamAccountRequestSettings &&
          abuseContactEmail == other.abuseContactEmail &&
          enforceTwofactor == other.enforceTwofactor;}
@override int get hashCode {return Object.hash(abuseContactEmail, enforceTwofactor);}
@override String toString() {return 'IamAccountRequestSettings(abuseContactEmail: $abuseContactEmail, enforceTwofactor: $enforceTwofactor)';}
}
