#!lua

-- Additional Linux libs: "X11", "Xxf86vm", "Xi", "Xrandr", "stdc++"

includeDirList = {
    "../shared",
    "../shared/include"
}

libDirectories = { 
    "../lib"
}


if os.get() == "macosx" then
    linkLibs = {
        "glfw3",
        "GLEW"
    }
end

if os.get() == "linux" then
    linkLibs = {
        "glfw3",
        "GL",
        "Xinerama",
        "Xcursor",
        "Xxf86vm",
        "Xi",
        "Xrandr",
        "X11",
        "stdc++",
        "dl",
        "pthread"
    }
end

-- Build Options:
if os.get() == "macosx" then
    linkOptionList = { "-framework IOKit", "-framework Cocoa", "-framework CoreVideo", "-framework OpenGL" }
end

buildOptions = {"-std=c++11"}

solution "STH"
    configurations { "Debug", "Release" }

    project "something"
        kind "ConsoleApp"
        language "C++"
        location "build"
        objdir "build"
        targetdir "."
        buildoptions (buildOptions)
        libdirs (libDirectories)
        links (linkLibs)
        linkoptions (linkOptionList)
        includedirs (includeDirList)
        files { "*.cpp" }

    configuration "Debug"
        defines { "DEBUG" }
        flags { "Symbols" }

    configuration "Release"
        defines { "NDEBUG" }
        flags { "Optimize" }
        