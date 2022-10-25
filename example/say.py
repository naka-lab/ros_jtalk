#!/usr/bin/env python
from __future__ import print_function, unicode_literals
import rospy
from std_msgs.msg import String

def main():
    rospy.init_node("chatter", anonymous=True)

    pub = rospy.Publisher('jtalk/utterance', String, queue_size=10)
    while not rospy.is_shutdown():
        utt = input("発話内容 ->")
        pub.publish(utt)

if __name__ == '__main__':
    main()