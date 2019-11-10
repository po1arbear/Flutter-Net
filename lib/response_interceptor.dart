import 'package:dio/dio.dart';
import 'result_data.dart';
class ResponseInterceptors extends InterceptorsWrapper {

  @override
  onResponse(Response response) {
    RequestOptions option = response.request;
    try {
      if (option.contentType != null &&
          option.contentType.primaryType == "text") {
        return new ResultData(response.data, true, 200);
      }
      ///一般只需要处理200的情况，300、400、500保留错误信息
      if (response.statusCode == 200 || response.statusCode == 201) {
        int code = response.data["code"];
        if (code == 0) {
          return new ResultData(response.data, true, 200,
              headers: response.headers);
        } else if (code == 100006 || code == 100007) {

        } else {
          return new ResultData(response.data, false, 200,
              headers: response.headers);
        }
      }
    } catch (e) {
      print(e.toString() + option.path);

      return new ResultData(response.data, false, response.statusCode,
          headers: response.headers);
    }

    return new ResultData(response.data, false, response.statusCode,
        headers: response.headers);
  }
}
