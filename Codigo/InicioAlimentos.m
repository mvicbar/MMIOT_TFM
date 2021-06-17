%% Preparacion del dispositivo

% IMPORTANTE: si se queda el objeto m abierto, genera problemas, siendo necesario eliminarlo en 
% la línea de comandos haciendo: clear m

%% Borrado de objetos previos
if exist('m','var')
    clear m;
end

if exist('camara','var')
    clear camara;
end

%% Crear objeto
m = mobiledev;

% Definir cámara
camara = camera(m,'back');

%% Cargar la Red AlexNet si no existe
if not(exist('netTransfer','var'))
    load netTransferAlimentos;
end

