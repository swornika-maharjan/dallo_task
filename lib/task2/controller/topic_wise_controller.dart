import 'package:get/get.dart';

class TopicWiseController extends GetxController {
  final RxList _topicwisecontainer =
      [
        {
          "title": "Topic wise test",
          "allbutton": "All",
          "day": "1D",
          "week": "1W",
          "month": "1M",
          "year": "1Y",
          "percentage": "",
          "top": "",
        },
        {
          "title": "Exam Progress",
          "allbutton": "All",
          "day": "1D",
          "week": "1W",
          "month": "1M",
          "year": "1Y",
          "percentage": "Your Percentage",
          "top": "Top Percentage",
        },
      ].obs;

  final RxString _selectedRange = '1D'.obs;
  final RxString _dropDownitems = 'All'.obs;

  final RxString _selectedItems = 'All'.obs;
  final RxString _range = '1D'.obs;
  //getter

  String get selectedRange => _selectedRange.value;
  List get topicWisecontainer => _topicwisecontainer;
  String get dropDownitems => _dropDownitems.value;

  String get selectedItems => _selectedItems.value;
  String get range => _range.value;

  //method used to select the range of the day, week, month, year.
  void selectRange(String range) {
    _selectedRange.value = range;
  }

  void onRangeSelected(String value) {
    _range.value = value;
  }

  // This method is used to select the items from the dropdown menu.
  void selectItems(String items) {
    _dropDownitems.value = items;
  }

  void onItemsSelected(String value) {
    _selectedItems.value = value;
  }
}
