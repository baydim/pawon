cari sediri wekkkkk

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  Widget appbar() {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Positioned(
              left: -10,
              child: MaterialButton(
                  elevation: 2,
                  focusElevation: 0,
                  hoverElevation: 0,
                  highlightElevation: 0,
                  splashColor: putih,
                  height: 40,
                  color: teal,
                  shape: CircleBorder(),
                  onPressed: () {},
                  child: Icon(
                    Icons.menu_rounded,
                    color: putih,
                  ))),
          Positioned(
              right: 40,
              child: Hero(
                tag: 'cari',
                child: MaterialButton(
                    elevation: 2,
                    focusElevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,
                    splashColor: putih,
                    height: 40,
                    color: teal,
                    shape: CircleBorder(),
                    onPressed: () {
                      Get.to(Cari());
                    },
                    child: Icon(
                      Icons.search_rounded,
                      color: putih,
                    )),
              )),
          Positioned(
              right: -10,
              child: Hero(
                tag: 'list',
                child: MaterialButton(
                    elevation: 2,
                    focusElevation: 0,
                    hoverElevation: 0,
                    highlightElevation: 0,
                    splashColor: putih,
                    height: 40,
                    color: teal,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.turned_in_not_outlined,
                      color: putih,
                    )),
              )),
        ],
      ),
    );
  }

  Widget carousel(final lebar) {
    return CarouselSlider(
      options: CarouselOptions(height: 140, autoPlay: true),
      items: ["assets/depan.jpg", "assets/o2.jpg", "assets/nak.jpg"].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: lebar,
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                child: ClipRRect(
                  borderRadius: border,
                  child: Image.asset(
                    i,
                    fit: BoxFit.cover,
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
  
  ////////////////////////////////copyrighthttps://github.com/baydim/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: putih,
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              floating: true,
              expandedHeight: 0,
              flexibleSpace: appbar()),
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                carousel(MediaQuery.of(context).size.width),
                Row(
                  children: <Widget>[],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
