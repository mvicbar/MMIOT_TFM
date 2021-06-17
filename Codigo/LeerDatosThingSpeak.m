%% Leer los datos almacenados en ThingSpeak
ChannelIDSensores1 = 1012384;
readAPIKeySensores1 = '9TI4K11SPDSQVZQ0';
writeAPIKeySensores1 = '8F4OQAMY9AUSUDTS';

%% lectura de los Datos almacenados en ThingSpeak
datosThingSpeak = thingSpeakRead(ChannelIDSensores1,'Fields',[1,2,3,4,5],'NumPoints',10,'OutputFormat','TimeTable','ReadKey',readAPIKeySensores1);