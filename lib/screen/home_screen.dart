import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/img-1.jpg',
      'assets/img-2.jpg',
      'assets/img-3.jpg',
      'assets/img-4.jpg',
      'assets/img-5.jpg',
      'assets/img-6.jpg',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Galeri Gambar :",
                style: GoogleFonts.montserrat(
                    fontSize: 26.0, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20.0),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 1,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return _buildImageBox(context, images[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildImageBox(BuildContext context, String imagePath) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(
        context,
        '/detail',
        arguments: imagePath,
      );
    },
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.black54,
          child: Text(
            "Image ${imagePath.split('/').last}",
            style: GoogleFonts.montserrat(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
