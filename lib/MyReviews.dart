// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/review_widget.dart';

class MyReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'My Reviews',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Center the title
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
         ],
      ), 

      body:
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [  SizedBox( height: 50,) ,
          ReviewWidget(
            title: 'Coffe Table',
            date: '20/3/2022',
            imageUrl:
                'https://m.media-amazon.com/images/I/81B6SCkXamL._AC_UF894,1000_QL80_.jpg',
            price: '50.0',
            rating: 3,
            description: 'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price. ',
          ), 
          SizedBox( height: 50,)  ,
          ReviewWidget(
            title: 'Dining Table',
            date: '20/3/2022',
            imageUrl:
                'https://backend.furnitureofegypt.com/8x-e-commerce-v3-backend/storage/23234/google_drive_SFPbqy.jpg',
            price: '50.0',
            rating: 4,
            description: ' Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price. ',
          ),
           SizedBox( height: 50,) ,
          ReviewWidget(
            title: 'Television Table',
            date: '20/3/2022',
            imageUrl:
                'https://manzzeli.com/cdn/shop/files/33_832x700.jpg?v=1686655117',
            price: '50.0',
            rating: 5,
            description: ' Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price. ',
          ),
        ],
      ),
    );
  }
}
