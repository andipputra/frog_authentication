import 'package:dart_frog/dart_frog.dart';
import 'package:frog_authentication/core/helper/constant.dart';

enum ContentType { json, formData, formUrlEncoded, text }

class ContentTypeHelper {
  const ContentTypeHelper._();

  static ContentType identify(RequestContext context) {
    final contentType = context.request.headers['content-type'];

    return switch (contentType) {
      ConstantHelper.contentTypeJSON => ContentType.json,
      ConstantHelper.contentTypeFormData => ContentType.formData,
      ConstantHelper.contentTypeUrlEncoded => ContentType.formUrlEncoded,
      _ => ContentType.text,
    };
  }
}
