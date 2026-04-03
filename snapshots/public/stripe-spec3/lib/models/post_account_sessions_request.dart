// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_sessions_request_components.dart';@immutable final class PostAccountSessionsRequest {const PostAccountSessionsRequest({required this.account, required this.components, this.expand, });

factory PostAccountSessionsRequest.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequest(
  account: json['account'] as String,
  components: PostAccountSessionsRequestComponents.fromJson(json['components'] as Map<String, dynamic>),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The identifier of the account to create an Account Session for.
final String account;

/// Each key of the dictionary represents an embedded component, and each embedded component maps to its configuration (e.g. whether it has been enabled or not).
final PostAccountSessionsRequestComponents components;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'account': account,
  'components': components.toJson(),
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') && json['account'] is String &&
      json.containsKey('components'); } 
PostAccountSessionsRequest copyWith({String? account, PostAccountSessionsRequestComponents? components, List<String> Function()? expand, }) { return PostAccountSessionsRequest(
  account: account ?? this.account,
  components: components ?? this.components,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequest &&
          account == other.account &&
          components == other.components &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(account, components, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostAccountSessionsRequest(account: $account, components: $components, expand: $expand)'; } 
 }
