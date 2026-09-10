// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_images_list_images_response400.dart';import 'cloudflare_images_list_images_response4xx2.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CloudflareImagesListImagesError {const CloudflareImagesListImagesError();

/// Decodes the payload for its declared status and content type.
static CloudflareImagesListImagesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return CloudflareImagesListImagesError400(CloudflareImagesListImagesResponse400.fromJson(json as Map<String, dynamic>));
case >= 401 && < 500:
final json = jsonDecode(response.body);
return CloudflareImagesListImagesError4xx(CloudflareImagesListImagesResponse4xx2.fromJson(json as Map<String, dynamic>));
default:
return CloudflareImagesListImagesErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class CloudflareImagesListImagesError400 extends CloudflareImagesListImagesError {const CloudflareImagesListImagesError400(this.data);

/// The decoded response payload.
final CloudflareImagesListImagesResponse400 data;

}
/// Response for 4xx (application/json).
final class CloudflareImagesListImagesError4xx extends CloudflareImagesListImagesError {const CloudflareImagesListImagesError4xx(this.data);

/// The decoded response payload.
final CloudflareImagesListImagesResponse4xx2 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CloudflareImagesListImagesErrorUnknown extends CloudflareImagesListImagesError {const CloudflareImagesListImagesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
