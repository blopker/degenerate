// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@immutable final class ListMeta {const ListMeta({this.$continue, this.remainingItemCount, this.resourceVersion, this.selfLink, });

factory ListMeta.fromJson(Map<String, dynamic> json) { return ListMeta(
  $continue: json['continue'] as String?,
  remainingItemCount: json['remainingItemCount'] != null ? (json['remainingItemCount'] as num).toInt() : null,
  resourceVersion: json['resourceVersion'] as String?,
  selfLink: json['selfLink'] as String?,
); }

/// continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message.
final String? $continue;

/// remainingItemCount is the number of subsequent items in the list which are not included in this list response. If the list request contained label or field selectors, then the number of remaining items is unknown and the field will be left unset and omitted during serialization. If the list is complete (either because it is not chunking or because this is the last chunk), then there are no more remaining items and this field will be left unset and omitted during serialization. Servers older than v1.15 do not set this field. The intended use of the remainingItemCount is *estimating* the size of a collection. Clients should not rely on the remainingItemCount to be set or to be exact.
final int? remainingItemCount;

/// String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
final String? resourceVersion;

/// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
final String? selfLink;

Map<String, dynamic> toJson() { return {
  'continue': ?$continue,
  'remainingItemCount': ?remainingItemCount,
  'resourceVersion': ?resourceVersion,
  'selfLink': ?selfLink,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'continue', 'remainingItemCount', 'resourceVersion', 'selfLink'}.contains(key)); } 
ListMeta copyWith({String Function()? $continue, int Function()? remainingItemCount, String Function()? resourceVersion, String Function()? selfLink, }) { return ListMeta(
  $continue: $continue != null ? $continue() : this.$continue,
  remainingItemCount: remainingItemCount != null ? remainingItemCount() : this.remainingItemCount,
  resourceVersion: resourceVersion != null ? resourceVersion() : this.resourceVersion,
  selfLink: selfLink != null ? selfLink() : this.selfLink,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListMeta &&
          $continue == other.$continue &&
          remainingItemCount == other.remainingItemCount &&
          resourceVersion == other.resourceVersion &&
          selfLink == other.selfLink; } 
@override int get hashCode { return Object.hash($continue, remainingItemCount, resourceVersion, selfLink); } 
@override String toString() { return 'ListMeta(\$continue: ${$continue}, remainingItemCount: $remainingItemCount, resourceVersion: $resourceVersion, selfLink: $selfLink)'; } 
 }
