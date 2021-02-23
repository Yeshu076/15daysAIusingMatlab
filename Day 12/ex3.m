clear
camObj = webcam(4);
 
        % Preview a stream of image frames.
        preview(camObj);
 i=1;
        while(1)
        % Acquire and display a single image frame.
        img = snapshot(camObj);
%         imshow(img);
        filename=strcat('frame',num2str(i),'.bmp');
        imwrite(img,filename);
        if i==20;
            break
        end
        i=i+1;
        end