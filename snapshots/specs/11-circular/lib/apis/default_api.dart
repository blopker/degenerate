// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/category.dart';import '../models/department.dart';import '../models/employee.dart';import '../models/file_system_node.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List employees (A references B, B references A)
///
/// `GET /employees`
Future<ApiResult<List<Employee>, Never>> listEmployees({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/employees',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => Employee.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List departments (B references A)
///
/// `GET /departments`
Future<ApiResult<List<Department>, Never>> listDepartments({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/departments',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => Department.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List categories (self-referencing tree)
///
/// `GET /categories`
Future<ApiResult<List<Category>, Never>> listCategories({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/categories',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => Category.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get filesystem tree (self-referencing with union)
///
/// `GET /filesystem`
Future<ApiResult<FileSystemNode, Never>> getFilesystem({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/filesystem',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return FileSystemNode.fromJson(json as Map<String, dynamic>);
  },
);
 } 
 }
