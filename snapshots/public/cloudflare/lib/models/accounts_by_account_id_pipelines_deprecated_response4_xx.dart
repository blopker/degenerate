// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'accounts_by_account_id_pipelines_deprecated_response4_xx_errors.dart';import 'cloudflare_pipelines_worker_pipelines_common_success.dart';final class AccountsByAccountIdPipelinesDeprecatedResponse4Xx {const AccountsByAccountIdPipelinesDeprecatedResponse4Xx({required this.errors, required this.results, required this.success, });

factory AccountsByAccountIdPipelinesDeprecatedResponse4Xx.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesDeprecatedResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => AccountsByAccountIdPipelinesDeprecatedResponse4XxErrors.fromJson(e as Map<String, dynamic>)).toList(),
  results: (json['results'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: CloudflarePipelinesWorkerPipelinesCommonSuccess.fromJson(json['success'] as bool),
); }

final List<AccountsByAccountIdPipelinesDeprecatedResponse4XxErrors> errors;

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
AccountsByAccountIdPipelinesDeprecatedResponse4Xx copyWith({List<AccountsByAccountIdPipelinesDeprecatedResponse4XxErrors>? errors, Map<String, dynamic>? Function()? results, CloudflarePipelinesWorkerPipelinesCommonSuccess? success, }) { return AccountsByAccountIdPipelinesDeprecatedResponse4Xx(
  errors: errors ?? this.errors,
  results: results != null ? results() : this.results,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesDeprecatedResponse4Xx &&
          listEquals(errors, other.errors) &&
          results == other.results &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), results, success); } 
@override String toString() { return 'AccountsByAccountIdPipelinesDeprecatedResponse4Xx(errors: $errors, results: $results, success: $success)'; } 
 }
