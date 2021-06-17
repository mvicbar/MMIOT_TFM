function value = CamaraClasificacionAlimentos(cam,nnet)

    %% Captura de la imagen
    img = snapshot(cam,'manual');
    %pic = imresize(img,[224,224]); % Dimensi�n para GoogLeNet
    pic = imresize(img,[227,227]);  % Dimensi�n para AlexLeNet
    value = classify(nnet,pic);
    image(pic)
    title(char(value))
end
