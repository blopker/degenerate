// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest {const PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest({this.name = const Omittable.absent()});

factory PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest.fromJson(Map<String, dynamic> json) { return PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest(
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

/// Name of the livestream
final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name'}.contains(key)); } 
PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest copyWith({Omittable<String?>? name}) { return PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest(name: $name)'; } 
 }
