import 'package:app_menu/detail_menu.dart';
import 'package:flutter/material.dart';
import 'package:app_menu/model/list_model.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text('Daftar Sepatu'),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            // return GridSepatu(gridCount: 2);
            return ListSepatu();
          } else if (constraints.maxWidth <= 1200) {
            return GridSepatu(gridCount: 4);
          } else {
            return GridSepatu(gridCount: 6);
          }
        }));
  }
}

class GridSepatu extends StatelessWidget {
  final int gridCount;
  const GridSepatu({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 16.0,
        children: listModelSepatu.map((data) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMenu(data: data);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      data.imageAsset,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      data.name,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Staatliches'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(data.merk),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ListSepatu extends StatelessWidget {
  const ListSepatu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final ModelSepatu data = listModelSepatu[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMenu(
                data: data,
              );
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    data.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          data.name,
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(data.merk)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: listModelSepatu.length,
    );
  }
}
