import 'package:get/get.dart';

class BookReqScreenController extends GetxController {
  final RxList _bookReqList =
      [
        {
          'date': ' 12 Oct, 2024',
          'status': 'Under review',
          'title':
              ' Textbook of Anatomy and Physiology for Health Science and Nursing',
          'author': ' Jearl Walker',
          'quantity': ' 2',
        },
        {
          'date': ' 12 Oct, 2024',
          'status': 'Approved',
          'title':
              ' A Complete Manual of Plant and Animal Science (Diploma in Agriculture, CTEVT) First Year, II Semester',
          'author': ' Sagar Dhakal, Suman Shrestha',
          'quantity': ' 2',
        },
        {
          'date': ' 12 Oct, 2024',
          'status': 'Rejected',
          'title': ' Easy Entry for Pharmacy Officer',
          'author': ' Sagar Dhakal, Suman Shrestha, Ravi Jaiswal',
          'quantity': ' 1',
        },
        {
          'date': ' 12 Oct, 2024',
          'status': 'Under review',
          'title':
              ' Textbook of Anatomy and Physiology for Health Science and Nursing',
          'author': ' Jearl Walker',
          'quantity': ' 2',
        },
        {
          'date': '12 Oct, 2024',
          'status': 'Rejected',
          'title': ' Easy Entry for Pharmacy Officer',
          'author': 'Sagar Dhakal, Suman Shrestha, Ravi Jaiswal',
          'quantity': ' 10',
        },
        {
          'date': ' 12 Oct, 2024',
          'status': 'Approved',
          'title':
              ' A Complete Manual of Plant and Animal Science (Diploma in Agriculture, CTEVT) First Year, II Semester',
          'author': 'Sagar Dhakal, Suman Shrestha',
          'quantity': ' 7',
        },
        {
          'date': ' 12 Oct, 2024',
          'status': 'Approved',
          'title': '  Easy Entry for Pharmacy Officer',
          'author': ' Sagar Dhakal, Suman Shrestha, Ravi Jaiswal',
          'quantity': ' 3',
        },
        {
          'date': ' 12 Oct, 2024',
          'status': 'Under review',
          'title':
              ' Textbook of Anatomy and Physiology for Health Science and Nursing',
          'author': 'Jearl Walker',
          'quantity': ' 5',
        },
      ].obs;

  //getter

  List get bookReqList => _bookReqList.value;
}
