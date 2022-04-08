/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: OMJSON
 * File: jsonInternal.h
 * Author: davidblackburn
 * Created: September 22, 2014
 ********************************************************************
 * Implementation of library OMJSON
 ********************************************************************/

#ifndef __JSON_INTERNAL_H__
#define __JSON_INTERNAL_H__

#ifdef __cplusplus
	extern "C"
	{
#endif

#include <bur/plctypes.h>

// Internal function prototypes

// Set error for connection mgr
unsigned short internalSetWSConnectionError(struct WSConnectionManager_typ* t, signed long errorID, char* errorString);

// Set error for stream mgr
unsigned short internalSetWSStreamError(struct WSStream_typ* t, signed long errorID, char* errorString);

// Get error message for error ID
unsigned short internalGetErrorMsg(char* errorString, signed long errorID, unsigned long errorStringSize);

// Skip whitespace
char *skip(char *in);

// Check for license is valid
plcbit WSInternalLicenseIsOk();

#ifdef __cplusplus
	};
#endif

#endif
