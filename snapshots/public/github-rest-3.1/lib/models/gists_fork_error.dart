// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GistsForkError {const GistsForkError();

/// Decodes the payload for its declared status and content type.
static GistsForkError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const GistsForkError304();
case 403:
final json = jsonDecode(response.body);
return GistsForkError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return GistsForkError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return GistsForkError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return GistsForkErrorUnknown(response);
}
}
}
/// Response for 304.
final class GistsForkError304 extends GistsForkError {const GistsForkError304();

}
/// Response for 403 (application/json).
final class GistsForkError403 extends GistsForkError {const GistsForkError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class GistsForkError404 extends GistsForkError {const GistsForkError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class GistsForkError422 extends GistsForkError {const GistsForkError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GistsForkErrorUnknown extends GistsForkError {const GistsForkErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
