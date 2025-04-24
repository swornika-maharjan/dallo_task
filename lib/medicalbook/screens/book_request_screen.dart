import 'package:flutter/material.dart';
import 'package:flutterproject/medicalbook/component/book_req_screen_component.dart';
import 'package:flutterproject/medicalbook/component_wrapper.dart';
import 'package:flutterproject/medicalbook/controller/book_req_screen_controller.dart';
import 'package:flutterproject/medicalbook/screens/book_req_form_screen.dart';
import 'package:flutterproject/theme/dt_color.dart';
import 'package:flutterproject/theme/dt_styles.dart';
import 'package:get/get.dart';

class BookRequestScreen extends StatelessWidget {
  BookRequestScreen({super.key});
  final BookReqScreenController reqcontroller = Get.put(
    BookReqScreenController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DTColor.white,
        title: Text(
          'Book request',
          style: header4.copyWith(
            fontWeight: FontWeight.w700,
            color: DTColor.academyBlue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Column(
            children: [
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                shrinkWrap: true,
                itemCount: reqcontroller.bookReqList.length,
                itemBuilder: (context, index) {
                  final approved =
                      reqcontroller.bookReqList[index]['status'] == 'Approved';
                  final underreview =
                      reqcontroller.bookReqList[index]['status'] ==
                      'Under review';

                  return BookReqScreenComponent(
                    padding: EdgeInsets.zero,
                    date:
                        'Requested:${reqcontroller.bookReqList[index]['date']}',
                    status: '${reqcontroller.bookReqList[index]['status']}',
                    title:
                        'Title :${reqcontroller.bookReqList[index]['title']}',
                    author:
                        'Author name:${reqcontroller.bookReqList[index]['author']}',
                    quantity: reqcontroller.bookReqList[index]['quantity'],
                    backgroundColor:
                        underreview
                            ? DTColor.liteGreen
                            : approved
                            ? DTColor.greenLight
                            : DTColor.liteRed,
                    color:
                        underreview
                            ? DTColor.starCommandBlue
                            : approved
                            ? DTColor.green
                            : DTColor.red,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: GestureDetector(
          onTap: () => Get.to(() => BookReqFormScreen()),
          child: ComponentWrapper(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            backgroundColor: DTColor.orange,
            width: 328,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Request Book',
                  style: header5.copyWith(
                    color: DTColor.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
