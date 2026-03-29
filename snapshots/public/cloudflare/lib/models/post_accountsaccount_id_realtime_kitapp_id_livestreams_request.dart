// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest {const PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest({this.name});

factory PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest.fromJson(Map<String, dynamic> json) { return PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest(
  name: json['name'] as String?,
); }

/// Name of the livestream
final String? name;

Map<String, dynamic> toJson() { return {
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest copyWith({String? Function()? name}) { return PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'PostAccountsaccountIdRealtimeKitappIdLivestreamsRequest(name: $name)'; } 
 }
