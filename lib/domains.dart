import 'package:flutter_network_library/domain.dart';

const String basePath = '/api/v1';
final domains = {

'course': Domain(path: {
   'course-list': (_) => '$basePath/open/courses',
   
},),

'auth': Domain(path: {
  'login': (_) => '$basePath/auth/students/login/email',
  'signup': (_) => '$basePath/auth/students/signup',
  'otps': (_) => '$basePath/auth/otps/verify',

},),
};


