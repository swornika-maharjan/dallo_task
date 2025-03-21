import 'package:flutter_network_library/authenticator.dart';
import 'package:flutter_network_library/config.dart';

final config = NetworkConfig(
  scheme: NetworkScheme.https,
  // host: 'api.eshikshanetwork.com',
  host: 'api-staging.eshikshanetwork.com',
  // host: '192.168.1.78',
  // port: 3005,
  clearCacheOnLogout: true,
  cacheForSeconds: 10,
  timeoutSeconds: 60,
  authHeaderFormatter: (accessToken) {
    return {'Authorization': 'Bearer $accessToken', ...DEFAULT_EXTRA_HEADER};
  },
  authDomain: 'auth',
  loginLabel: 'login',
  authResponseFormatter: (data) =>
      AuthTokenObject(accessToken: data['data']['token']),
);
var DEFAULT_EXTRA_HEADER = {
  // 'user-agent': "eShikshaNetwork/1.0",
};