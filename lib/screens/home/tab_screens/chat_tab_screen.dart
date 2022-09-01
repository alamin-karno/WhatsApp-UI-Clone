import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/chat_data.dart';

class ChatTabScreen extends StatelessWidget {
  const ChatTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        return ChatItemView(
          chatData: chatList[index],
        );
      },
    );
  }
}

class ChatItemView extends StatelessWidget {
  final ChatData chatData;

  const ChatItemView({
    Key? key,
    required this.chatData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(chatData.profileImage),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          chatData.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          chatData.messageTime,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            if (chatData.isLastMessageSeen)
                              SizedBox(
                                width: 10,
                                height: 15,
                                child: Image.asset(
                                  'assets/images/whats_app_blue_tick.png',
                                ),
                              ),
                            if (chatData.isLastMessageSeen)
                              const SizedBox(width: 5),
                            Text(
                              chatData.lastMessage,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.8,
                                color: chatData.isMessageTyping
                                    ? Colors.green
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        if (chatData.messageCount > 0)
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6.0),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: Text(
                                  '${chatData.messageCount}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 60,
            ),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
