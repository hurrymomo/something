#include "ShaderProgram.hpp"

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using std::string;
using std::cout;
using std::cerr;
using std::endl;
using std::ifstream;

ShaderProgram::ShaderProgram()
	:program(0)
{}
ShaderProgram::~ShaderProgram(){
}
GLuint ShaderProgram::getShaderProgram(){
	return program;
}

void ShaderProgram::generateShaderProgram(){
	if(program == 0){
		program = glCreateProgram();
	}
}

void ShaderProgram::attachToShaderProgram(GLuint shader, const char* filePath){
	GLuint currentID;
	cerr<<"loading "<<filePath<<endl;
	switch(shader){
		case GL_VERTEX_SHADER:
			cout<<"Reading Vertex shader"<<endl;
			vertexShader = glCreateShader(GL_VERTEX_SHADER);
			currentID = vertexShader;
			break;
		case GL_FRAGMENT_SHADER:
			cout<<"Reading Fragment shader"<<endl;
			fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
			currentID = fragmentShader;
			break;
	}

	string shaderCode;
	ifstream shaderStream(filePath, std::ios::in);
	if(shaderStream.is_open()){
		string line = "";
		while(getline(shaderStream, line))
			shaderCode += "\n" + line;
		shaderStream.close();
	}else{
		cout<<"Unable to read file"<<endl;
	}

	GLint Result = GL_FALSE;
	int InfoLogLength;

	// Compile Shader
	cout<< "Compiling shader" <<endl;
	char const * sourcePointer = shaderCode.c_str();
	glShaderSource(currentID, 1, &sourcePointer , NULL);
	glCompileShader(currentID);

	// Check Vertex Shader
	glGetShaderiv(currentID, GL_COMPILE_STATUS, &Result);
	glGetShaderiv(currentID, GL_INFO_LOG_LENGTH, &InfoLogLength);
	if ( InfoLogLength > 0 ){
		std::vector<char> shaderErrorMessage(InfoLogLength+1);
		glGetShaderInfoLog(currentID, InfoLogLength, NULL, &shaderErrorMessage[0]);
		cout<<shaderErrorMessage[0]<<endl;
	}
}

void ShaderProgram::link(){
	GLint Result = GL_FALSE;
	int InfoLogLength;
	
	// Link the program
	printf("Linking program\n");
	glAttachShader(program, vertexShader);
	glAttachShader(program, fragmentShader);
	glLinkProgram(program);

	// Check the program
	glGetProgramiv(program, GL_LINK_STATUS, &Result);
	glGetProgramiv(program, GL_INFO_LOG_LENGTH, &InfoLogLength);
	if ( InfoLogLength > 0 ){
		std::vector<char> ProgramErrorMessage(InfoLogLength+1);
		glGetProgramInfoLog(program, InfoLogLength, NULL, &ProgramErrorMessage[0]);
		printf("%s\n", &ProgramErrorMessage[0]);
	}

	
	glDetachShader(program, vertexShader);
	glDetachShader(program, fragmentShader);
	
	glDeleteShader(vertexShader);
	glDeleteShader(fragmentShader);

}