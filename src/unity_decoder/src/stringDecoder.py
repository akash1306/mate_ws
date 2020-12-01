#!/usr/bin/env python
import rospy
import array 
from std_msgs.msg import String
from misc.msg import intarray


stringArray = ""
depth_publish = []
def callback(data):
    global depth_publish
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    stringArray = data.data
    arrayLength=640
    depth_publish = array.array('i',(0 for i in range(0,arrayLength)))
    j=0
    i_start=0
    i_end=0
    while j<arrayLength:
        if i_end >= len(stringArray) or i_start >= len(stringArray):
                break
        while stringArray[i_end]!="a":
            
            i_end+=1
        depth_publish[j]= int(stringArray[i_start:i_end])
        #print (stringArray[i_start:i_end])
        i_end+=1
        i_start=i_end
        j+=1
    #print (depth_publish)



        
def listener():

 
    rospy.init_node('stringDecoder', anonymous=True)

    rospy.Subscriber("depthArray", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    

def talker():
    global depth_publish
    pub = rospy.Publisher('decodedDepth', intarray, queue_size=10)
    #rospy.init_node('decodedDepth', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    while not rospy.is_shutdown():
        publishingarray= intarray(data=depth_publish)
        pub.publish(publishingarray)
        print (publishingarray)
        rate.sleep()

def main():
    global depth_publish
    listener()
    talker()
    rospy.spin()

if __name__ == '__main__':
    main()
