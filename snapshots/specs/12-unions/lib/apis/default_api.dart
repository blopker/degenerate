// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/bank_account.dart';import '../models/credit_card.dart';import '../models/error_model.dart';import '../models/extended_pet.dart';import '../models/notification.dart';import '../models/order.dart';import '../models/payment_method.dart';import '../models/pet_status.dart';import '../models/send_notification_response.dart';import '../models/shape.dart';import '../models/string_or_int.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all shapes
///
/// `GET /shapes`
Future<ApiResult<List<Shape>, Never>> listShapes({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/shapes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => Shape.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a shape
///
/// `POST /shapes`
Future<ApiResult<Shape, ErrorModel>> createShape({required Shape body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/shapes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Shape.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an order with nested items
///
/// `POST /orders`
Future<ApiResult<Order, ErrorModel>> createOrder({required Order body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/orders',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Order.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set payment method for an order (untagged oneOf)
///
/// `PUT /orders/{orderId}/payment`
Future<ApiResult<PaymentMethod, Never>> setPaymentMethod({required String orderId, required PaymentMethod body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/orders/${Uri.encodeComponent(orderId)}/payment',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => CreditCard.fromJson(v as Map<String, dynamic>), fromB: (v) => BankAccount.fromJson(v as Map<String, dynamic>),);
  },
);
 } 
/// Send a notification via email and/or SMS (anyOf)
///
/// `POST /notifications`
Future<ApiResult<SendNotificationResponse, Never>> sendNotification({required Notification body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/notifications',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return SendNotificationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List pets with extended info
///
/// `GET /pets`
Future<ApiResult<List<ExtendedPet>, Never>> listPets({PetStatus? status, StringOrInt? identifier, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (identifier != null) {
queryParametersList.add(ApiQueryParameter(name: 'identifier', value: identifier.toString(), allowReserved: false));
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/pets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => ExtendedPet.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get key-value metadata for a pet
///
/// `GET /pets/{petId}/metadata`
Future<ApiResult<Map<String, String>, Never>> getPetMetadata({required String petId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/pets/${Uri.encodeComponent(petId)}/metadata',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String));
  },
);
 } 
 }
