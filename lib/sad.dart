import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'imageData.dart';

//Code use PinterestGrid
class sad extends StatefulWidget {
  const sad({Key key}) : super(key: key);

  @override
  _sadState createState() => _sadState();
}

class _sadState extends State<sad> {
  int _currentIndex = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.black,
//          leading: IconButton(
//            icon: Icon(Icons.keyboard_arrow_left, color: Colors.white),
//            onPressed: () => Navigator.of(context).pop(),
//          ),
//          title: Text("exposure",style: GoogleFonts.comfortaa(),),
//          centerTitle: true,
//        ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, top: 76),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Home Page",
                          style: GoogleFonts.comfortaa(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.black,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                CarouselSlider.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context, index) => ImageCard(
                    imageData: imageList[index],
                  ),
                  options: CarouselOptions(
                    height: 343,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          _currentIndex = index;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 25),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: map<Widget>(imageList, (index, url) {
//                return Container(
//                  width: 10.0,
//                  height: 10.0,
//                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                  decoration: BoxDecoration(
//                    shape: BoxShape.circle,
//                    color: _currentIndex == index
//                        ? Colors.blueAccent
//                        : Colors.grey,
//                  ),
//                );
//              }),
//            ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: .99),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(8),
                  crossAxisCount: 2,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) => ImageCard(
                    imageData: imageList[index],
                  ),
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 10.0,
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: Image.network(imageData.imageUrl, fit: BoxFit.fill),
    );
  }
}
