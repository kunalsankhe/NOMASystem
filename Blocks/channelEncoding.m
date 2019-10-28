% Channel Encoder: Performs convolution encoding of the multi-user data
%                  matrix
%
% Input: data, txParams
%        data           - A matrix containing information of multiple user
%                         where each user is assigned one column.
%        txParams       - A structure containing system parameters like
%                         number of users, code rate, qam alphabet etc.
%
% Output: encodedData   - A matrix containing convolutionally encoded 
%                         information of multiple user where each user is 
%                         assigned one column.
%

function encodedData = channelEncoding(data, txParams)   
    % Perform convolutional coding
    for iter_user = 1:txParams.numUsers
        encodedData(:, iter_user) = convenc(data(:, iter_user),txParams.coding.cc.trellis);
    end
end
