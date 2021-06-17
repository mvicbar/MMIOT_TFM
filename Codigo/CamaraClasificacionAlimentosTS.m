function [Plato, DatosAlimentos,imagen] = CamaraClasificacionAlimentosTS(cam,nnet,datosThingSpeak)

    %% Captura de la imagen
    img = snapshot(cam,'manual');
    %pic = imresize(img,[224,224]); % Dimensión para GoogLeNet
    pic = imresize(img,[227,227]);  % Dimensión para AlexLeNet
    Plato = classify(nnet,pic);
    imagen = pic;
    
    %% Conversión de datos
    PlatoA = cellstr(Plato);
    
    %% Procesar los datos de la tabla y reportarlos en la aplicación
    TT=timetable2table(datosThingSpeak);
    [filas, columnas] = size(TT);
    
    DatosAlimentos = zeros(1,columnas-2);
    for i=1:1:filas
        S = cellstr(TT{i,2});
        if isequal(S,PlatoA)
           for j=3:1:columnas
             DatosAlimentos(j-2) = TT{i,j};
           end
        end
    end 
end
