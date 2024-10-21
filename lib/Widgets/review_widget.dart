import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  final String title;
  final String price;
  final String date;
  final double rating;
  final String imageUrl;
  final String description;

  ReviewWidget({
    required this.title,
    required this.price,
    required this.date,
    required this.rating,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFFB4A098),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildReviewHeader(),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildStars(rating),
              Spacer(),
              Text(
                date,
                style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  // Helper method to build the review header with image, title, and price
  Widget _buildReviewHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildReviewImage(),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }

  // Method to build the review image (round shape)
  Widget _buildReviewImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8), // Rounded corners for the image
      child: Image.network(
        imageUrl,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }

  // Method to display stars for rating
  Widget _buildStars(double rating) {
    return Row(
      children: List.generate(
        rating.toInt(),
        (index) => Icon(Icons.star, color: Colors.amber, size: 16),
      ),
    );
  }
}
