# openvino_hello
Simple tutorial demo openvino usage

## Download pre-trained model, e.g. alexnet
```$model-downloader --name alexnet -o models/```

## Install requirements
```$sudo pip3 install networkx==2.3```

## Convert pre-trained model to IR model
```$model-converter --name alexnet -d models/ -o models/ --mo /usr/share/openvino/model-optimizer/mo.py```

## Build and run hello classification
```$make
$./classify models/public/alexnet/FP32/alexnet.xml cat.bmp CPU

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
