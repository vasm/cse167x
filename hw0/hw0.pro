TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -I../hw0-linux_osx/include -I../hw0-linux_osx/glm-0.9.7.1 -I/usr/X11/include -I./include/
QMAKE_CXXFLAGS += -g -DGL_GLEXT_PROTOTYPES -DGL_DO_NOT_WARN_IF_MULTI_GL_VERSION_HEADERS_INCLUDED -DOSX -Wno-deprecated-register -Wno-deprecated-declarations -Wno-shift-op-parentheses -Wno-parentheses-equality
QMAKE_LFLAGS += -framework GLUT -framework OpenGL -L/usr/local/lib  -L"/System/Library/Frameworks/OpenGL.framework/Libraries"  -lGL -lGLU -lm -lstdc++ -lfreeimage

SOURCES += \
    ../hw0-linux_osx/mytest3.cpp \
    ../hw0-linux_osx/shaders.cpp

HEADERS += \
    ../hw0-linux_osx/geometry3.h \
    ../hw0-linux_osx/include/FreeImage.h \
    ../hw0-linux_osx/include/GL/eglew.h \
    ../hw0-linux_osx/include/GL/glew.h \
    ../hw0-linux_osx/include/GL/glut.h \
    ../hw0-linux_osx/include/GL/glxew.h \
    ../hw0-linux_osx/include/GL/wglew.h \
    ../hw0-linux_osx/shaders.h
