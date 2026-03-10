import 'api_client.dart';
import 'interceptor.dart';

/// Configuration for the generated API classes.
final class ApiConfig {
  final ApiClient client;
  final List<Interceptor> interceptors;
  final Map<String, String> defaultHeaders;
  final Map<String, String> defaultQueryParameters;
  final Map<String, String> defaultCookies;
  final Duration? timeout;

  const ApiConfig({
    required this.client,
    this.interceptors = const [],
    this.defaultHeaders = const {},
    this.defaultQueryParameters = const {},
    this.defaultCookies = const {},
    this.timeout,
  });

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
