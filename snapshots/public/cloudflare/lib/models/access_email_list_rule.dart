// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_email_list_rule_email_list.dart';/// Matches an email address from a list.
@immutable final class AccessEmailListRule {const AccessEmailListRule({required this.emailList});

factory AccessEmailListRule.fromJson(Map<String, dynamic> json) { return AccessEmailListRule(
  emailList: AccessEmailListRuleEmailList.fromJson(json['email_list'] as Map<String, dynamic>),
); }

final AccessEmailListRuleEmailList emailList;

Map<String, dynamic> toJson() { return {
  'email_list': emailList.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email_list'); } 
AccessEmailListRule copyWith({AccessEmailListRuleEmailList? emailList}) { return AccessEmailListRule(
  emailList: emailList ?? this.emailList,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessEmailListRule &&
          emailList == other.emailList; } 
@override int get hashCode { return emailList.hashCode; } 
@override String toString() { return 'AccessEmailListRule(emailList: $emailList)'; } 
 }
