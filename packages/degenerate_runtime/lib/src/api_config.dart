import 'api_client.dart';
import 'interceptor.dart';

/// Configuration for the generated API classes.
final class ApiConfig {
  final ApiClient client;
  final List<Interceptor> interceptors;
  final Map<String, String> defaultHeaders;
  final Duration? timeout;

  const ApiConfig({
    required this.client,
    this.interceptors = const [],
    this.defaultHeaders = const {},
    this.timeout,
  });
}
