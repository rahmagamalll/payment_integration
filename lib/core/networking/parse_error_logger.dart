// parse_error_logger.dart
import 'dart:developer';

import 'package:dio/dio.dart';

class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, RequestOptions options) {
    log('Error: $error');
    log('StackTrace: $stackTrace');
    log('RequestOptions: ${options.uri}');
  }
}
