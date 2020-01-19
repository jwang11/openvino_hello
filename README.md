# openvino_hello
A simple tutorial to demo openvino development https://software.intel.com/en-us/openvino-toolkit

## Download pre-trained model, e.g. alexnet
```$model-downloader --name alexnet -o models/```

## Install requirements
```$sudo pip3 install networkx==2.3```

## Convert pre-trained model to IR model
This tool imports, converts, and optimizes models that were trained in popular frameworks to a format usable by Intel tools, especially the Inference Engine. Popular frameworks include Caffe*, TensorFlow*, MXNet*, and ONNX*
```$model-converter --name alexnet -d models/ -o models/ --mo /usr/share/openvino/model-optimizer/mo.py```

## Build and run hello classification developed by Inference Engine 
This is the engine that runs the deep learning model. It includes a set of libraries for an easy inference integration into your applications.
```$make
$./hello_classify models/public/alexnet/FP32/alexnet.xml cat.bmp CPU

Top 10 results:

Image cat.bmp

classid probability
------- -----------
281     0.5808565
285     0.3873791
282     0.0277750
287     0.0038792
292     0.0000481
286     0.0000394
280     0.0000060
272     0.0000055
248     0.0000015
514     0.0000012
```
for nv12 sample, 
```$make
$./hello_nv12 models/public/alexnet/FP32/alexnet.xml cat.yuv 600x400 CPU
Top 10 results:

classid probability
----------------------
281     0.593963
285     0.374029
282     0.027756
287     0.004145
292     0.000048
286     0.000039
280     0.000005
272     0.000005
248     0.000001
514     0.000001
```
