import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

class ResponseHelper {
  const ResponseHelper._();

  static Future<Response> json({
    required int status,
    required String message,
    required dynamic body,
    String? token,
  }) async {
    final bodyResponse = {
      'message': message,
      'data': body,
    };

    if (token != null) {
      bodyResponse['token'] = token;
    }

    return Response.json(statusCode: status, body: bodyResponse);
  }

  static Future<Response> success({
    required dynamic body,
    int status = HttpStatus.ok,
    String message = 'success',
    String? token,
  }) async {
    return ResponseHelper.json(
      status: status,
      message: message,
      body: body,
      token: token,
    );
  }

  static Future<Response> methodNotAllowed() async {
    return ResponseHelper.json(
      status: HttpStatus.methodNotAllowed,
      message: 'Method Not Allowed',
      body: null,
    );
  }

  static Future<Response> unAuthorized() async {
    return ResponseHelper.json(
      status: HttpStatus.unauthorized,
      message: 'UnAuthorized',
      body: null,
    );
  }

  static Future<Response> badRequest({required String message}) async {
    return ResponseHelper.json(
      status: HttpStatus.badRequest,
      message: message,
      body: null,
    );
  }

  static Future<Response> abortWithStatus({
    required int status,
    required String message,
  }) async {
    return ResponseHelper.json(
      status: status,
      message: message,
      body: null,
    );
  }
}
