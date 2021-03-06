# -*- coding: utf-8 -*-
"""
Author: Jeneel Kachhadiya
Class: ECE 751
Description:Capture image from webcam and convert to row matrox save to a file
"""


import cv2
import numpy as np

print(cv2.__version__)
cap = cv2.VideoCapture(1, cv2.CAP_DSHOW)

if not (cap.isOpened()):
    print("Could not open video device")

#drawline
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1280)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 720)

x0 = int(1280 / 2 - 224) + 1
x1 = int(1280 / 2 + 224) + 1

y0 = int(720 / 2 - 224 ) + 1
y1 = int(720 / 2 + 224) + 1

while(True):    
    # Capture frame-by-frame    
    ret, frame = cap.read()    
    image1 = cv2.rectangle(frame, (x0,y0), (x1,y1), (0, 0, 255), 1)
    # Display the resulting frame
    cv2.imshow('preview',image1)
    #cv2.imshow('frame', frame)
    cropped = frame[y0:y1, x0:x1]
    #cv2.imshow('preview',cropped) 
    gray = cv2.cvtColor(cropped, cv2.COLOR_RGB2GRAY)
    #gray_4bit =  map(int, (gray/255 * 15) )
    #for item in gray:
        
    #print("I am hereee")
    #print(gray.shape)
    #print(gray.min())
    #print(gray.max())
    
    #cv2.imshow('frame', frame)
    
    
    
    if cv2.waitKey(1) & 0xFF == ord(' '):
        print(gray)
        print("gray 4 bit:")
        
        gray = cv2.resize(gray,(28,28))
        #print(gray2)
        #gray = cv2.inRange( gray , 50 , 255)
        #th, gray = cv2.threshold(gray,127,255, cv2.THRESH_BINARY);
        gray = 255 - gray 
        cv2.imshow('frame', gray) 
        
        cv2.imwrite("input.jpg", gray)
    
        gray_flat= gray.flatten()
        gray_4bit =  map(int, (gray_flat/255 * 15))
        print("gray 4 bit:")
        print(list(gray_4bit))
        with open("input_decimal.txt", "w") as f:
            for item in gray_4bit:
                f.write("8'd" + str(item) + " ")
        
        with open("input.h", "w") as f:
            f.write("__attribute__((aligned(16))) uint8_t stim_a[] = {\n")
            for item in gray_flat:
                f.write(str(hex(item)) + ",\n")
            f.write("};")
            
        with open("input_hex.h", "w") as f:
            my_string ="__attribute__((aligned(16))) uint8_t stim_a[] = {\n" + ',\n'.join(map(str, map(hex,gray_4bit))) + "\n};"
            f.write(my_string)
            f.close()
        #a_file = open("test.txt", "w")
        
        #content = str(gray2)
        #a_file.write(content)

        #a_file.close()
        print("input values saved!")
        
    
    #Waits for a user input to quit the application    
    if cv2.waitKey(1) & 0xFF == ord('q'):  
        
        break
    
cap.release()
cv2.destroyAllWindows()