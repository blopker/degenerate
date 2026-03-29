// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'accounts_by_account_id_pipelines_by_pipeline_name_deprecated_request_destination.dart';import 'accounts_by_account_id_pipelines_by_pipeline_name_deprecated_request_source.dart';final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest({required this.destination, required this.name, required this.source, });

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest(
  destination: AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination.fromJson(json['destination'] as Map<String, dynamic>),
  name: json['name'] as String,
  source: (json['source'] as List<dynamic>).map((e) => AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination destination;

/// Defines the name of the pipeline.
final String name;

final List<AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource> source;

Map<String, dynamic> toJson() { return {
  'destination': destination.toJson(),
  'name': name,
  'source': source.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('destination') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('source'); } 
AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest copyWith({AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestination? destination, String? name, List<AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestSource>? source, }) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest(
  destination: destination ?? this.destination,
  name: name ?? this.name,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest &&
          destination == other.destination &&
          name == other.name &&
          listEquals(source, other.source); } 
@override int get hashCode { return Object.hash(destination, name, Object.hashAll(source)); } 
@override String toString() { return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequest(destination: $destination, name: $name, source: $source)'; } 
 }
