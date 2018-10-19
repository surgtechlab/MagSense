%Close everything first
try
    fclose(instrfind);
end

%What com port?
s = serial('COM7');
set(s,'BaudRate',9600);
%Open it
fopen(s);

%Generate a formatspec
headerSpec.string = 'Hello';
headerSpec.string = [uint8(headerSpec.string) ...
    hex2dec('0A') hex2dec('0B') hex2dec('0C')];

headerSpec.packingSz = 2;

headerSpec.minBytes = (length(headerSpec.string)+headerSpec.packingSz);

bufferSize=4+(6*64);

while(s.BytesAvailable < headerSpec.minBytes)
    pause(0.1);
end

tic
while(1)
    %Go ahead and find the header
    waitForHeader(s,headerSpec);
        %disp('Found the header!');

    packedData = fread(s,bufferSize,'uint8');
    
    magData = magUnpackWords(packedData);
    

    figure(1);
    [X,Y] = meshgrid(1:8,1:8);
%     [U,V,W] = surfnorm(magData.dat(:,1)',magData.dat(:,2)',magData.dat(:,3)');
    
    %quiver locatinos
    subplot(2,2,1);
    quiver3(X,Y,zeros(size(X)),magData.dat(:,:,1),magData.dat(:,:,2),magData.dat(:,:,3));
    
%     zcomp = reshape(magData.dat(:,3),8,8);
%     surf(zcomp);
%      zlim([-2^8 2^8]);
% 
%     plot(magData.dat(:,3))
%     ylim([-2^8 2^8]);

    xlim([1 8]);
    ylim([1 8]);
    zlim([-1 1]);
    
    
    subplot(2,2,2);
        zcomp = magData.dat(:,:,3);
    surf(zcomp);
    xlim([0 8]);
    ylim([0 8]);
    zlim([-2^15 2^15]);
    caxis([-2^15 2^15])
    colormap(jet(128));
    view([-270+45 45]);
    
%     subplot(2,2,3:4)
%     scatter(1:64,magData.dat(:,3));
%      ylim([-2^15 2^15]);
     drawnow;

   
end

try
    fclose(instrfind);
end