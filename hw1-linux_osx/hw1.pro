TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -I../hw1-linux_osx/include -I../hw1-linux_osx/glm-0.9.7.1 -I/usr/X11/include -I./include/
QMAKE_CXXFLAGS += -g -DGL_GLEXT_PROTOTYPES -DGL_DO_NOT_WARN_IF_MULTI_GL_VERSION_HEADERS_INCLUDED -DOSX -Wno-deprecated-register -Wno-deprecated-declarations -Wno-shift-op-parentheses -Wno-parentheses-equality
QMAKE_LFLAGS += -framework GLUT -framework OpenGL -L/usr/local/lib  -L"/System/Library/Frameworks/OpenGL.framework/Libraries"  -lGL -lGLU -lm -lstdc++ -lfreeimage

SOURCES += \
    ../hw1-linux_osx/*.cpp \
    ../hw1-linux_osx/UCSD/grader.cpp

HEADERS += \
    ../hw1-linux_osx/*.h \
    ../hw1-linux_osx/include/FreeImage.h \
    ../hw1-linux_osx/include/GL/*.h \
    ../hw1-linux_osx/shaders.h \
    ../hw1-linux_osx/UCSD/grader.h
