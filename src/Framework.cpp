#include "Framework.hpp"
// Include standard headers
#include <stdio.h>
#include <stdlib.h>
#include <string>
// Include GLM
#include <glm/glm.hpp>

using namespace glm;

void Framework::initGLFW(){
	// Initialise GLFW
	if( !glfwInit() ){
		string err = "Failed to initialize GLFW";
		throw err;
	}
	glfwWindowHint(GLFW_SAMPLES, 4);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
	window = glfwCreateWindow( 1024, 768, "Something", NULL, NULL);
	if( window == NULL ){
		string err = "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.";
		glfwTerminate();
		throw err;
	}
	glfwMakeContextCurrent(window);
}

void Framework::initGLEW(){

	// Initialize GLEW
	if (glewInit() != GLEW_OK) {
		string err = "Failed to initialize GLEW";
		glfwTerminate();
		throw err;
	}
}

void Framework::initLib(){
	initGLFW();
	initGLEW();
}

void Framework::initShader(){
	shader.generateShaderProgram();
	shader.attachToShaderProgram(GL_VERTEX_SHADER, "./shader/simple.vs");
	shader.attachToShaderProgram(GL_FRAGMENT_SHADER, "./shader/simple.fs");
	shader.link();

	// Use our shader
   	glUseProgram(shader.getShaderProgram());
}

void Framework::initData(){

	static const GLfloat g_vertex_buffer_data[] = {
		-1.0f, -1.0f, 0.0f,
		 1.0f, -1.0f, 0.0f,
		 0.0f,  1.0f, 0.0f,
	};

	glGenVertexArrays(1, &VertexArrayID);
	glBindVertexArray(VertexArrayID);

	glGenBuffers(1, &vertexbuffer);
	glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
	glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

	// 1rst attribute buffer : vertices
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(
		0,                  // attribute 0. No particular reason for 0, but must match the layout in the shader.
		3,                  // size
		GL_FLOAT,           // type
		GL_FALSE,           // normalized?
		0,                  // stride
		(void*)0            // array buffer offset
	);



}
void Framework::init(){
	initLib();
	initShader();
	initData(); 

	// Ensure we can capture the escape key being pressed below
	glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
	// Dark blue background
	glClearColor(0.0f, 0.0f, 0.4f, 0.0f);
}

void Framework::eventLoop(){

	do{
		// Clear the screen
		glClear( GL_COLOR_BUFFER_BIT );

		// Draw the triangle !
		glDrawArrays(GL_TRIANGLES, 0, 3); // 3 indices starting at 0 -> 1 triangle

		// Swap buffers
		glfwSwapBuffers(window);
		glfwPollEvents();
	} // Check if the ESC key was pressed or the window was closed
	while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
		   glfwWindowShouldClose(window) == 0 );

	// Close OpenGL window and terminate GLFW
	glfwTerminate();

}
