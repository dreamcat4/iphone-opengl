/*
 *  test_class.h
 *  SimpleSample
 *
 *  Created by nacho on 27/08/09.
 *  Copyright 2009 Ignacio Sanchez Gines. All rights reserved.
 *
 */

#ifndef _TESTCLASS_H
#define	_TESTCLASS_H

#import <QuartzCore/QuartzCore.h>

#include <OpenGLES/EAGL.h>
#include <OpenGLES/ES1/gl.h>
#include <OpenGLES/ES1/glext.h>

#include "singleton.h"


class TestClass : public Singleton<TestClass>
{
	friend class Singleton<TestClass>;
	
private:
	
	EAGLContext* m_pContext;
    GLuint m_uiViewRenderbuffer;
    GLuint m_uiViewFramebuffer;
    GLuint m_uiDepthRenderbuffer;
	
public:
		
	TestClass(void);
		
	void Init(EAGLContext* pContext, GLuint renderBuffer, GLuint frameBuffer, GLuint depthBuffer);
	void Cleanup(void);
		
	void Update(void);		
	
private:
	
	void BeginRender(void);
	void EndRender(void);
	
	void DrawSomething(void);
};

#endif	/* _TESTCLASS_H */