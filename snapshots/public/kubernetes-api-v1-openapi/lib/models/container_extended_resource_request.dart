// GENERATED CODE - DO NOT MODIFY BY HAND

/// ContainerExtendedResourceRequest has the mapping of container name, extended resource name to the device request name.
final class ContainerExtendedResourceRequest {const ContainerExtendedResourceRequest({this.containerName = '', this.requestName = '', this.resourceName = '', });

factory ContainerExtendedResourceRequest.fromJson(Map<String, dynamic> json) { return ContainerExtendedResourceRequest(
  containerName: json['containerName'] as String,
  requestName: json['requestName'] as String,
  resourceName: json['resourceName'] as String,
); }

/// The name of the container requesting resources.
final String containerName;

/// The name of the request in the special ResourceClaim which corresponds to the extended resource.
final String requestName;

/// The name of the extended resource in that container which gets backed by DRA.
final String resourceName;

Map<String, dynamic> toJson() { return {
  'containerName': containerName,
  'requestName': requestName,
  'resourceName': resourceName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('containerName') && json['containerName'] is String &&
      json.containsKey('requestName') && json['requestName'] is String &&
      json.containsKey('resourceName') && json['resourceName'] is String; } 
ContainerExtendedResourceRequest copyWith({String? containerName, String? requestName, String? resourceName, }) { return ContainerExtendedResourceRequest(
  containerName: containerName ?? this.containerName,
  requestName: requestName ?? this.requestName,
  resourceName: resourceName ?? this.resourceName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerExtendedResourceRequest &&
          containerName == other.containerName &&
          requestName == other.requestName &&
          resourceName == other.resourceName; } 
@override int get hashCode { return Object.hash(containerName, requestName, resourceName); } 
@override String toString() { return 'ContainerExtendedResourceRequest(containerName: $containerName, requestName: $requestName, resourceName: $resourceName)'; } 
 }
