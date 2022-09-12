import 'package:flutter/material.dart';

class CardUserWidget extends StatelessWidget {
  const CardUserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: .0,
      color: Colors.transparent,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: .0),
        leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/image/pattern.png')),
        title: const Text(
          'Daniel Atkins',
          style: TextStyle(
              fontFamily: 'SfPro', fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          'The weather will be perfect for the st ksjdnfkjsbdjfbasfbsdjfbsjdbf',
          style: TextStyle(
              fontFamily: 'SfPro',
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.normal),
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                alignment: Alignment.center,
                child: const Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.done_all,
                    size: 20,
                    color: Colors.blue,
                  ),
                  Text('2:14 PM ',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SfPro',
                          color: Color(0xFF7A7A7A),
                          fontWeight: FontWeight.normal))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
