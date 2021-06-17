%% Definición de los canales
% Canal: Nutrición donde se almacenan los datos de información nutricional (informacion_) 
% En los siguientes 5 campos: 
     % Field1 = Plato (define el tipo de plato)
     % Field2 = Grasas
     % Field3 = Proteínas
     % Field4 = Carbohidratos
     % Field5 = Calorías

%% Definición de las claves de acceso

%% ChannelIDSensores1 = 1012384;
%% readAPIKeySensores1 = '9TI4K11SPDSQVZQ0';
%% writeAPIKeySensores1 = '8F4OQAMY9AUSUDTS';
ChannelIDSensores1 = 1311429;
readAPIKeySensores1 = 'VSI4O77M3K6TKSFW';
writeAPIKeySensores1 = 'D7TGTWPBU6OIMDJM';

%% Carga de datos
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'churros',20,4.6,40,360},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'ensalada-cesar',2.1,3.2,4.3,44},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'entrecot',11.44,29.5,0,222},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'espaguetis_bolonesa',12.59,12.7,26.3,123},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'flan',3.4,4.8,20.4,133},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'helado',10.1,3.6,26.7,213},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'huevos_revueltos',20.72,10.2,0.8,229},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'sushi',1.28,6.88,18.42,103},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'tarta_chocolate',279.42,5.20,41.77,440},'WriteKey',writeAPIKeySensores1)
pause(15)
thingSpeakWrite(ChannelIDSensores1,'Fields',[1,2,3,4,5],'Values',{'tostada',3.7,7.3,45.7,249},'WriteKey',writeAPIKeySensores1)
pause(15)

%% Lectura de los datos cargados
data = thingSpeakRead(ChannelIDSensores1,'Fields',[1,2,3,4,5],'NumPoints',10,'OutputFormat','TimeTable','ReadKey',readAPIKeySensores1);
% Conversión de los datos en la tabla a tabla
TablaDatos = timetable2table(data);


