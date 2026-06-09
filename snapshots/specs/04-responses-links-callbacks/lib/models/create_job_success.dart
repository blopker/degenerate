// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'error_model.dart';import 'job.dart';/// Success responses of `POST /jobs`.
sealed class CreateJobSuccess {const CreateJobSuccess();

/// Parse the variant matching the response status code.
factory CreateJobSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => CreateJobSuccess201.parse(response),
  >= 200 && <= 299 => CreateJobSuccess2xx.parse(response),
  _ => CreateJobSuccessDefault.parse(response),
}; }

 }
/// The `201` response.
@immutable final class CreateJobSuccess201 extends CreateJobSuccess {const CreateJobSuccess201(this.data);

factory CreateJobSuccess201.parse(ApiResponse response) { return CreateJobSuccess201(Job.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Job data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateJobSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CreateJobSuccess201($data)'; } 
 }
/// The `2XX` range response.
@immutable final class CreateJobSuccess2xx extends CreateJobSuccess {const CreateJobSuccess2xx();

factory CreateJobSuccess2xx.parse(ApiResponse _) { return const CreateJobSuccess2xx(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CreateJobSuccess2xx; } 
@override int get hashCode { return (CreateJobSuccess2xx).hashCode; } 
@override String toString() { return 'CreateJobSuccess2xx()'; } 
 }
/// The `default` response.
@immutable final class CreateJobSuccessDefault extends CreateJobSuccess {const CreateJobSuccessDefault(this.data);

factory CreateJobSuccessDefault.parse(ApiResponse response) { return CreateJobSuccessDefault(ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ErrorModel data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateJobSuccessDefault && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CreateJobSuccessDefault($data)'; } 
 }
