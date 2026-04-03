import 'package:degenerate_runtime/src/api_client.dart';
import 'package:degenerate_runtime/src/interceptor.dart';

/// Configuration for the generated API classes.
final class ApiConfig {
  /// Creates an [ApiConfig] with the given client and optional settings.
  const ApiConfig({
    required this.client,
    this.interceptors = const [],
    this.defaultHeaders = const {},
    this.defaultQueryParameters = const {},
    this.defaultCookies = const {},
    this.timeout,
  });

  /// The HTTP client used to send requests.
  final ApiClient client;

  /// Middleware applied to every request/response cycle.
  final List<Interceptor> interceptors;

  /// Headers added to every request.
  final Map<String, String> defaultHeaders;

  /// Query parameters added to every request.
  final Map<String, String> defaultQueryParameters;

  /// Cookies added to every request.
  final Map<String, String> defaultCookies;

  /// Default timeout for all requests. Can be overridden per-request.
  final Duration? timeout;

  /// Creates a copy of this config with the given fields replaced.
  ApiConfig copyWith({
    ApiClient? client,
    List<Interceptor>? interceptors,
    Map<String, String>? defaultHeaders,
    Map<String, String>? defaultQueryParameters,
    Map<String, String>? defaultCookies,
    Duration? Function()? timeout,
  }) {
    return ApiConfig(
      client: client ?? this.client,
      interceptors: interceptors ?? this.interceptors,
      defaultHeaders: defaultHeaders ?? this.defaultHeaders,
      defaultQueryParameters:
          defaultQueryParameters ?? this.defaultQueryParameters,
      defaultCookies: defaultCookies ?? this.defaultCookies,
      timeout: timeout != null ? timeout() : this.timeout,
    );
  }
}
