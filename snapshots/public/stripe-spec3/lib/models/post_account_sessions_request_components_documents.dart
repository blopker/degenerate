// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_sessions_request_components_documents_features.dart';@immutable final class PostAccountSessionsRequestComponentsDocuments {const PostAccountSessionsRequestComponentsDocuments({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsDocuments.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsDocuments(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsDocumentsFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsDocumentsFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsDocuments copyWith({bool? enabled, PostAccountSessionsRequestComponentsDocumentsFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsDocuments(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsDocuments &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsDocuments(enabled: $enabled, features: $features)'; } 
 }
