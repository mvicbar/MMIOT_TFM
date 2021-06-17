
%% Prueba de clasificación

load netTransferAlimentos

% Seleccionar fichero con imagen a clasificar
[aa bb]=uigetfile({'*.*','All files'});

J=imread([bb aa]);

Ir = imresize(J, [227 227]);

% Clasifcación propiamente dicha 
[label, Error]  = classify(netTransfer,Ir);
disp('Label ='); disp(label)
disp('% de pertenencia ='); disp(Error)

