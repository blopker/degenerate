// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_pages_state.dart';import 'custom_pages_url.dart';@immutable final class CustomPagesForAZoneUpdateACustomPageRequest {const CustomPagesForAZoneUpdateACustomPageRequest({required this.state, required this.url, });

factory CustomPagesForAZoneUpdateACustomPageRequest.fromJson(Map<String, dynamic> json) { return CustomPagesForAZoneUpdateACustomPageRequest(
  state: CustomPagesState.fromJson(json['state'] as String),
  url: CustomPagesUrl.fromJson(json['url'] as String),
); }

/// The custom page state.
final CustomPagesState state;

/// The URL associated with the custom page.
final CustomPagesUrl url;

Map<String, dynamic> toJson() { return {
  'state': state.toJson(),
  'url': url.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('state') &&
      json.containsKey('url'); } 
CustomPagesForAZoneUpdateACustomPageRequest copyWith({CustomPagesState? state, CustomPagesUrl? url, }) { return CustomPagesForAZoneUpdateACustomPageRequest(
  state: state ?? this.state,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPagesForAZoneUpdateACustomPageRequest &&
          state == other.state &&
          url == other.url; } 
@override int get hashCode { return Object.hash(state, url); } 
@override String toString() { return 'CustomPagesForAZoneUpdateACustomPageRequest(state: $state, url: $url)'; } 
 }
