#!/usr/bin/env python
import rospy
import array 
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
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
        self.distance_holder = Point()
        self.walldepth = []
        self.start_pose = Pose()
        self.start_pose.position.x = 9.0
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


    def goToStart(self):
        print (math.pow(self.start_pose.position.x - self.auv_pose.position.x,2) + math.pow(self.start_pose.position.y - self.auv_pose.position.y,2) + math.pow(self.start_pose.position.z - self.auv_pose.position.z,2))
        rate = rospy.Rate(50)
        while math.sqrt(math.pow(self.start_pose.position.x - self.auv_pose.position.x,2) + math.pow(self.start_pose.position.y - self.auv_pose.position.y,2) + math.pow(self.start_pose.position.z - self.auv_pose.position.z,2))>1:
            self.distance_holder.x = self.start_pose.position.x - self.auv_pose.position.x
            self.distance_holder.y = self.start_pose.position.y - self.auv_pose.position.y
            self.distance_holder.z = self.start_pose.position.z - self.auv_pose.position.z

            self.move_commands.position.x = self.distance_holder.x*5 / math.sqrt(math.pow(self.start_pose.position.x - self.auv_pose.position.x,2) + math.pow(self.start_pose.position.y - self.auv_pose.position.y,2) + math.pow(self.start_pose.position.z - self.auv_pose.position.z,2))
            self.move_commands.position.z = self.distance_holder.y*5 / math.sqrt(math.pow(self.start_pose.position.x - self.auv_pose.position.x,2) + math.pow(self.start_pose.position.y - self.auv_pose.position.y,2) + math.pow(self.start_pose.position.z - self.auv_pose.position.z,2))
            self.move_commands.position.y = self.distance_holder.z*5 / math.sqrt(math.pow(self.start_pose.position.x - self.auv_pose.position.x,2) + math.pow(self.start_pose.position.y - self.auv_pose.position.y,2) + math.pow(self.start_pose.position.z - self.auv_pose.position.z,2))
            self.conCommand.publish(self.move_commands)
            print (self.move_commands)
            rate.sleep()


def main():
    rospy.init_node('LawnMower', anonymous=True)
    rate = rospy.Rate(50)
    lawnObject = lawnclass()
    lawnObject.move_commands.orientation.w = 1
    rospy.sleep(1)
    lawnObject.conCommand.publish(lawnObject.move_commands)
    rospy.sleep(5)
    lawnObject.goToStart()

    while not rospy.is_shutdown():
        #lawnObject.conCommand.publish(lawnObject.move_commands)


        rate.sleep()
    
    rospy.spin()

if __name__ == '__main__':
    main()