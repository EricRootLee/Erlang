# Learnin Erlang For Backend Development

Quick Start On Erlang

> Trying Something New Is not bad.

### Sample Erlang Code
```erlang
 -module(echo).
 -export([start/1,server/1,handle_messages/1]).

 start(Port) ->
     spawn(?MODULE,server,[Port]).

 server(Port) ->
     {ok, Socket} = gen_tcp:listen(Port,[{packet,line}]),
     listen(Socket).

 listen(Socket) ->
     {ok, Active_socket} = gen_tcp:accept(Socket),
     Handler = spawn(?MODULE,handle_messages,[Active_socket]),
     ok = gen_tcp:controlling_process(Active_socket, Handler),
     listen(Socket).

 handle_messages(Socket) ->
     receive
         {tcp,error,closed} ->
             done;
         {tcp,Socket,Data} ->
             gen_tcp:send(Socket,Data),
             echo:handle_messages(Socket);
         _Other ->
             unexpected
     end.
 ```    

---
### To Learn More On Erlang Visit [Erlang Docs](https://www.erlang.org/docs)
![Erlang](https://www.erlang.org/img/erlang.png)
