// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestSettingsBacsDebitPayments {const PostAccountsAccountRequestSettingsBacsDebitPayments({this.displayName});

factory PostAccountsAccountRequestSettingsBacsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestSettingsBacsDebitPayments(
  displayName: json['display_name'] as String?,
); }

final String? displayName;

Map<String, dynamic> toJson() { return {
  'display_name': ?displayName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_name'}.contains(key)); } 
PostAccountsAccountRequestSettingsBacsDebitPayments copyWith({String Function()? displayName}) { return PostAccountsAccountRequestSettingsBacsDebitPayments(
  displayName: displayName != null ? displayName() : this.displayName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestSettingsBacsDebitPayments &&
          displayName == other.displayName; } 
@override int get hashCode { return displayName.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsBacsDebitPayments(displayName: $displayName)'; } 
 }
