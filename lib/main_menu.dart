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
      body: ListView.builder(
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
      ),
    );
  }
}
