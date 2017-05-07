% function X = sigm(P)
%     X = 1./(1+exp(-P));
% end

function X = sigm(P, bias)
    X = 1./(1+exp(-P + bias));
end