// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError();

/// Decodes the payload for its declared status and content type.
static OrgsUpdatePatAccessesError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return OrgsUpdatePatAccessesError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OrgsUpdatePatAccessesError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsUpdatePatAccessesError422(ValidationError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OrgsUpdatePatAccessesError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return OrgsUpdatePatAccessesErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class OrgsUpdatePatAccessesError403 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class OrgsUpdatePatAccessesError404 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsUpdatePatAccessesError422 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class OrgsUpdatePatAccessesError500 extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsUpdatePatAccessesErrorUnknown extends OrgsUpdatePatAccessesError {const OrgsUpdatePatAccessesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
