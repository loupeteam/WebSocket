
TYPE
	WebSocketConnection_typ : 	STRUCT 
		in : WebSocketConnectionIn_typ;
		out : WebSocketConnectionOut_typ;
		internal : WebSocketConnectionInternal_typ;
	END_STRUCT;
	WebSocketConnectionIn_typ : 	STRUCT 
		cmd : WebSocketConnectionInCmd_typ;
		cfg : WebSocketConnectionInCfg_typ;
	END_STRUCT;
	WebSocketConnectionInCfg_typ : 	STRUCT 
		mode : WebSocketMode_enum;
		useSSL : BOOL;
		sslCertificate : UDINT;
		sendBufferSize : UDINT;
		remoteIPAddress : STRING[80];
		remotePort : UDINT;
		localIPAddress : STRING[80];
		localPort : UDINT;
	END_STRUCT;
	WebSocketConnectionInCmd_typ : 	STRUCT 
		enable : BOOL;
		acknowledgeConnection : BOOL;
		acknowledgeError : BOOL;
	END_STRUCT;
	WebSocketConnectionOut_typ : 	STRUCT 
		newConnectionAvailable : BOOL;
		connection : WebSocketConnection_Desc_typ;
		error : BOOL;
		errorID : UINT;
		errorString : STRING[WS_STRLEN_ERRORSTRING];
	END_STRUCT;
	WebSocketConnection_Desc_typ : 	STRUCT 
		parameters : TCPConnection_Desc_typ;
		mode : WebSocketMode_enum;
	END_STRUCT;
	WebSocketConnectionInternal_typ : 	STRUCT 
		tcpConnection : TCPConnectionMgr_typ;
	END_STRUCT;
END_TYPE
