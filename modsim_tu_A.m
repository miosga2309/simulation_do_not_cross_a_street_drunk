start = [0,0];
c = 0;
right = 0;
left = 0;
straight = 0;
% street 8m wide, danger zones: 1 to 3 and 5 to 7
while(start(2) < 7)
    c = c + 1;
    r = rand(1);
    if(r > .95)
        fprintf('Meters made until death: %d\n', straight)
        break;
    elseif(r > .5)
        start(2) = start(2) + 2;
        straight = straight + 2;
    elseif(r > .25)
        start(1) = start(1) + 2;
        right = right + 2;
    else
        start(1) = start(1) - 2;
        left = left + 2;
    end
end 