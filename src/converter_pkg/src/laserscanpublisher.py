#!/usr/bin/env python

import rospy
import tf
import math
import numpy
from geometry_msgs.msg import Vector3
from sensor_msgs.msg import LaserScan
from misc.msg import floatarray
import numpy as np
from std_msgs.msg import String
import array



Scan_msg = LaserScan()
Scan_msg.header.frame_id = "base_footprint"
#Scan_msg.angle_min = math.pi/4 - 0.05
#Scan_msg.angle_max = math.pi/4 + 0.05
#Scan_msg.angle_increment = 0.1
Scan_msg.time_increment = 0.0
Scan_msg.scan_time = 0.0
Scan_msg.range_min = 0
Scan_msg.range_max = 29.5

def callback(data):
    global Scan_msg
    i = 0
    while i<640:
        Scan_msg.ranges = data.data
        i+=1
    
    
    

def callbackFOV(data):
    global Scan_msg
    Scan_msg.angle_max = float(data.data)/2
    Scan_msg.angle_min = -(float(data.data)/2)
    Scan_msg.angle_increment = float(data.data)/640

def listener():
    global Scan_msg
    rospy.init_node('Laser_Scan_Publisher')
    rospy.Subscriber("decodedDepth", floatarray, callback)

def listenerFOV():
    global Scan_msg
    rospy.Subscriber('hFOV', String , callbackFOV)


def talker():
    global Scan_msg
    pub = rospy.Publisher('scan', LaserScan, queue_size=10)
    
    #rospy.init_node('decodedDepth', anonymous=True)
    rate = rospy.Rate(50) 
    while not rospy.is_shutdown():
        
        pub.publish(Scan_msg)
        rate.sleep()
def main():
    global Scan_msg
    listener()
    listenerFOV()
    talker()
    rospy.spin()

if __name__ == '__main__':
    main()
