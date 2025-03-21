import 'package:flutter_network_library/data_provider.dart';
import 'package:get/get.dart';

class CourseListController extends GetxController{
  //variables
final RxBool _isLoading = false.obs;
final RxList _courseList = [].obs;
final RxString _imageBasepath = ''.obs; 
  //getter
bool get isLoading => _isLoading.value;
List get courseList => _courseList;
String get imageBasepath => _imageBasepath.value; 
  //setter

  //methods
  fetchCourseList () {
    _isLoading (true);
    RESTExecutor(domain: 'course', label: 'course-list',
    method: 'GET'
      , successCallback: (res) {
      _isLoading(false);
      _courseList(res.data['data']['result']??[]);
      _imageBasepath(res.data['imageBasePath']??'');
      print('imageBasepath : ${_imageBasepath.value}');

    },
    errorCallback: (error) {
      print("error fetching data! ${error.error['message']}");

    },).execute();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchCourseList();

  }
}