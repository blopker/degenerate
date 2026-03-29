// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/wor_batch_create_workflow_instance_request.dart';import '../models/wor_batch_create_workflow_instance_response.dart';import '../models/wor_batch_create_workflow_instance_response400.dart';import '../models/wor_batch_terminate_workflow_instances_response.dart';import '../models/wor_batch_terminate_workflow_instances_response400.dart';import '../models/wor_change_status_workflow_instance_request.dart';import '../models/wor_change_status_workflow_instance_response.dart';import '../models/wor_change_status_workflow_instance_response400.dart';import '../models/wor_create_new_workflow_instance_request.dart';import '../models/wor_create_new_workflow_instance_response.dart';import '../models/wor_create_new_workflow_instance_response400.dart';import '../models/wor_create_or_modify_workflow_request.dart';import '../models/wor_create_or_modify_workflow_response.dart';import '../models/wor_create_or_modify_workflow_response400.dart';import '../models/wor_delete_workflow_response.dart';import '../models/wor_delete_workflow_response400.dart';import '../models/wor_describe_workflow_instance_order.dart';import '../models/wor_describe_workflow_instance_response.dart';import '../models/wor_describe_workflow_instance_response400.dart';import '../models/wor_describe_workflow_instance_simple.dart';import '../models/wor_describe_workflow_versions_dag_response.dart';import '../models/wor_describe_workflow_versions_dag_response404.dart';import '../models/wor_describe_workflow_versions_graph_response.dart';import '../models/wor_describe_workflow_versions_graph_response404.dart';import '../models/wor_describe_workflow_versions_response.dart';import '../models/wor_describe_workflow_versions_response400.dart';import '../models/wor_get_workflow_details_response.dart';import '../models/wor_get_workflow_details_response400.dart';import '../models/wor_list_workflow_instances_direction.dart';import '../models/wor_list_workflow_instances_response.dart';import '../models/wor_list_workflow_instances_response400.dart';import '../models/wor_list_workflow_instances_status.dart';import '../models/wor_list_workflow_versions_response.dart';import '../models/wor_list_workflow_versions_response400.dart';import '../models/wor_list_workflows_response.dart';import '../models/wor_list_workflows_response400.dart';import '../models/wor_send_event_workflow_instance_response.dart';import '../models/wor_send_event_workflow_instance_response400.dart';import '../models/wor_status_terminate_workflow_instances_response.dart';import '../models/wor_status_terminate_workflow_instances_response400.dart';/// WorkflowsApi operations.
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
Future<ApiResult<WorListWorkflowsResponse, WorListWorkflowsResponse400>> worListWorkflows({required String accountId, double? perPage, double? page, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (page != null) queryParameters['page'] = page.toString();
if (search != null) queryParameters['search'] = search;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorListWorkflowsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorListWorkflowsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Workflow details
///
/// Retrieves configuration and metadata for a specific workflow.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}`
Future<ApiResult<WorGetWorkflowDetailsResponse, WorGetWorkflowDetailsResponse400>> worGetWorkflowDetails({required String workflowName, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorGetWorkflowDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorGetWorkflowDetailsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create/modify Workflow
///
/// Creates a new workflow or updates an existing workflow definition.
///
/// `PUT /accounts/{account_id}/workflows/{workflow_name}`
Future<ApiResult<WorCreateOrModifyWorkflowResponse, WorCreateOrModifyWorkflowResponse400>> worCreateOrModifyWorkflow({required String workflowName, required String accountId, required WorCreateOrModifyWorkflowRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorCreateOrModifyWorkflowResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorCreateOrModifyWorkflowResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a Workflow
///
/// Deletes a Workflow. This only deletes the Workflow and does not delete or modify any Worker associated to this Workflow or bounded to it.
///
/// `DELETE /accounts/{account_id}/workflows/{workflow_name}`
Future<ApiResult<WorDeleteWorkflowResponse, WorDeleteWorkflowResponse400>> worDeleteWorkflow({required String workflowName, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorDeleteWorkflowResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorDeleteWorkflowResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List of workflow instances
///
/// Lists all instances of a workflow with their execution status.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/instances`
Future<ApiResult<WorListWorkflowInstancesResponse, WorListWorkflowInstancesResponse400>> worListWorkflowInstances({required String workflowName, required String accountId, double? page, double? perPage, String? cursor, WorListWorkflowInstancesDirection? direction, WorListWorkflowInstancesStatus? status, DateTime? dateStart, DateTime? dateEnd, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (cursor != null) queryParameters['cursor'] = cursor;
if (direction != null) queryParameters['direction'] = direction.toJson();
if (status != null) queryParameters['status'] = status.toJson();
if (dateStart != null) queryParameters['date_start'] = dateStart.toString();
if (dateEnd != null) queryParameters['date_end'] = dateEnd.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorListWorkflowInstancesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorListWorkflowInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new workflow instance
///
/// Creates a new instance of a workflow, starting its execution.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances`
Future<ApiResult<WorCreateNewWorkflowInstanceResponse, WorCreateNewWorkflowInstanceResponse400>> worCreateNewWorkflowInstance({required String workflowName, required String accountId, WorCreateNewWorkflowInstanceRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorCreateNewWorkflowInstanceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorCreateNewWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get logs and status from instance
///
/// Retrieves logs and execution status for a specific workflow instance.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}`
Future<ApiResult<WorDescribeWorkflowInstanceResponse, WorDescribeWorkflowInstanceResponse400>> worDescribeWorkflowInstance({required String workflowName, required String instanceId, required String accountId, WorDescribeWorkflowInstanceSimple? simple, WorDescribeWorkflowInstanceOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (simple != null) queryParameters['simple'] = simple.toJson();
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/${Uri.encodeComponent(instanceId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorDescribeWorkflowInstanceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorDescribeWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Send event to instance
///
/// Sends an event to a running workflow instance to trigger state transitions.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/events/{event_type}`
Future<ApiResult<WorSendEventWorkflowInstanceResponse, WorSendEventWorkflowInstanceResponse400>> worSendEventWorkflowInstance({required String workflowName, required String instanceId, required String eventType, required String accountId, Map<String,dynamic>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/${Uri.encodeComponent(instanceId)}/events/${Uri.encodeComponent(eventType)}',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorSendEventWorkflowInstanceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorSendEventWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Change status of instance
///
/// Changes the execution status of a workflow instance (e.g., pause, resume, terminate).
///
/// `PATCH /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}/status`
Future<ApiResult<WorChangeStatusWorkflowInstanceResponse, WorChangeStatusWorkflowInstanceResponse400>> worChangeStatusWorkflowInstance({required String workflowName, required String instanceId, required String accountId, WorChangeStatusWorkflowInstanceRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/${Uri.encodeComponent(instanceId)}/status',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorChangeStatusWorkflowInstanceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorChangeStatusWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Batch create new Workflow instances
///
/// Creates multiple workflow instances in a single batch operation.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances/batch`
Future<ApiResult<WorBatchCreateWorkflowInstanceResponse, WorBatchCreateWorkflowInstanceResponse400>> worBatchCreateWorkflowInstance({required String workflowName, required String accountId, List<WorBatchCreateWorkflowInstanceRequest>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/batch',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorBatchCreateWorkflowInstanceResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorBatchCreateWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Batch terminate instances of a workflow
///
/// Terminates multiple workflow instances in a single batch operation.
///
/// `POST /accounts/{account_id}/workflows/{workflow_name}/instances/batch/terminate`
Future<ApiResult<WorBatchTerminateWorkflowInstancesResponse, WorBatchTerminateWorkflowInstancesResponse400>> worBatchTerminateWorkflowInstances({required String workflowName, required String accountId, List<String>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/batch/terminate',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorBatchTerminateWorkflowInstancesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorBatchTerminateWorkflowInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get status of the job responsible for terminate all instances of a workflow
///
/// Gets the status of a bulk workflow instance termination job.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/instances/terminate`
Future<ApiResult<WorStatusTerminateWorkflowInstancesResponse, WorStatusTerminateWorkflowInstancesResponse400>> worStatusTerminateWorkflowInstances({required String workflowName, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/instances/terminate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorStatusTerminateWorkflowInstancesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorStatusTerminateWorkflowInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List deployed Workflow versions
///
/// Lists all deployed versions of a workflow.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions`
Future<ApiResult<WorListWorkflowVersionsResponse, WorListWorkflowVersionsResponse400>> worListWorkflowVersions({required String workflowName, required String accountId, double? perPage, double? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (page != null) queryParameters['page'] = page.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorListWorkflowVersionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorListWorkflowVersionsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Workflow version details
///
/// Retrieves details for a specific deployed workflow version.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}`
Future<ApiResult<WorDescribeWorkflowVersionsResponse, WorDescribeWorkflowVersionsResponse400>> worDescribeWorkflowVersions({required String workflowName, required String versionId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions/${Uri.encodeComponent(versionId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorDescribeWorkflowVersionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorDescribeWorkflowVersionsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Workflow version dag
///
/// Retrieves the directed acyclic graph (DAG) representation of a workflow version.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/dag`
Future<ApiResult<WorDescribeWorkflowVersionsDagResponse, WorDescribeWorkflowVersionsDagResponse404>> worDescribeWorkflowVersionsDag({required String workflowName, required String versionId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions/${Uri.encodeComponent(versionId)}/dag',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorDescribeWorkflowVersionsDagResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorDescribeWorkflowVersionsDagResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Workflow version graph
///
/// Retrieves the graph visualization of a workflow version.
///
/// `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}/graph`
Future<ApiResult<WorDescribeWorkflowVersionsGraphResponse, WorDescribeWorkflowVersionsGraphResponse404>> worDescribeWorkflowVersionsGraph({required String workflowName, required String versionId, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/workflows/${Uri.encodeComponent(workflowName)}/versions/${Uri.encodeComponent(versionId)}/graph',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return WorDescribeWorkflowVersionsGraphResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return WorDescribeWorkflowVersionsGraphResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
