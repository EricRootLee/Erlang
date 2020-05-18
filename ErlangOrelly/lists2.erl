-module(lists2).
-export([fall/1]). % this functions is taking a list contaning a taple i.e lists2:fall([{earth,45},{mars,500}]).

fall(List)->fall(List,[]).
fall([],Result)->lists1:product(Result) ; %%add(Result);  %%%Result %% results returns a list of lists i.e[[23],[345],454]
fall([Head|Tail] , Result)->fall(Tail,[recursions:fall_v6(Head) | Result]).


%My custome Adding function of all elements in the listts

% add([])->0;  %this is un used coz there isnt a time the list will be empty
% add(List)->add(List , 0).
% add([Head|Tail] , Increment)->add( Tail , Head+Increment);
% add([],Product)->Product.
