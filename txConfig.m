function txParams = txConfig()
    txParams.QAM = 4;
    txParams.softQAM = 0;
    
    % SNR in db
    txParams.SNRdb = 10;
    
    % Trellis Structure for 1/2 code rate convolution coder obtained from
    % a MATLAB tutorial on channel coding. (Constraint length, M = 7)
    txParams.coding.cc.trellis = poly2trellis(7, {'1 + x^3 + x^4 + x^5 + x^6', '1 + x + x^3 + x^4 + x^6'});
    
    % Length of each message of every user
    txParams.dataLength = 960;
    
    % Number of users
    txParams.numUsers = 2;
    
    % Allocate Power levels
    txParams.powerLevels = [2; 1];
    
end