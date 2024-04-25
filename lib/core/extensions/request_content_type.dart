import 'package:dart_frog/dart_frog.dart';
import 'package:frog_authentication/core/helper/constant.dart';

extension RequestContentTypeX on RequestContext {
  bool get isContentTypeJson =>
      request.headers['content-type'] == ConstantHelper.contentTypeJSON;
  bool get isContentTypeFormData =>
      request.headers['content-type'] == ConstantHelper.contentTypeFormData;
  bool get isContentTypeUrlEncoded =>
      request.headers['content-type'] == ConstantHelper.contentTypeUrlEncoded;
}
