import 'package:ecell_app/utils/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';



class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  static const String routeName = '/GalleryPage';

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  String selectedYear = "All"; // Default year
  String selectedEvent = "All"; // Default event

  final List<String> years = ["All", "2022", "2023", "2024"];
  final List<String> events = ["All", "Event 2", "Event 3"];
  final List<String> imagePaths = [
    'assets/images/galleryimg.jpeg',
    'assets/images/galleryimg.jpeg',
    'assets/images/galleryimg.jpeg',
    'assets/images/galleryimg.jpeg',
    'assets/images/galleryimg.jpeg',
    'assets/images/galleryimg.jpeg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add SizedBox for spacing below the AppBar
            SizedBox(height: 20), // Adjust height as per your needs

            // Central paragraph with padding from the left and right
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'E-Cell brings to its participants a host of events, ranging from immersive talks to exciting competitions!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            // Container for dropdowns and grid with RGB blue background
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9, // Making box narrower
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(14, 54, 105, 1),
                  borderRadius: BorderRadius.circular(7.0),
                ),
                 // Blue color using RGB values
                child: Column(
                  children: [
                    // Drop-down menus with labels for year and event
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0), // Reduced horizontal padding
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Year dropdown with label
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sort by Year:',
                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: SizedBox(
                                    height: 40,
                                    width: 60, // Set specific width for dropdown
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedYear,
                                        dropdownColor: Colors.white,
                                        iconEnabledColor: Colors.black,
                                        isExpanded: true,
                                        items: years.map((String year) {
                                          return DropdownMenuItem<String>(
                                            value: year,
                                            child: Text(
                                              year,
                                              style: TextStyle(
                                                  fontSize: 12, color: Colors.black),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedYear = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 10), // Space between two dropdowns

                          // Event dropdown with label
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sort by Event:',
                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  child: SizedBox(
                                    width: 100,
                                    height: 40,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedEvent,
                                        dropdownColor: Colors.white,
                                        iconEnabledColor: Colors.black,
                                        isExpanded: true,
                                        items: events.map((String event) {
                                          return DropdownMenuItem<String>(
                                            value: event,
                                            child: Text(
                                              event,
                                              style: TextStyle(
                                                  fontSize: 12, color: Colors.black),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            selectedEvent = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20), // Space between dropdown and grid

                    // Grid for images (one column, large pictures)
                    Center(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(), // Disable internal scrolling
                        shrinkWrap: true, // Shrinks the grid to fit content
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, // Single column
                          childAspectRatio: 16 / 9, // Adjust aspect ratio for larger pictures
                          mainAxisSpacing: 10, // Space between grid items
                        ),
                        itemCount: imagePaths.length, // Using the actual number of images
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              // The image itself
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),

                              // Positioned for upper half border (e.g., red)
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 5, // Adjust border thickness
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(22, 39, 64, 1), // Upper half border color
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),

                              // Positioned for lower half border (e.g., blue)
                              Positioned(
                                left: 0,
                                top: 0,
                                bottom: 0,
                                width: 5, // Width of the left border
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(22, 39, 64, 1), // Upper half color
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(68, 110, 163, 1), // Lower half color
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Positioned for right dual-colored border
                              Positioned(
                                right: 0,
                                top: 0,
                                bottom: 0,
                                width: 5, // Width of the right border
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(22, 39, 64, 1), // Upper half color
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color.fromRGBO(68, 110, 163, 1), // Lower half color
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 5, // Adjust border thickness
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(68, 110, 163, 1), // Lower half border color
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
