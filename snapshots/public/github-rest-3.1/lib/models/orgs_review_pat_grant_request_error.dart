// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError();

/// Decodes the payload for its declared status and content type.
static OrgsReviewPatGrantRequestError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return OrgsReviewPatGrantRequestError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OrgsReviewPatGrantRequestError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsReviewPatGrantRequestError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OrgsReviewPatGrantRequestError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return OrgsReviewPatGrantRequestErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class OrgsReviewPatGrantRequestError403 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class OrgsReviewPatGrantRequestError404 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class OrgsReviewPatGrantRequestError422 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// Response for 500 (application/json).
final class OrgsReviewPatGrantRequestError500 extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsReviewPatGrantRequestErrorUnknown extends OrgsReviewPatGrantRequestError {const OrgsReviewPatGrantRequestErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
