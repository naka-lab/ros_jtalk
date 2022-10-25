# ros_jtalk

Open JTalkを使った音声合成ノード

## インストール
```
cd ~/catkin_ws/src
git clone https://github.com/naka-lab/ros_jtalk.git
```

## 実行
- 起動：`rosrun ros_jtalk open_jtalk.py`
- 発話文字列をpublish：  
  ```
  rospy.init_node("chatter")
  pub = rospy.Publisher('jtalk/utterance', String, queue_size=10)
  pub.publish("こんにちは")
  ```
  
## トピック
- Subscribe
  - `jtalk/utterance`: `std_msgs.msg.String`型の発話文字列


