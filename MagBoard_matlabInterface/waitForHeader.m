function header = waitForHeader(s,headerSpec)
    %Wait until there's some bytes to read
%     timeout = 5;
%     tic
%     
%     
    while(s.BytesAvailable < headerSpec.minBytes)
%         error('No serial data!');
        pause(0.01);
    end

timeout = 5;

    %start timer again
    ticHead = tic;

    %Wait until we have the start of the buffer
    match = 0;
%     disp('Waiting for start of packet...');
    headerTest = [];
    %Keep trying while there's no match or it's taking too long
    while(~match || toc(ticHead) < timeout)
        %Add a byte onto the header
        headerTest = [headerTest fread(s,1,'char')];
        if(isequal(headerTest,headerSpec.string(1:numel(headerTest))))
           if(numel(headerTest) == numel(headerSpec.string))
               break;
           end
        else
            %The number of elements to not match the header packet, 
            %so clear and start again
            headerTest = [];
        end
    end
    
    %Did it complete loop because win, or because timeout?
    assert(match==0,'magsense:headerTimeout','Couldnt find header in alloted time');
    
    %Read the rest of the header
    header = fread(s,headerSpec.packingSz,'uint8');
end