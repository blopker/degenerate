// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/r2_account_identifier.dart';import '../models/r2_add_custom_domain_request.dart';import '../models/r2_bucket_name.dart';import '../models/r2_create_bucket_request.dart';import '../models/r2_domain_name.dart';import '../models/r2_edit_custom_domain_request.dart';import '../models/r2_edit_managed_domain_request.dart';import '../models/r2_event_notification_delete_config_request.dart';import '../models/r2_get_event_notification_config_cf_r2_jurisdiction.dart';import '../models/r2_jurisdiction.dart';import '../models/r2_list_buckets_direction.dart';import '../models/r2_list_buckets_order.dart';import '../models/r2_list_buckets_response_result.dart';import '../models/r2_put_bucket_cors_policy_request.dart';import '../models/r2_put_bucket_lifecycle_configuration_request.dart';import '../models/r2_put_bucket_local_uploads_configuration_request.dart';import '../models/r2_put_bucket_lock_configuration_request.dart';import '../models/r2_put_bucket_sippy_config_request.dart';import '../models/r2_put_event_notification_config_request.dart';import '../models/r2_queue_identifier.dart';import '../models/r2_storage_class.dart';import '../models/r2_temp_access_creds_request.dart';import '../models/response_failure.dart';/// R2BucketApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class R2BucketApi with ApiExecutor {const R2BucketApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Event Notification Rules
///
/// List all event notification rules for a bucket.
///
/// `GET /accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration`
Future<ApiResult<Map<String, dynamic>, ResponseFailure>> r2GetEventNotificationConfigs({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_notifications/r2/${Uri.encodeComponent(bucketName.toString())}/configuration',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
    return ResponseFailure.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Event Notification Rule
///
/// Get a single event notification rule.
///
/// `GET /accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`
Future<ApiResult<Map<String, dynamic>, ResponseFailure>> r2GetEventNotificationConfig({required R2QueueIdentifier queueId, required R2BucketName bucketName, required R2AccountIdentifier accountId, R2GetEventNotificationConfigCfR2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_notifications/r2/${Uri.encodeComponent(bucketName.toString())}/configuration/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
  onError: (response) {
    return ResponseFailure.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Event Notification Rule
///
/// Create event notification rule.
///
/// `PUT /accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutEventNotificationConfig({required R2QueueIdentifier queueId, required R2BucketName bucketName, required R2AccountIdentifier accountId, required R2PutEventNotificationConfigRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_notifications/r2/${Uri.encodeComponent(bucketName.toString())}/configuration/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Delete Event Notification Rules
///
/// Delete an event notification rule. **If no body is provided, all rules for specified queue will be deleted**.
///
/// `DELETE /accounts/{account_id}/event_notifications/r2/{bucket_name}/configuration/queues/{queue_id}`
Future<ApiResult<Map<String, dynamic>, Never>> r2EventNotificationDeleteConfig({required R2QueueIdentifier queueId, required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, R2EventNotificationDeleteConfigRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_notifications/r2/${Uri.encodeComponent(bucketName.toString())}/configuration/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// List Buckets
///
/// Lists all R2 buckets on your account.
///
/// `GET /accounts/{account_id}/r2/buckets`
Future<ApiResult<R2ListBucketsResponseResult?, Never>> r2ListBuckets({required R2AccountIdentifier accountId, String? nameContains, String? startAfter, double? perPage, R2ListBucketsOrder? order, R2ListBucketsDirection? direction, String? cursor, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (nameContains != null) {
  queryParameters['name_contains'] = nameContains;
}
if (startAfter != null) {
  queryParameters['start_after'] = startAfter;
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? R2ListBucketsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create Bucket
///
/// Creates a new R2 bucket.
///
/// `POST /accounts/{account_id}/r2/buckets`
Future<ApiResult<Map<String, dynamic>, Never>> r2CreateBucket({required R2AccountIdentifier accountId, required R2CreateBucketRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Bucket
///
/// Gets properties of an existing R2 bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucket({required R2AccountIdentifier accountId, required R2BucketName bucketName, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Patch Bucket
///
/// Updates properties of an existing R2 bucket.
///
/// `PATCH /accounts/{account_id}/r2/buckets/{bucket_name}`
Future<ApiResult<Map<String, dynamic>, Never>> r2PatchBucket({required R2AccountIdentifier accountId, required R2BucketName bucketName, required R2StorageClass cfR2StorageClass, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}
headers['cf-r2-storage-class'] = cfR2StorageClass.toJson();

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Delete Bucket
///
/// Deletes an existing R2 bucket.
///
/// `DELETE /accounts/{account_id}/r2/buckets/{bucket_name}`
Future<ApiResult<Map<String, dynamic>, Never>> r2DeleteBucket({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Bucket CORS Policy
///
/// Get the CORS policy for a bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/cors`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucketCorsPolicy({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/cors',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Put Bucket CORS Policy
///
/// Set the CORS policy for a bucket.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/cors`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutBucketCorsPolicy({required R2BucketName bucketName, required R2AccountIdentifier accountId, required R2PutBucketCorsPolicyRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/cors',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Delete Bucket CORS Policy
///
/// Delete the CORS policy for a bucket.
///
/// `DELETE /accounts/{account_id}/r2/buckets/{bucket_name}/cors`
Future<ApiResult<Map<String, dynamic>, Never>> r2DeleteBucketCorsPolicy({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/cors',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// List Custom Domains of Bucket
///
/// Gets a list of all custom domains registered with an existing R2 bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom`
Future<ApiResult<Map<String, dynamic>, Never>> r2ListCustomDomains({required R2AccountIdentifier accountId, required R2BucketName bucketName, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/custom',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Attach Custom Domain To Bucket
///
/// Register a new custom domain for an existing R2 bucket.
///
/// `POST /accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom`
Future<ApiResult<Map<String, dynamic>, Never>> r2AddCustomDomain({required R2AccountIdentifier accountId, required R2BucketName bucketName, required R2AddCustomDomainRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/custom',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Custom Domain Settings
///
/// Get the configuration for a custom domain on an existing R2 bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetCustomDomainSettings({required R2AccountIdentifier accountId, required R2BucketName bucketName, required R2DomainName domain, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/custom/${Uri.encodeComponent(domain.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Configure Custom Domain Settings
///
/// Edit the configuration for a custom domain on an existing R2 bucket.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`
Future<ApiResult<Map<String, dynamic>, Never>> r2EditCustomDomainSettings({required R2AccountIdentifier accountId, required R2BucketName bucketName, required R2DomainName domain, required R2EditCustomDomainRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/custom/${Uri.encodeComponent(domain.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Remove Custom Domain From Bucket
///
/// Remove custom domain registration from an existing R2 bucket.
///
/// `DELETE /accounts/{account_id}/r2/buckets/{bucket_name}/domains/custom/{domain}`
Future<ApiResult<Map<String, dynamic>, Never>> r2DeleteCustomDomain({required R2BucketName bucketName, required R2AccountIdentifier accountId, required R2DomainName domain, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/custom/${Uri.encodeComponent(domain.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get r2.dev Domain of Bucket
///
/// Gets state of public access over the bucket's R2-managed (r2.dev) domain.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/domains/managed`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucketPublicPolicy({required R2AccountIdentifier accountId, required R2BucketName bucketName, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/managed',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Update r2.dev Domain of Bucket
///
/// Updates state of public access over the bucket's R2-managed (r2.dev) domain.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/domains/managed`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutBucketPublicPolicy({required R2AccountIdentifier accountId, required R2BucketName bucketName, required R2EditManagedDomainRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/domains/managed',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Object Lifecycle Rules
///
/// Get object lifecycle rules for a bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/lifecycle`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucketLifecycleConfiguration({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/lifecycle',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Put Object Lifecycle Rules
///
/// Set the object lifecycle rules for a bucket.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/lifecycle`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutBucketLifecycleConfiguration({required R2BucketName bucketName, required R2AccountIdentifier accountId, required R2PutBucketLifecycleConfigurationRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/lifecycle',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Local Uploads Configuration
///
/// Get the local uploads configuration for a bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/local-uploads`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucketLocalUploadsConfiguration({required R2BucketName bucketName, required R2AccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/local-uploads',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Put Local Uploads Configuration
///
/// Set the local uploads configuration for a bucket. When enabled, object's data is written to the nearest region first, then asynchronously replicated to the bucket's primary region.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/local-uploads`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutBucketLocalUploadsConfiguration({required R2BucketName bucketName, required R2AccountIdentifier accountId, required R2PutBucketLocalUploadsConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/local-uploads',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Bucket Lock Rules
///
/// Get lock rules for a bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/lock`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucketLockConfiguration({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/lock',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Put Bucket Lock Rules
///
/// Set lock rules for a bucket.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/lock`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutBucketLockConfiguration({required R2BucketName bucketName, required R2AccountIdentifier accountId, required R2PutBucketLockConfigurationRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/lock',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Get Sippy Configuration
///
/// Gets configuration for Sippy for an existing R2 bucket.
///
/// `GET /accounts/{account_id}/r2/buckets/{bucket_name}/sippy`
Future<ApiResult<Map<String, dynamic>, Never>> r2GetBucketSippyConfig({required R2AccountIdentifier accountId, required R2BucketName bucketName, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/sippy',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Enable Sippy
///
/// Sets configuration for Sippy for an existing R2 bucket.
///
/// `PUT /accounts/{account_id}/r2/buckets/{bucket_name}/sippy`
Future<ApiResult<Map<String, dynamic>, Never>> r2PutBucketSippyConfig({required R2AccountIdentifier accountId, required R2BucketName bucketName, required R2PutBucketSippyConfigRequest body, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/sippy',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Disable Sippy
///
/// Disables Sippy on this bucket.
///
/// `DELETE /accounts/{account_id}/r2/buckets/{bucket_name}/sippy`
Future<ApiResult<Map<String, dynamic>, Never>> r2DeleteBucketSippyConfig({required R2BucketName bucketName, required R2AccountIdentifier accountId, R2Jurisdiction? cfR2Jurisdiction, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (cfR2Jurisdiction != null) {
  headers['cf-r2-jurisdiction'] = cfR2Jurisdiction.toJson();
}

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/buckets/${Uri.encodeComponent(bucketName.toString())}/sippy',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
/// Create Temporary Access Credentials
///
/// Creates temporary access credentials on a bucket that can be optionally scoped to prefixes or objects.
///
/// `POST /accounts/{account_id}/r2/temp-access-credentials`
Future<ApiResult<Map<String, dynamic>, Never>> r2CreateTempAccessCredentials({required R2AccountIdentifier accountId, required R2TempAccessCredsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/r2/temp-access-credentials',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>;
  },
);
 } 
 }
