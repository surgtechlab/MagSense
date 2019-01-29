function magData = magUnpackWords(packedData)

    %How many nodes in system (should really be global param)
    nNodes = 64;
    
    %Time variable returned from board
    magData.time = typecast(packedData(1:4),'int16');
    
    %init magdata
    %64 nodes, 3 dimensions
    %XYZ ordering
    magData.dat = int16(zeros(nNodes,3));
    
    %xdata is (relative to after time stamp) bytes:
    %1:2, 7:8, 13:14
    offset = 4;
    xdataIdx(1,:) = (6*(0:63))+1+offset;
    xdataIdx(2,:) = xdataIdx(1,:)+1;
    
    ydataIdx(1,:) = xdataIdx(2,:)+1;
    ydataIdx(2,:) = ydataIdx(1,:)+1;
    
    zdataIdx(1,:) = ydataIdx(2,:)+1;
    zdataIdx(2,:) = zdataIdx(1,:)+1;
    
    
    %For each node
    for nodeIdx =1:nNodes
        %Look up the appropriate x idx...
        %and cast it it into the array
        %For this node, and the current dim, what's the packed data?
        thisPackedDimArray = [packedData(xdataIdx(2,nodeIdx)) packedData(xdataIdx(1,nodeIdx))];
        magData.dat(nodeIdx,1) = ...
            typecast(uint8(thisPackedDimArray),'int16');
        %Same for y...
        thisPackedDimArray = [packedData(ydataIdx(2,nodeIdx)) packedData(ydataIdx(1,nodeIdx))];
        magData.dat(nodeIdx,2) = ...
            typecast(uint8(thisPackedDimArray),'int16');
        %And Z...
        thisPackedDimArray = [packedData(zdataIdx(2,nodeIdx)) packedData(zdataIdx(1,nodeIdx))];
        magData.dat(nodeIdx,3) = ...
            typecast(uint8(thisPackedDimArray),'int16');
    end
    
    %Reshape into node number as grid
    magData.dat = reshape(magData.dat,sqrt(nNodes),sqrt(nNodes),3);
    
    
    
    %The PCB is layed out really fuckin' weird, so sort the order out
    magData.dat(:,2:2:end,:) = flipud(magData.dat(:,2:2:end,:));
    magData.dat(:,7,:) = flipud(magData.dat(:,7,:));
    
end