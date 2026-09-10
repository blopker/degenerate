// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError();

/// Decodes the payload for its declared status and content type.
static CodesOfConductGetConductCodeError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodesOfConductGetConductCodeError304();
case 404:
final json = jsonDecode(response.body);
return CodesOfConductGetConductCodeError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodesOfConductGetConductCodeErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodesOfConductGetConductCodeError304 extends CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError304();

 }
/// Response for 404 (application/json).
final class CodesOfConductGetConductCodeError404 extends CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodesOfConductGetConductCodeErrorUnknown extends CodesOfConductGetConductCodeError {const CodesOfConductGetConductCodeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
