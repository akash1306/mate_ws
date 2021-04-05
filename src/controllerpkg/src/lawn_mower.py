#!/usr/bin/env python
import rospy
import array 
from geometry_msgs.msg import Pose
from std_msgs.msg import String
from std_msgs.msg import Float64
import math
import numpy as np
import time
import os
from misc.msg import floatarray

class lawnclass(object):
    def __init__(self):
        self.posub = rospy.Subscriber('/propPos', Pose, self.pose_callback)
        self.depthsub = rospy.Subscriber('/decodedDepth' , floatarray , self.depth_callback)

        self.conCommand = rospy.Publisher('/key' , Pose , queue_size=10)
        self.auv_pose = Pose()
        self.move_commands = Pose()
        self.walldepth = []
        self.start_pose = Pose()
        self.start_pose.position.x = 9.
        self.start_pose.position.y = -144
        self.start_pose.position.z = 70
        self.start_pose.orientation.x = 0
        self.start_pose.orientation.y = 0
        self.start_pose.orientation.z = 0
        self.start_pose.orientation.w = 1


        

    def pose_callback(self,msg):
        self.auv_pose = msg
        #print (self.auv_pose)

    def depth_callback(self,data):
        self.walldepth = [data.data[0], data.data[256], data.data[512]]

def main():
    rospy.init_node('LawnMower', anonymous=True)
    rate = rospy.Rate(50)
    lawnObject = lawnclass()
    lawnObject.move_commands.orientation.w = 1
    lawnObject.conCommand.publish(lawnObject.move_commands)

    while not rospy.is_shutdown():



        rate.sleep()
    rospy.spin()

if __name__ == '__main__':
    main()