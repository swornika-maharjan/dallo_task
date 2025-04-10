import 'package:get/get.dart';

class OrderIssuesController extends GetxController {
  final RxList _issuesList =
      [
        {
          'question': 'What is the return policy?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question': 'What are the shipping options?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question':
              'What are the international taxes, duties, etc., that I have to pay?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question': 'When will I receive my order?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question': 'What do I do if I receive a defective order?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question': 'How do I make changes to an order I’ve already placed?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question':
              'How do I contact your company if my question isn’t answered here?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question': 'What do I do if I never received my order?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
        {
          'question': 'Where are you located?',
          'answer':
              'We primarily utilize Flutter for developing cross-platform mobile applications. This choice streamlines development, ensuring consistent and efficient outputs for both iOS and Android platforms.',
        },
      ].obs;

  List get issuesList => _issuesList.value;
}
