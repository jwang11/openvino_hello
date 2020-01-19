all: hello_classify hello_nv12

hello_classify: main.cpp
	g++ main.cpp -I/usr/include/inference_engine -I/usr/include/opencv4 -lopencv_imgcodecs -lopencv_core -linference_engine -o $@

hello_nv12: main_nv12.cpp
	g++ main_nv12.cpp -I/usr/include/inference_engine -I/usr/include/opencv4 -lopencv_imgcodecs -lopencv_core -linference_engine -o $@

clean:
	@rm -f hello_classify hello_nv12
