function value = CamaraClasificacionAlimentos(cam,nnet)

    %% Captura de la imagen
    img = snapshot(cam,'manual');
    %pic = imresize(img,[224,224]); % Dimensión para GoogLeNet
    pic = imresize(img,[227,227]);  % Dimensión para AlexLeNet
    value = classify(nnet,pic);
    image(pic)
    title(char(value))
end
