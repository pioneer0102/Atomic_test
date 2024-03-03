import 'package:flutter/material.dart';
import 'package:social_media_app/utils/texts.dart';

class PlayListItem extends StatefulWidget {
  final Function onTap;
  final int index;
  final bool isCheck;
  final dynamic data;

  const PlayListItem({
    Key? key,
    required this.data,
    required this.onTap,
    required this.index,
    required this.isCheck,
    }) : super(key: key);

  @override
  _PlayListItemState createState() => _PlayListItemState();
}
class _PlayListItemState extends State<PlayListItem> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => widget.onTap(widget.index), 
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(69, 73, 73, 73), 
          borderRadius: BorderRadius.circular(20),
        ),
        width: double.maxFinite,
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 110,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20), 
                      bottomLeft: Radius.circular(20), 
                    ),
                    child: Image(
                      image: AssetImage(widget.data["url"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: '${widget.data["title"]}', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                      CustomText(text:  '${widget.data["hashtag"]}', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('lib/assets/time.png'),
                          ),
                          const SizedBox(width: 5),
                          CustomText(text:  '${widget.data["time"]}', color: Colors.grey, fontSize: 10, fontWeight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(right:20),
              child: widget.isCheck ? 
               const Icon(
                Icons.check_box_rounded,
                color: Color(0xFFDF5BFF),
                )
                : const Icon(
                  Icons.check_box_outline_blank_rounded,
                  color: Colors.grey
                )
            )
          ],
        ),
      ),
    );
  }
}
