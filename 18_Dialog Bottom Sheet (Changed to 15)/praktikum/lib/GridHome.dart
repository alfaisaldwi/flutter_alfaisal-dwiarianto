import 'package:flutter/material.dart';

class GridHome extends StatefulWidget {
  const GridHome({
    Key? key,
  }) : super(key: key);

  @override
  State<GridHome> createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
  List image = [
    ListImages('assets/pict1.jpg'),
    ListImages('assets/pict2.jpg'),
    ListImages('assets/pict3.jpg'),
    ListImages('assets/pict4.jpg'),
    ListImages('assets/pict5.jpg'),
    ListImages('assets/pict7.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 6,
            itemBuilder: (_, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) {
                              return dialogImage();
                            },
                            settings: RouteSettings(arguments: image[index])));
                  },
                  child: Card(
                    child: Image.asset(image[index].url),
                  ),
                )));
  }
}

class ListImages {
  final String url;
  ListImages(this.url);
}

class dialogImage extends StatelessWidget {
  const dialogImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = ModalRoute.of(context)!.settings.arguments as ListImages;
    return Scaffold(
        body: GestureDetector(
      child:
          Container(alignment: Alignment.center, child: Image.asset(image.url)),
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return GestureDetector(
              child: Image.asset(image.url),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Wrap(
                      children: [Image.asset(image.url)],
                    );
                  },
                );
              });
        },
      ),
    ));
  }
}
