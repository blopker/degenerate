// GENERATED CODE - DO NOT MODIFY BY HAND

final class UpdateQueueRequest {const UpdateQueueRequest({this.friendlyName, this.maxSize, });

factory UpdateQueueRequest.fromJson(Map<String, dynamic> json) { return UpdateQueueRequest(
  friendlyName: json['FriendlyName'] as String?,
  maxSize: json['MaxSize'] != null ? (json['MaxSize'] as num).toInt() : null,
); }

/// A descriptive string that you created to describe this resource. It can be up to 64 characters long.
final String? friendlyName;

/// The maximum number of calls allowed to be in the queue. The default is 1000. The maximum is 5000.
final int? maxSize;

Map<String, dynamic> toJson() { return {
  'FriendlyName': ?friendlyName,
  'MaxSize': ?maxSize,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UpdateQueueRequest copyWith({String Function()? friendlyName, int Function()? maxSize, }) { return UpdateQueueRequest(
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  maxSize: maxSize != null ? maxSize() : this.maxSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateQueueRequest &&
          friendlyName == other.friendlyName &&
          maxSize == other.maxSize; } 
@override int get hashCode { return Object.hash(friendlyName, maxSize); } 
@override String toString() { return 'UpdateQueueRequest(friendlyName: $friendlyName, maxSize: $maxSize)'; } 
 }
