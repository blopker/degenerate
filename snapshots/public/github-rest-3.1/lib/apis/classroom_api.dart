// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/classroom.dart';import '../models/classroom_accepted_assignment.dart';import '../models/classroom_assignment.dart';import '../models/classroom_assignment_grade.dart';import '../models/simple_classroom.dart';import '../models/simple_classroom_assignment.dart';/// ClassroomApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ClassroomApi with ApiExecutor {const ClassroomApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get an assignment
///
/// Gets a GitHub Classroom assignment. Assignment will only be returned if the current user is an administrator of the GitHub Classroom for the assignment.
///
/// `GET /assignments/{assignment_id}`
Future<ApiResult<ClassroomAssignment, BasicError>> classroomGetAnAssignment({required int assignmentId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/assignments/${Uri.encodeComponent(assignmentId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return ClassroomAssignment.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return BasicError.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List accepted assignments for an assignment
///
/// Lists any assignment repositories that have been created by students accepting a GitHub Classroom assignment. Accepted assignments will only be returned if the current user is an administrator of the GitHub Classroom for the assignment.
///
/// `GET /assignments/{assignment_id}/accepted_assignments`
Future<ApiResult<List<ClassroomAcceptedAssignment>, Never>> classroomListAcceptedAssignmentsForAnAssignment({required int assignmentId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/assignments/${Uri.encodeComponent(assignmentId.toString())}/accepted_assignments',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => ClassroomAcceptedAssignment.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get assignment grades
///
/// Gets grades for a GitHub Classroom assignment. Grades will only be returned if the current user is an administrator of the GitHub Classroom for the assignment.
///
/// `GET /assignments/{assignment_id}/grades`
Future<ApiResult<List<ClassroomAssignmentGrade>, BasicError>> classroomGetAssignmentGrades({required int assignmentId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/assignments/${Uri.encodeComponent(assignmentId.toString())}/grades',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => ClassroomAssignmentGrade.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return BasicError.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List classrooms
///
/// Lists GitHub Classroom classrooms for the current user. Classrooms will only be returned if the current user is an administrator of one or more GitHub Classrooms.
///
/// `GET /classrooms`
Future<ApiResult<List<SimpleClassroom>, Never>> classroomListClassrooms({int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/classrooms',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => SimpleClassroom.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get a classroom
///
/// Gets a GitHub Classroom classroom for the current user. Classroom will only be returned if the current user is an administrator of the GitHub Classroom.
///
/// `GET /classrooms/{classroom_id}`
Future<ApiResult<Classroom, BasicError>> classroomGetAClassroom({required int classroomId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/classrooms/${Uri.encodeComponent(classroomId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return Classroom.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return BasicError.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// List assignments for a classroom
///
/// Lists GitHub Classroom assignments for a classroom. Assignments will only be returned if the current user is an administrator of the GitHub Classroom.
///
/// `GET /classrooms/{classroom_id}/assignments`
Future<ApiResult<List<SimpleClassroomAssignment>, Never>> classroomListAssignmentsForAClassroom({required int classroomId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/classrooms/${Uri.encodeComponent(classroomId.toString())}/assignments',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => SimpleClassroomAssignment.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
