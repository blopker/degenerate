// GENERATED CODE - DO NOT MODIFY BY HAND

import 'web3_content_list_action.dart';final class Web3ContentListDetails {const Web3ContentListDetails({this.action});

factory Web3ContentListDetails.fromJson(Map<String, dynamic> json) { return Web3ContentListDetails(
  action: json['action'] != null ? Web3ContentListAction.fromJson(json['action'] as String) : null,
); }

/// Behavior of the content list.
final Web3ContentListAction? action;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'action'}.contains(key)); } 
Web3ContentListDetails copyWith({Web3ContentListAction Function()? action}) { return Web3ContentListDetails(
  action: action != null ? action() : this.action,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Web3ContentListDetails &&
          action == other.action; } 
@override int get hashCode { return action.hashCode; } 
@override String toString() { return 'Web3ContentListDetails(action: $action)'; } 
 }
