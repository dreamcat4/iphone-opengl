/*
 *  test_class.cpp
 *  SimpleSample
 *
 *  Created by nacho on 27/08/09.
 *  Copyright 2009 Ignacio Sanchez Gines. All rights reserved.
 *
 */

#include "test_class.h"

TestClass::TestClass(void)
{
}

/////////////////////////////////////
/////////////////////////////////////

void TestClass::Init(EAGLContext* pContext, GLuint renderBuffer, GLuint frameBuffer, GLuint depthBuffer)
{
	m_pContext = pContext;
    m_uiViewRenderbuffer = renderBuffer;
    m_uiViewFramebuffer = frameBuffer;
    m_uiDepthRenderbuffer = depthBuffer;
}

/////////////////////////////////////
/////////////////////////////////////

void TestClass::Cleanup(void)
{
	///--- clean up something before exiting
}

/////////////////////////////////////
/////////////////////////////////////

void TestClass::Update(void)
{
	BeginRender();
	
	DrawSomething();    
	
	EndRender();
}

/////////////////////////////////////
/////////////////////////////////////

void TestClass::BeginRender(void)
{
	[EAGLContext setCurrentContext:m_pContext];
    
    glBindFramebufferOES(GL_FRAMEBUFFER_OES, m_uiViewFramebuffer);
    glViewport(0, 0, 320, 480);
}

/////////////////////////////////////
/////////////////////////////////////

void TestClass::EndRender(void)
{
	glBindRenderbufferOES(GL_RENDERBUFFER_OES, m_uiViewRenderbuffer);
    [m_pContext presentRenderbuffer:GL_RENDERBUFFER_OES];
}

/////////////////////////////////////
/////////////////////////////////////

void TestClass::DrawSomething(void)
{
	const GLfloat squareVertices[] = {
        -0.5f, -0.5f,
        0.5f,  -0.5f,
        -0.5f,  0.5f,
        0.5f,   0.5f,
    };
    const GLubyte squareColors[] = {
        255, 255,   0, 255,
        0,   255, 255, 255,
        0,     0,   0,   0,
        255,   0, 255, 255,
    };   
	
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrthof(-1.0f, 1.0f, -1.5f, 1.5f, -1.0f, 1.0f);
    glMatrixMode(GL_MODELVIEW);
    glRotatef(3.0f, 0.0f, 0.0f, 1.0f);
    
    glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    
    glVertexPointer(2, GL_FLOAT, 0, squareVertices);
    glEnableClientState(GL_VERTEX_ARRAY);
    glColorPointer(4, GL_UNSIGNED_BYTE, 0, squareColors);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);  
}
