// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'job.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateJobSuccess {const CreateJobSuccess();

/// Decodes the payload for its declared status and content type.
static CreateJobSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200 || >= 202 && < 300:
return  const CreateJobSuccess2xx();case 201:
final json = jsonDecode(response.body);
return  CreateJobSuccess201(Job.fromJson(json as Map<String, dynamic>));default:
return  CreateJobSuccessUnknown(response); }}
}
/// Response for 2xx.
final class CreateJobSuccess2xx extends CreateJobSuccess {const CreateJobSuccess2xx();

}
/// Response for 201 (application/json).
final class CreateJobSuccess201 extends CreateJobSuccess {const CreateJobSuccess201(this.data);

/// The decoded response payload.
final Job data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateJobSuccessUnknown extends CreateJobSuccess {const CreateJobSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
