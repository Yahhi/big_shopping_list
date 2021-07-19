import 'package:big_shopping_list/item_data.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key, required this.data, required this.sideSize, this.onDelete})
      : super(key: key);

  final ItemData data;
  final double sideSize;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(data.smallImage))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  data.title,
                  style: const TextStyle(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: ElevatedButton(
              onPressed: onDelete,
              child: const Icon(
                Icons.delete,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
