#!lua

includeDirList = { 
    "shared",
}

buildOptions = {"-std=c++11"}

-- Get the current OS platform
PLATFORM = os.get()

-- Build glfw3 static library and copy it into lib if it is not
-- already present.
if not os.isfile("lib/libglfw3.a") then
    os.chdir("shared/glfw-3.2.1")
    os.mkdir("build")
    os.chdir("build")
    os.execute("cmake ../")
    os.execute("make")
    os.chdir("../../../")
    os.mkdir("lib")
    os.execute("cp shared/glfw-3.2.1/build/src/libglfw3.a lib/")
end

-- Build glew static library and copy it into lib if it is not
-- already present.
if not os.isfile("lib/libGLEW.a") then
    os.chdir("shared/glew-2.1.0")
    os.execute("make")
    os.chdir("../../")
    os.execute("cp shared/glew-2.1.0/lib/libGLEW.a lib/")
end


solution "BuildStaticLibs"
    configurations { "Debug", "Release" }

    configuration "Debug"
        defines { "DEBUG" }
        flags { "Symbols" }

    configuration "Release"
        defines { "NDEBUG" }
        flags { "Optimize" }

