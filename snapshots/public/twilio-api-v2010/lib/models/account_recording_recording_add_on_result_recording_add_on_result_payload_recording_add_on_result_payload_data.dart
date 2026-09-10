// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData {const AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData({this.redirectTo = const Omittable.absent()});

factory AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData.fromJson(Map<String, dynamic> json) { return AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData(
  redirectTo: json.containsKey('redirect_to') ? Omittable(json['redirect_to'] != null ? Uri.parse(json['redirect_to'] as String) : null) : const Omittable.absent(),
); }

/// The URL to redirect to to get the data returned by the AddOn that was previously stored.
final Omittable<Uri?> redirectTo;

Map<String, dynamic> toJson() { return {
  if (redirectTo.isPresent) 'redirect_to': redirectTo.value?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'redirect_to'}.contains(key)); } 
AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData copyWith({Omittable<Uri?>? redirectTo}) { return AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData(
  redirectTo: redirectTo ?? this.redirectTo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData &&
          redirectTo == other.redirectTo; } 
@override int get hashCode { return redirectTo.hashCode; } 
@override String toString() { return 'AccountRecordingRecordingAddOnResultRecordingAddOnResultPayloadRecordingAddOnResultPayloadData(redirectTo: $redirectTo)'; } 
 }
