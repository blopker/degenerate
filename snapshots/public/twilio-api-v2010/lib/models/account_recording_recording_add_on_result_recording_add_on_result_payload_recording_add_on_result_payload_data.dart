// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData {const AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData({this.redirectTo});

factory AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData.fromJson(Map<String, dynamic> json) { return AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData(
  redirectTo: json['redirect_to'] != null ? Uri.parse(json['redirect_to'] as String) : null,
); }

/// The URL to redirect to to get the data returned by the AddOn that was previously stored.
final Uri? redirectTo;

Map<String, dynamic> toJson() { return {
  if (redirectTo != null) 'redirect_to': redirectTo?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'redirect_to'}.contains(key)); } 
AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData copyWith({Uri? Function()? redirectTo}) { return AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData(
  redirectTo: redirectTo != null ? redirectTo() : this.redirectTo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData &&
          redirectTo == other.redirectTo; } 
@override int get hashCode { return redirectTo.hashCode; } 
@override String toString() { return 'AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData(redirectTo: $redirectTo)'; } 
 }
