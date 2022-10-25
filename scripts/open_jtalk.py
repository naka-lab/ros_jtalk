#!/usr/bin/env python
# coding: utf-8
import rospy
import os
import std_msgs.msg


class OpenJTalk():
    def __init__(self):
        rospy.on_shutdown(self.shutdown)
        rospy.Subscriber("jtalk/utterance", std_msgs.msg.String, self.say)
        self._open_jtalk_script = os.path.join(
            os.path.dirname(__file__), "open_jtalk.sh")

        rospy.spin()

    def say(self,msg):
        rospy.loginfo( '"' + msg.data + '"を発話')
        cmd = self._open_jtalk_script + " " + msg.data
        os.system(cmd)

    def shutdown(self):
        pass

if __name__ == '__main__':
    rospy.init_node('jtalk')
    OpenJTalk()
