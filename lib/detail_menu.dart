import 'package:app_menu/model/list_model.dart';
import 'package:flutter/material.dart';

class DetailMenu extends StatelessWidget {
  final ModelSepatu data;

  DetailMenu({Key? key, required this.data}) : super(key: key);

  var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage(data: data);
      } else {
        return DetailMobilePage(data: data);
      }
    });
  }
}

class DetailWebPage extends StatefulWidget {
  final ModelSepatu data;

  DetailWebPage({Key? key, required this.data}) : super(key: key);

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    void dispose() {
      _scrollController.dispose();
      super.dispose();
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1080 ? 800 : 1080,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.discount,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      widget.data.merk,
                      style: TextStyle(
                        fontFamily: 'Staatliches',
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.data.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16.0),
                          Scrollbar(
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: EdgeInsets.only(bottom: 16),
                              child: Container(
                                height: 150,
                                padding: EdgeInsets.only(bottom: 16.0),
                                child: ListView(
                                  controller: _scrollController,
                                  scrollDirection: Axis.horizontal,
                                  children: widget.data.imageUrls.map((url) {
                                    return Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(url),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                child: Text(
                                  widget.data.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.people,
                                        color: Colors.teal,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.data.gender,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  FavoriteButton(),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.color_lens,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.data.colorSepatu,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        widget.data.priceSepatu,
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          fontFamily: 'Staatliches',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  widget.data.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final ModelSepatu data;

  DetailMobilePage({Key? key, required this.data}) : super(key: key);

  var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Image.asset(
                      data.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  data.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Staatliches'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.discount,
                          color: Colors.indigo,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          data.merk,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          color: Colors.teal,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          data.gender,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.color_lens,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          data.colorSepatu,
                          style: informationTextStyle,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.blueGrey,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          data.priceSepatu,
                          style: informationTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  data.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: Scrollbar(
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: data.imageUrls.map((url) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                url,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList()),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
