[Plato, DatosAlimentos,imagen] = CamaraClasificacionAlimentosTS(camara,netTransfer,datosThingSpeak);

b = {' '};
g = strcat('G =',b,num2str(DatosAlimentos(1)));   %Grasas
p = strcat('P =',b,num2str(DatosAlimentos(2)));   %Proteinas
c1 = strcat('Ch =',b,num2str(DatosAlimentos(3))); %Carbohidratos
c2 = strcat('Ca =',b,num2str(DatosAlimentos(4))); %Calorias
Plato = string(Plato);
Titulo = strcat(Plato,b,g,b,p,b,c1,b,c2);

%% Mostrar resultados 
image(imagen)
title(Titulo)

%% Desctivar la alarma en el field 7, con el valor 0
thingSpeakWrite(ChannelIDSensores1,'Fields',[7],'Values',0,'WriteKey',writeAPIKeySensores1)
pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2);
 
%% Lectura de las calorías acumuladas
Calorias = thingSpeakRead(ChannelIDSensores1,'Fields',[6],'NumPoints',3,'OutputFormat','TimeTable','ReadKey',readAPIKeySensores1);

CT = Calorias(1,"CaloriasAcumuladas");
CaloriasTotales = CT.CaloriasAcumuladas;

if isnan(CaloriasTotales)
   CaloriasTotales = DatosAlimentos(4); 
else
   CaloriasTotales = CaloriasTotales + DatosAlimentos(4); 
end

%% Anotar las calorías en el field 6 con las calorías totales
thingSpeakWrite(ChannelIDSensores1,'Fields',[6],'Values',CaloriasTotales,'WriteKey',writeAPIKeySensores1)
pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2);

%% Activar la alarma en el field 7, con el valor 1
thingSpeakWrite(ChannelIDSensores1,'Fields',[7],'Values',1,'WriteKey',writeAPIKeySensores1)
pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2); pause(2);

