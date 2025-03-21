import 'package:get/get.dart';

class GridViewController extends GetxController {
  var isLoading = false.obs;
  var imageUrls = <String>[].obs;

  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  void fetchImages() async {
    try {
      await Future.delayed(Duration(seconds: 2)); // Simulating network delay

      // Replace these with actual image URLs
      imageUrls.assignAll([
        'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
        'https://images.unsplash.com/photo-1521747116042-5a810fda9664',
        'https://images.unsplash.com/photo-1517841905240-472988babdf9',
        'https://www.istockphoto.com/resources/images/PhotoFTLP/P2-NOV-iStock-1979951980.jpg',
        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1',
        'https://images.unsplash.com/photo-1506084868230-bb9d95c24759',
        'https://media.istockphoto.com/id/853555360/vector/spring-green-nature-background-with-white-chamomiles.jpg?s=612x612&w=0&k=20&c=PRcfJOxwLQHKLGFIxX4sptcNmXY5E0zuaq1l2D3hUrw=',
        'https://media.istockphoto.com/id/1199706482/vector/hand-drawn-spring-leaves-background.jpg?s=612x612&w=0&k=20&c=FtT9bWh9GA5V7gfEANtWw2ezw6Lfiq1YOEgiqBTvVhY=',
        'https://media.istockphoto.com/id/1210349865/vector/vector-seamless-pattern-with-pink-flowers.jpg?s=612x612&w=0&k=20&c=hvvzV2OzaOnpAq-n6wMGhfu3lviqiKBzruFRctl5pfg=',
        'https://media.istockphoto.com/id/1301376965/vector/abstract-geometric-vector-pattern-in-scandinavian-style-agriculture-symbol-harvest-of-garden.jpg?s=612x612&w=0&k=20&c=PxJyYY3FgJx7fkW4_GrUW4c-a-DlFGGSTa00lAcmAfs=',
        'https://media.istockphoto.com/id/1081811190/vector/fresh-green-frame.jpg?s=612x612&w=0&k=20&c=IShTfdkj0VQwqA3EZ-TM7h83-6ViGRcKSraBs8eF-_k=',
      ]);
    } catch (e) {
      print("Error fetching images: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
