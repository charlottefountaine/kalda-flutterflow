import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetRandomNumberCall {
  static Future<ApiCallResponse> call({
    int min = 1,
    int max = 20,
    int count = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getRandomNumber',
      apiUrl: 'http://www.randomnumberapi.com/api/v1.0/randomnumber',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'min': min,
        'max': max,
        'count': count,
      },
      returnBody: true,
    );
  }

  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$[0]''',
      );
}
