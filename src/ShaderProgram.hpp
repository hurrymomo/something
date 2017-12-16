#ifndef ShaderProgram_hpp
#define ShaderProgram_hpp
#include <GL/glew.h>
#include <string>
using std::string;
class ShaderProgram{
public:
	ShaderProgram();
	~ShaderProgram();
	void generateShaderProgramObject();
	void attachToShaderProgramObject(GLuint shader, const char* filePath);
	void link();
	GLuint getProgramObject();
private:
	GLuint programObject;
	GLuint vertexShader, fragmentShader;

};
#endif