// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/wor_batch_create_workflow_instance_request.dart';import '../models/wor_batch_create_workflow_instance_response400.dart';import '../models/wor_batch_create_workflow_instance_response404.dart';import '../models/wor_batch_create_workflow_instance_response_result.dart';import '../models/wor_batch_terminate_workflow_instances_response400.dart';import '../models/wor_batch_terminate_workflow_instances_response404.dart';import '../models/wor_batch_terminate_workflow_instances_response_result.dart';import '../models/wor_change_status_workflow_instance_request.dart';import '../models/wor_change_status_workflow_instance_response400.dart';import '../models/wor_change_status_workflow_instance_response404.dart';import '../models/wor_change_status_workflow_instance_response409.dart';import '../models/wor_change_status_workflow_instance_response_result.dart';import '../models/wor_create_new_workflow_instance_request.dart';import '../models/wor_create_new_workflow_instance_response400.dart';import '../models/wor_create_new_workflow_instance_response404.dart';import '../models/wor_create_new_workflow_instance_response_result.dart';import '../models/wor_create_or_modify_workflow_request.dart';import '../models/wor_create_or_modify_workflow_response400.dart';import '../models/wor_create_or_modify_workflow_response_result.dart';import '../models/wor_delete_workflow_response400.dart';import '../models/wor_delete_workflow_response404.dart';import '../models/wor_delete_workflow_response_result.dart';import '../models/wor_describe_workflow_instance_order.dart';import '../models/wor_describe_workflow_instance_response400.dart';import '../models/wor_describe_workflow_instance_response404.dart';import '../models/wor_describe_workflow_instance_response_result.dart';import '../models/wor_describe_workflow_instance_simple.dart';import '../models/wor_describe_workflow_versions_dag_response404.dart';import '../models/wor_describe_workflow_versions_dag_response_result.dart';import '../models/wor_describe_workflow_versions_graph_response404.dart';import '../models/wor_describe_workflow_versions_graph_response_result.dart';import '../models/wor_describe_workflow_versions_response400.dart';import '../models/wor_describe_workflow_versions_response404.dart';import '../models/wor_describe_workflow_versions_response_result.dart';import '../models/wor_get_workflow_details_response400.dart';import '../models/wor_get_workflow_details_response404.dart';import '../models/wor_get_workflow_details_response_result.dart';import '../models/wor_list_workflow_instances_direction.dart';import '../models/wor_list_workflow_instances_response400.dart';import '../models/wor_list_workflow_instances_response404.dart';import '../models/wor_list_workflow_instances_response_result.dart';import '../models/wor_list_workflow_instances_status.dart';import '../models/wor_list_workflow_versions_response400.dart';import '../models/wor_list_workflow_versions_response_result.dart';import '../models/wor_list_workflows_response400.dart';import '../models/wor_list_workflows_response_result.dart';import '../models/wor_send_event_workflow_instance_response400.dart';import '../models/wor_send_event_workflow_instance_response404.dart';import '../models/wor_status_terminate_workflow_instances_response400.dart';import '../models/wor_status_terminate_workflow_instances_response404.dart';import '../models/wor_status_terminate_workflow_instances_response_result.dart';/// WorkflowsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WorkflowsApi with ApiExecutor {const WorkflowsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all Workflows
///
/// Lists all workflows configured for the account.
///
/// `GET /accounts/{account_id}/workflows`
Future<ApiResult<List<WorListWorkflowsResponseResult>, WorListWorkflowsResponse400>> worListWorkflows({required String accountId, double? perPage, double? page, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => WorListWorkflowsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorListWorkflowsResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Workflow details
///
/// Retrieves configuration and metadata for a specific workflow.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}`
Future<ApiResult<WorGetWorkflowDetailsResponseResult, OneOf2<WorGetWorkflowDetailsResponse400, WorGetWorkflowDetailsResponse404>>> worGetWorkflowDetails({required String workflowName, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorGetWorkflowDetailsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorGetWorkflowDetailsResponse400, WorGetWorkflowDetailsResponse404>.a(WorGetWorkflowDetailsResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorGetWorkflowDetailsResponse400, WorGetWorkflowDetailsResponse404>.b(WorGetWorkflowDetailsResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create/modify Workflow
///
/// Creates a new workflow or updates an existing workflow definition.
///
/// `PUT /accounts/{account_id}/workflows/{workflow_name}`
Future<ApiResult<WorCreateOrModifyWorkflowResponseResult, WorCreateOrModifyWorkflowResponse400>> worCreateOrModifyWorkflow({required String workflowName, required String accountId, required WorCreateOrModifyWorkflowRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorCreateOrModifyWorkflowResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorCreateOrModifyWorkflowResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Deletes a Workflow
///
/// Deletes a Workflow. This only deletes the Workflow and does not delete or modify any Worker associated to this Workflow or bounded to it.
///
/// `DELETE /accounts/{account_id}/workflows/{workflow_name}`
Future<ApiResult<WorDeleteWorkflowResponseResult, OneOf2<WorDeleteWorkflowResponse400, WorDeleteWorkflowResponse404>>> worDeleteWorkflow({required String workflowName, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorDeleteWorkflowResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorDeleteWorkflowResponse400, WorDeleteWorkflowResponse404>.a(WorDeleteWorkflowResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorDeleteWorkflowResponse400, WorDeleteWorkflowResponse404>.b(WorDeleteWorkflowResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List of workflow instances
///
/// Lists all instances of a workflow with their execution status.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/instances`
Future<ApiResult<List<WorListWorkflowInstancesResponseResult>, OneOf2<WorListWorkflowInstancesResponse400, WorListWorkflowInstancesResponse404>>> worListWorkflowInstances({required String workflowName, required String accountId, double? page, double? perPage, String? cursor, WorListWorkflowInstancesDirection? direction, WorListWorkflowInstancesStatus? status, DateTime? dateStart, DateTime? dateEnd, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (dateStart != null) {
  queryParameters['date_start'] = dateStart.toIso8601String();
}
if (dateEnd != null) {
  queryParameters['date_end'] = dateEnd.toIso8601String();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => WorListWorkflowInstancesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorListWorkflowInstancesResponse400, WorListWorkflowInstancesResponse404>.a(WorListWorkflowInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorListWorkflowInstancesResponse400, WorListWorkflowInstancesResponse404>.b(WorListWorkflowInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create a new workflow instance
///
/// Creates a new instance of a workflow, starting its execution.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances`
Future<ApiResult<WorCreateNewWorkflowInstanceResponseResult, OneOf2<WorCreateNewWorkflowInstanceResponse400, WorCreateNewWorkflowInstanceResponse404>>> worCreateNewWorkflowInstance({required String workflowName, required String accountId, WorCreateNewWorkflowInstanceRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorCreateNewWorkflowInstanceResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorCreateNewWorkflowInstanceResponse400, WorCreateNewWorkflowInstanceResponse404>.a(WorCreateNewWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorCreateNewWorkflowInstanceResponse400, WorCreateNewWorkflowInstanceResponse404>.b(WorCreateNewWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get logs and status from instance
///
/// Retrieves logs and execution status for a specific workflow instance.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}`
Future<ApiResult<WorDescribeWorkflowInstanceResponseResult, OneOf2<WorDescribeWorkflowInstanceResponse400, WorDescribeWorkflowInstanceResponse404>>> worDescribeWorkflowInstance({required String workflowName, required String instanceId, required String accountId, WorDescribeWorkflowInstanceSimple? simple, WorDescribeWorkflowInstanceOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (simple != null) {
  queryParameters['simple'] = simple.toJson();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/${Uri.encodeComponent(instanceId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorDescribeWorkflowInstanceResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorDescribeWorkflowInstanceResponse400, WorDescribeWorkflowInstanceResponse404>.a(WorDescribeWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorDescribeWorkflowInstanceResponse400, WorDescribeWorkflowInstanceResponse404>.b(WorDescribeWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Send event to instance
///
/// Sends an event to a running workflow instance to trigger state transitions.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/events/{event_type}`
Future<ApiResult<Map<String, dynamic>?, OneOf2<WorSendEventWorkflowInstanceResponse400, WorSendEventWorkflowInstanceResponse404>>> worSendEventWorkflowInstance({required String workflowName, required String instanceId, required String eventType, required String accountId, Map<String,dynamic>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/${Uri.encodeComponent(instanceId)}/events/${Uri.encodeComponent(eventType)}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorSendEventWorkflowInstanceResponse400, WorSendEventWorkflowInstanceResponse404>.a(WorSendEventWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorSendEventWorkflowInstanceResponse400, WorSendEventWorkflowInstanceResponse404>.b(WorSendEventWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Change status of instance
///
/// Changes the execution status of a workflow instance (e.g., pause, resume, terminate).
///
/// `PATCH /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/status`
Future<ApiResult<WorChangeStatusWorkflowInstanceResponseResult, OneOf3<WorChangeStatusWorkflowInstanceResponse400, WorChangeStatusWorkflowInstanceResponse404, WorChangeStatusWorkflowInstanceResponse409>>> worChangeStatusWorkflowInstance({required String workflowName, required String instanceId, required String accountId, WorChangeStatusWorkflowInstanceRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/${Uri.encodeComponent(instanceId)}/status',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorChangeStatusWorkflowInstanceResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf3<WorChangeStatusWorkflowInstanceResponse400, WorChangeStatusWorkflowInstanceResponse404, WorChangeStatusWorkflowInstanceResponse409>.a(WorChangeStatusWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<WorChangeStatusWorkflowInstanceResponse400, WorChangeStatusWorkflowInstanceResponse404, WorChangeStatusWorkflowInstanceResponse409>.b(WorChangeStatusWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return OneOf3<WorChangeStatusWorkflowInstanceResponse400, WorChangeStatusWorkflowInstanceResponse404, WorChangeStatusWorkflowInstanceResponse409>.c(WorChangeStatusWorkflowInstanceResponse409.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Batch create new Workflow instances
///
/// Creates multiple workflow instances in a single batch operation.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances/batch`
Future<ApiResult<List<WorBatchCreateWorkflowInstanceResponseResult>, OneOf2<WorBatchCreateWorkflowInstanceResponse400, WorBatchCreateWorkflowInstanceResponse404>>> worBatchCreateWorkflowInstance({required String workflowName, required String accountId, List<WorBatchCreateWorkflowInstanceRequest>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/batch',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => WorBatchCreateWorkflowInstanceResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorBatchCreateWorkflowInstanceResponse400, WorBatchCreateWorkflowInstanceResponse404>.a(WorBatchCreateWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorBatchCreateWorkflowInstanceResponse400, WorBatchCreateWorkflowInstanceResponse404>.b(WorBatchCreateWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Batch terminate instances of a workflow
///
/// Terminates multiple workflow instances in a single batch operation.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances/batch/terminate`
Future<ApiResult<WorBatchTerminateWorkflowInstancesResponseResult, OneOf2<WorBatchTerminateWorkflowInstancesResponse400, WorBatchTerminateWorkflowInstancesResponse404>>> worBatchTerminateWorkflowInstances({required String workflowName, required String accountId, List<String>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/batch/terminate',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorBatchTerminateWorkflowInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorBatchTerminateWorkflowInstancesResponse400, WorBatchTerminateWorkflowInstancesResponse404>.a(WorBatchTerminateWorkflowInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorBatchTerminateWorkflowInstancesResponse400, WorBatchTerminateWorkflowInstancesResponse404>.b(WorBatchTerminateWorkflowInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get status of the job responsible for terminate all instances of a workflow
///
/// Gets the status of a bulk workflow instance termination job.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/instances/terminate`
Future<ApiResult<WorStatusTerminateWorkflowInstancesResponseResult, OneOf2<WorStatusTerminateWorkflowInstancesResponse400, WorStatusTerminateWorkflowInstancesResponse404>>> worStatusTerminateWorkflowInstances({required String workflowName, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/terminate',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorStatusTerminateWorkflowInstancesResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorStatusTerminateWorkflowInstancesResponse400, WorStatusTerminateWorkflowInstancesResponse404>.a(WorStatusTerminateWorkflowInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorStatusTerminateWorkflowInstancesResponse400, WorStatusTerminateWorkflowInstancesResponse404>.b(WorStatusTerminateWorkflowInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List deployed Workflow versions
///
/// Lists all deployed versions of a workflow.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions`
Future<ApiResult<List<WorListWorkflowVersionsResponseResult>, WorListWorkflowVersionsResponse400>> worListWorkflowVersions({required String workflowName, required String accountId, double? perPage, double? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => WorListWorkflowVersionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorListWorkflowVersionsResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Workflow version details
///
/// Retrieves details for a specific deployed workflow version.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}`
Future<ApiResult<WorDescribeWorkflowVersionsResponseResult, OneOf2<WorDescribeWorkflowVersionsResponse400, WorDescribeWorkflowVersionsResponse404>>> worDescribeWorkflowVersions({required String workflowName, required String versionId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions/${Uri.encodeComponent(versionId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorDescribeWorkflowVersionsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<WorDescribeWorkflowVersionsResponse400, WorDescribeWorkflowVersionsResponse404>.a(WorDescribeWorkflowVersionsResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<WorDescribeWorkflowVersionsResponse400, WorDescribeWorkflowVersionsResponse404>.b(WorDescribeWorkflowVersionsResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get Workflow version dag
///
/// Retrieves the directed acyclic graph (DAG) representation of a workflow version.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/dag`
Future<ApiResult<WorDescribeWorkflowVersionsDagResponseResult, WorDescribeWorkflowVersionsDagResponse404>> worDescribeWorkflowVersionsDag({required String workflowName, required String versionId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions/${Uri.encodeComponent(versionId)}/dag',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorDescribeWorkflowVersionsDagResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return WorDescribeWorkflowVersionsDagResponse404.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get Workflow version graph
///
/// Retrieves the graph visualization of a workflow version.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/graph`
Future<ApiResult<WorDescribeWorkflowVersionsGraphResponseResult, WorDescribeWorkflowVersionsGraphResponse404>> worDescribeWorkflowVersionsGraph({required String workflowName, required String versionId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions/${Uri.encodeComponent(versionId)}/graph',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return WorDescribeWorkflowVersionsGraphResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return WorDescribeWorkflowVersionsGraphResponse404.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
