all: hello_classify

hello_classify: main.cpp
	g++ main.cpp -I/usr/include/inference_engine -I/usr/include/opencv4 -lopencv_imgcodecs -lopencv_core -linference_engine -o hello_classify

clean:
	@rm -f hello_classify
