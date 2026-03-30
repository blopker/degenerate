// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/failure.dart';import '../models/mq_consumer_request.dart';import '../models/mq_consumer_response.dart';import '../models/mq_event_subscription.dart';import '../models/mq_identifier.dart';import '../models/mq_queue.dart';import '../models/mq_queue_batch.dart';import '../models/mq_queue_message.dart';import '../models/queues_ack_messages_request.dart';import '../models/queues_ack_messages_response_result.dart';import '../models/queues_create_request.dart';import '../models/queues_pull_messages_request.dart';import '../models/queues_pull_messages_response_result.dart';import '../models/queues_purge_get_response_result.dart';import '../models/queues_purge_request.dart';import '../models/subscriptions_create_request.dart';import '../models/subscriptions_list_direction.dart';import '../models/subscriptions_list_order.dart';import '../models/subscriptions_patch_request.dart';import '../models/success.dart';/// QueueApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class QueueApi with ApiExecutor {const QueueApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Event Subscriptions
///
/// Get a paginated list of event subscriptions with optional sorting and filtering
///
/// `GET /accounts/{account_id}/event_subscriptions/subscriptions`
Future<ApiResult<List<MqEventSubscription>?, Never>> subscriptionsList({required MqIdentifier accountId, int? page, int? perPage, SubscriptionsListOrder? order, SubscriptionsListDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
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

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_subscriptions/subscriptions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MqEventSubscription.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Event Subscription
///
/// Create a new event subscription for a queue
///
/// `POST /accounts/{account_id}/event_subscriptions/subscriptions`
Future<ApiResult<MqEventSubscription?, Failure>> subscriptionsCreate({required MqIdentifier accountId, required SubscriptionsCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_subscriptions/subscriptions',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqEventSubscription.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return Failure.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Event Subscription
///
/// Get details about an existing event subscription
///
/// `GET /accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`
Future<ApiResult<MqEventSubscription?, Failure>> subscriptionsGet({required MqIdentifier accountId, required MqIdentifier subscriptionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_subscriptions/subscriptions/${Uri.encodeComponent(subscriptionId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqEventSubscription.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return Failure.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Event Subscription
///
/// Update an existing event subscription
///
/// `PATCH /accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`
Future<ApiResult<MqEventSubscription?, Failure>> subscriptionsPatch({required MqIdentifier accountId, required MqIdentifier subscriptionId, required SubscriptionsPatchRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_subscriptions/subscriptions/${Uri.encodeComponent(subscriptionId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqEventSubscription.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return Failure.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Event Subscription
///
/// Delete an existing event subscription
///
/// `DELETE /accounts/{account_id}/event_subscriptions/subscriptions/{subscription_id}`
Future<ApiResult<MqEventSubscription?, Never>> subscriptionsDelete({required MqIdentifier accountId, required MqIdentifier subscriptionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/event_subscriptions/subscriptions/${Uri.encodeComponent(subscriptionId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqEventSubscription.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List Queues
///
/// Returns the queues owned by an account.
///
/// `GET /accounts/{account_id}/queues`
Future<ApiResult<List<MqQueue>?, Never>> queuesList({required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MqQueue.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Queue
///
/// Create a new queue
///
/// `POST /accounts/{account_id}/queues`
Future<ApiResult<MqQueue?, Never>> queuesCreate({required MqIdentifier accountId, QueuesCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqQueue.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Queue
///
/// Get details about a specific queue.
///
/// `GET /accounts/{account_id}/queues/{queue_id}`
Future<ApiResult<MqQueue?, Never>> queuesGet({required MqIdentifier queueId, required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqQueue.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Queue
///
/// Updates a Queue. Note that this endpoint does not support partial updates. If successful, the Queue's configuration is overwritten with the supplied configuration.
///
/// `PUT /accounts/{account_id}/queues/{queue_id}`
Future<ApiResult<MqQueue?, Never>> queuesUpdate({required MqIdentifier queueId, required MqIdentifier accountId, MqQueue? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqQueue.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Queue
///
/// Updates a Queue.
///
/// `PATCH /accounts/{account_id}/queues/{queue_id}`
Future<ApiResult<MqQueue?, Never>> queuesUpdatePartial({required MqIdentifier queueId, required MqIdentifier accountId, MqQueue? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqQueue.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Queue
///
/// Deletes a queue
///
/// `DELETE /accounts/{account_id}/queues/{queue_id}`
Future<ApiResult<Success, Never>> queuesDelete({required MqIdentifier queueId, required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Success.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Queue Consumers
///
/// Returns the consumers for a Queue
///
/// `GET /accounts/{account_id}/queues/{queue_id}/consumers`
Future<ApiResult<List<MqConsumerResponse>?, Never>> queuesListConsumers({required MqIdentifier queueId, required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/consumers',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MqConsumerResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a Queue Consumer
///
/// Creates a new consumer for a Queue
///
/// `POST /accounts/{account_id}/queues/{queue_id}/consumers`
Future<ApiResult<MqConsumerResponse?, Never>> queuesCreateConsumer({required MqIdentifier queueId, required MqIdentifier accountId, MqConsumerRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/consumers',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqConsumerResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Queue Consumer
///
/// Fetches the consumer for a queue by consumer id
///
/// `GET /accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`
Future<ApiResult<MqConsumerResponse?, Never>> queuesGetConsumer({required MqIdentifier consumerId, required MqIdentifier queueId, required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/consumers/${Uri.encodeComponent(consumerId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqConsumerResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Queue Consumer
///
/// Updates the consumer for a queue, or creates one if it does not exist.
///
/// `PUT /accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`
Future<ApiResult<MqConsumerResponse?, Never>> queuesUpdateConsumer({required MqIdentifier consumerId, required MqIdentifier queueId, required MqIdentifier accountId, required MqConsumerRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/consumers/${Uri.encodeComponent(consumerId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqConsumerResponse.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Queue Consumer
///
/// Deletes the consumer for a queue.
///
/// `DELETE /accounts/{account_id}/queues/{queue_id}/consumers/{consumer_id}`
Future<ApiResult<Success, Never>> queuesDeleteConsumer({required MqIdentifier consumerId, required MqIdentifier queueId, required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/consumers/${Uri.encodeComponent(consumerId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Success.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Push Message
///
/// Push a message to a Queue
///
/// `POST /accounts/{account_id}/queues/{queue_id}/messages`
Future<ApiResult<Success, Never>> queuesPushMessage({required MqIdentifier queueId, required MqIdentifier accountId, MqQueueMessage? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/messages',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Success.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Acknowledge + Retry Queue Messages
///
/// Acknowledge + Retry messages from a Queue
///
/// `POST /accounts/{account_id}/queues/{queue_id}/messages/ack`
Future<ApiResult<QueuesAckMessagesResponseResult?, Never>> queuesAckMessages({required MqIdentifier queueId, required MqIdentifier accountId, QueuesAckMessagesRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/messages/ack',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? QueuesAckMessagesResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Push Message Batch
///
/// Push a batch of message to a Queue
///
/// `POST /accounts/{account_id}/queues/{queue_id}/messages/batch`
Future<ApiResult<Success, Never>> queuesPushMessages({required MqIdentifier queueId, required MqIdentifier accountId, MqQueueBatch? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/messages/batch',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Success.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Pull Queue Messages
///
/// Pull a batch of messages from a Queue
///
/// `POST /accounts/{account_id}/queues/{queue_id}/messages/pull`
Future<ApiResult<QueuesPullMessagesResponseResult?, Never>> queuesPullMessages({required MqIdentifier queueId, required MqIdentifier accountId, QueuesPullMessagesRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/messages/pull',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? QueuesPullMessagesResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Queue Purge Status
///
/// Get details about a Queue's purge status.
///
/// `GET /accounts/{account_id}/queues/{queue_id}/purge`
Future<ApiResult<QueuesPurgeGetResponseResult?, Never>> queuesPurgeGet({required MqIdentifier queueId, required MqIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/purge',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? QueuesPurgeGetResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Purge Queue
///
/// Deletes all messages from the Queue.
///
/// `POST /accounts/{account_id}/queues/{queue_id}/purge`
Future<ApiResult<MqQueue?, Never>> queuesPurge({required MqIdentifier queueId, required MqIdentifier accountId, QueuesPurgeRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/queues/${Uri.encodeComponent(queueId.toString())}/purge',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MqQueue.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
