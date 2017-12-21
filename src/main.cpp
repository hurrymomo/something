#include "Framework.hpp"
#include <string>
#include <iostream>
using std::cerr;
using std::endl;
int main(){
	Framework fw;
	try{
		fw.init();
		fw.eventLoop();
	}catch(string err){
		cerr<<err<<endl;
	}
}
