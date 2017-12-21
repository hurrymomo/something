#ifndef Framework_hpp
#define Framework_hpp

// Include GLEW
#include <GL/glew.h>
// Include GLFW
#include <GLFW/glfw3.h>

#include "ShaderProgram.hpp"

class Framework{
	GLFWwindow* window;
	ShaderProgram shader;
	
	GLuint VertexArrayID;
	GLuint vertexbuffer;

	void initGLEW();
	void initGLFW();
	void initLib();
	void initShader();
	void initData();
public:
	void init();
	void eventLoop();
};
#endif 