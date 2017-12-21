#ifndef ShaderProgram_hpp
#define ShaderProgram_hpp
#include <GL/glew.h>
#include <string>
using std::string;
class ShaderProgram{
public:
	ShaderProgram();
	~ShaderProgram();
	void generateShaderProgram();
	void attachToShaderProgram(GLuint shader, const char* filePath);
	void link();
	GLuint getShaderProgram();
private:
	GLuint program;
	GLuint vertexShader, fragmentShader;

};
#endif