// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'accounts_by_account_id_pipelines_deprecated_response4xx_errors.dart';import 'cloudflare_pipelines_worker_pipelines_common_success.dart';@immutable final class AccountsByAccountIdPipelinesDeprecatedResponse4xx {const AccountsByAccountIdPipelinesDeprecatedResponse4xx({required this.errors, required this.results, required this.success, });

factory AccountsByAccountIdPipelinesDeprecatedResponse4xx.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesDeprecatedResponse4xx(
  errors: (json['errors'] as List<dynamic>).map((e) => AccountsByAccountIdPipelinesDeprecatedResponse4xxErrors.fromJson(e as Map<String, dynamic>)).toList(),
  results: json['results'] as Map<String, dynamic>?,
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final List<AccountsByAccountIdPipelinesDeprecatedResponse4xxErrors> errors;

final Map<String,dynamic>? results;

/// Indicates whether the API call was successful.
final CloudflarePipelinesWorkerPipelinesCommonSuccess success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'results': ?results,
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('results') &&
      json.containsKey('success'); } 
AccountsByAccountIdPipelinesDeprecatedResponse4xx copyWith({List<AccountsByAccountIdPipelinesDeprecatedResponse4xxErrors>? errors, Map<String, dynamic>? Function()? results, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return AccountsByAccountIdPipelinesDeprecatedResponse4xx(
  errors: errors ?? this.errors,
  results: results != null ? results() : this.results,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesDeprecatedResponse4xx &&
          listEquals(errors, other.errors) &&
          results == other.results &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), results, success); } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedResponse4xx(errors: $errors, results: $results, success: $success)'; } 
 }
