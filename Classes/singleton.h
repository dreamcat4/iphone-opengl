/*
 *  singleton.h
 *  SimpleSample
 *
 *  Created by nacho on 27/08/09.
 *  Copyright 2009 Ignacio Sanchez Gines. All rights reserved.
 *
 */

#ifndef _SINGLETON_H
#define	_SINGLETON_H

template<typename T> class Singleton
{
public:
		
	static T& Instance(void)
	{
		static T singleton;
			
		return singleton;
	};
};

#endif	/* _SINGLETON_H */